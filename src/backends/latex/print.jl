# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# Description
# ==============================================================================
#
#   Print function of the LaTeX backend.
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# Low-level function to print the table using the LaTeX backend.
function _pt_latex(
    r_io::Ref{Any}, pinfo::PrintInfo;
    tf::LatexTableFormat = tf_latex_default,
    body_hlines::Vector{Int} = Int[],
    cell_alignment::Dict{Tuple{Int, Int}, Symbol} = Dict{Tuple{Int, Int}, Symbol}(),
    highlighters::Union{LatexHighlighter, Tuple} = (),
    hlines::Union{Nothing, Symbol, AbstractVector} = nothing,
    label::AbstractString = "",
    longtable_footer::Union{Nothing, AbstractString} = nothing,
    maximum_number_of_columns::Int = -1,
    maximum_number_of_rows::Int = -1,
    table_type::Union{Nothing, Symbol} = nothing,
    vlines::Union{Nothing, Symbol, AbstractVector} = nothing,
    wrap_table::Union{Nothing, Bool} = true,
    wrap_table_environment::Union{Nothing, String} = nothing
)

    # `r_io` must always be a reference to `IO`. Here, we unpack it. This is
    # done to improve inference and reduce compilation time. Ideally, we need to
    # add the `@nospecialize` annotation to `io`. However, it returns the
    # message that this annotation is not supported with more than 32 arguments.
    io = r_io.x

    # Unpack fields of `pinfo`.
    ptable               = pinfo.ptable
    formatters           = pinfo.formatters
    compact_printing     = pinfo.compact_printing
    title                = pinfo.title
    title_alignment      = pinfo.title_alignment
    cell_first_line_only = pinfo.cell_first_line_only
    renderer             = pinfo.renderer
    limit_printing       = pinfo.limit_printing

    # Process the filters in `ptable`.
    _process_filters!(ptable)

    # Unpack fields of `tf`.
    top_line       = tf.top_line
    header_line    = tf.header_line
    mid_line       = tf.mid_line
    bottom_line    = tf.bottom_line
    left_vline     = tf.left_vline
    mid_vline      = tf.mid_vline
    right_vline    = tf.right_vline
    header_envs    = tf.header_envs
    subheader_envs = tf.subheader_envs

    # Unpack fields of `tf` that depends on the user options.
    if table_type === nothing
        table_type = tf.table_type
    end

    if wrap_table === nothing
        wrap_table = tf.wrap_table
    end

    if wrap_table_environment === nothing
        wrap_table_environment = tf.wrap_table_environment
    end

    if hlines === nothing
        hlines = tf.hlines
    end
    hlines = _process_hlines(ptable, hlines)

    if vlines === nothing
        vlines = tf.vlines
    end
    vlines = _process_vlines(ptable, vlines)

    # Let's create a `IOBuffer` to write everything and then transfer to `io`.
    buf_io = IOBuffer()
    buf    = IOContext(buf_io)

    if !haskey(_latex_table_env, table_type)
        error("Unknown table type $table_type.")
    end

    table_env = _latex_table_env[table_type]

    # Make sure that `highlighters` is always a Ref{Any}(Tuple).
    if !(highlighters isa Tuple)
        highlighters = (highlighters,)
    end

    # Get the number of filtered lines and columns.
    num_filtered_rows, num_filtered_columns = _size(ptable)

    if (maximum_number_of_rows ≥ 0) &&
        (maximum_number_of_rows < num_filtered_rows)
        num_printed_rows = maximum_number_of_rows
    else
        num_printed_rows = num_filtered_rows
    end

    if (maximum_number_of_columns ≥ 0) &&
        (maximum_number_of_columns < num_filtered_columns)
        num_printed_columns = maximum_number_of_columns
    else
        num_printed_columns = num_filtered_columns
    end

    # Variables to store information about indentation
    # ==========================================================================

    il = 0 # ......................................... Current indentation level
    ns = 2 # ........................ Number of spaces in each indentation level

    # Print LaTeX header
    # ==========================================================================

    if table_type != :longtable && wrap_table == true
        _aprintln(buf, "\\begin{" * wrap_table_environment * "}", il, ns)
        il += 1

        # If available, add the title to the table.
        length(title) > 0 && _aprintln(buf, "\\caption{$title}", il, ns)
    end

    # Obtain the table description with the alignments and vertical lines.
    table_desc = _latex_table_description(
        ptable,
        num_printed_columns,
        vlines,
        left_vline,
        mid_vline,
        right_vline
    )

    _aprintln(buf,"\\begin{$table_env}$table_desc", il, ns)
    il += 1

    if table_type == :longtable
        # If available, add the title to the table.
        length(title) > 0 && _aprintln(buf, "\\caption{$title}\\\\", il, ns)
    end

    # We use a separate buffer because if `:longtable` is used, then we need to
    # repeat the header. Otherwise the caption is repeated in every page and it
    # is also added to the TOC (see issue #95).

    buf_io_h = IOBuffer()
    buf_h    = IOContext(buf_io_h)

    buf_io_b = IOBuffer()
    buf_b    = IOContext(buf_io_b)

    # If there is no column or row to be printed, then just exit.
    if (num_printed_columns == 0) || (num_printed_rows == 0)
        @goto print_to_output
    end

    if _check_hline(ptable, hlines, body_hlines, 0)
        _aprintln(buf_h, top_line, il, ns)
    end

    # Print the table
    # ==========================================================================

    # If the line is part of the header, we need to write to `buf_h`.
    # Otherwise, we must switch to `buf_b`.
    buf_aux = buf_h

    @inbounds for i in 1:num_printed_rows
        # Get the identification of the current row.
        row_id = _get_row_id(ptable, i)

        if _is_header_row(row_id)
            buf_aux = buf_h
        else
            buf_aux = buf_b
        end

        # Apply the indentation.
        _aprint(buf_aux, il, ns)

        @inbounds for j in 1:num_printed_columns
            # Get the identification of the current column.
            column_id = _get_column_id(ptable, j)

            # Get the column alignment.
            column_alignment = _get_column_alignment(ptable, j)

            # Get the alignment for the current cell.
            cell_alignment = _get_cell_alignment(ptable, i, j)

            # Get the cell data.
            cell_data = _get_element(ptable, i, j)

            # If we do not annotate the type here, then we get type instability
            # due to `_parse_cell_text`.
            cell_str::String = ""

            if _is_header_row(row_id)
                if column_id == :__ORIGINAL_DATA__
                    cell_str = _parse_cell_latex(
                        cell_data,
                        compact_printing = compact_printing,
                        limit_printing = limit_printing,
                        renderer = Val(:print)
                    )
                else
                    # For the additional cells, we just need to convert to
                    # string.
                    cell_str = string(cell_data)
                end

                # Get the LaTeX environments for this cell.
                envs = row_id == :__HEADER__ ? header_envs : subheader_envs

                # Apply the environments to the STR.
                cell_str = _latex_envs(cell_str, envs)

                # Check if the cell alignment must be changed with respect to
                # the column alignment.
                if cell_alignment != column_alignment
                    cell_str = _latex_apply_cell_alignment(
                        ptable,
                        cell_str,
                        cell_alignment,
                        j,
                        vlines,
                        left_vline,
                        mid_vline,
                        right_vline
                    )
                end

                print(buf_h, cell_str)

                # Check if we need to draw the continuation character.
                if j != num_printed_columns
                    print(buf_h, " & ")
                elseif num_printed_columns < num_filtered_columns
                    print(buf_h, " & \$\\cdots\$")
                end
            else

                ir = _get_data_row_index(ptable, i)
                jr = _get_data_column_index(ptable, j)

                if column_id == :__ORIGINAL_DATA__
                    # Apply the formatters.
                    for f in formatters.x
                        cell_data = f(cell_data, ir, jr)
                    end

                    cell_str = _parse_cell_latex(
                        cell_data;
                        cell_first_line_only = cell_first_line_only,
                        compact_printing = compact_printing,
                        limit_printing = limit_printing,
                        renderer = renderer
                    )

                    # Apply highlighters.
                    for h in highlighters
                        if h.f(_getdata(ptable), ir, jr)
                            cell_str = h.fd(_getdata(ptable), ir, jr, cell_str)::String
                            break
                        end
                    end

                    # Check if the cell alignment must be changed with respect to
                    # the column alignment.
                    if cell_alignment != column_alignment
                        cell_str = _latex_apply_cell_alignment(
                            ptable,
                            cell_str,
                            cell_alignment,
                            j,
                            vlines,
                            left_vline,
                            mid_vline,
                            right_vline
                        )
                    end
                else
                    # For the additional cells, we just need to convert to
                    # string.
                    cell_str = string(cell_data)
                end

                print(buf_aux, cell_str)

                # Check if we need to draw the continuation character.
                if j != num_printed_columns
                    print(buf_aux, " & ")
                elseif num_printed_columns < num_filtered_columns
                    print(buf_aux, " & \$\\cdots\$")
                end
            end
        end

        print(buf_aux, " \\\\")

        if (i == num_printed_rows) && (num_printed_rows < num_filtered_rows)
            println(buf_aux)
            _aprint(buf_aux, il, ns)

            for j in 1:num_printed_columns
                print(buf_aux, "\$\\vdots\$")

                # Check if we need to draw the continuation character.
                if j != num_printed_columns
                    print(buf_aux, " & ")
                elseif num_printed_columns < num_filtered_columns
                    print(buf_aux, " & \$\\ddots\$")
                end
            end

            print(buf_aux, " \\\\")
        end

        # After the last line, we need to check if we are printing all the rows
        # or not. In the latter, we need to pass the last row index to check if
        # the last horizontal line must be drawn.
        i_hline = i == num_printed_rows ? num_filtered_rows : i

        if _check_hline(ptable, hlines, body_hlines, i_hline)
            if i_hline == num_filtered_rows
                print(buf_aux, bottom_line)
            elseif _is_header_row(row_id)
                print(buf_aux, header_line)
            else
                print(buf_aux, mid_line)
            end
        end

        println(buf_aux)
    end

    @label print_to_output

    header_dump = String(take!(buf_io_h))
    body_dump   = String(take!(buf_io_b))

    print(buf, header_dump)

    # If we are using `longtable`, then we must mark the end of header and also
    # create the footer before printing the body.
    if table_type == :longtable
        _aprintln(buf, "\\endfirsthead", il, ns)
        print(buf, header_dump)
        _aprintln(buf, "\\endhead", il, ns)
        _aprintln(buf, bottom_line, il, ns)

        # Check if the user wants a text on the footer.
        if longtable_footer !== nothing
            lvline = _check_vline(ptable, vlines, 0) ? left_vline : ""
            rvline = _check_vline(ptable, vlines, num_filtered_columns) ? right_vline : ""

            env = "multicolumn{" * string(num_filtered_columns) * "}" * "{r}"

            _aprintln(buf, _latex_envs(longtable_footer, env) * "\\\\", il, ns)
            _aprintln(buf, bottom_line, il, ns)
        end

        _aprintln(buf, "\\endfoot", il, ns)
        _aprintln(buf, "\\endlastfoot", il, ns)
    end

    print(buf, body_dump)

    # Print LaTeX footer
    # ==========================================================================

    # If available, add the label to the table if we are using `longtable`.
    if table_type == :longtable && !isempty(label)
        _aprintln(buf, "\\label{" * label * "}", il)
    end

    il -= 1
    _aprintln(buf, "\\end{$table_env}", il, ns)

    if table_type != :longtable && wrap_table == true
        # If available, add the label to the table.
        !isempty(label) && _aprintln(buf, "\\label{" * label * "}", il)

        il -= 1
        _aprintln(buf, "\\end{" * wrap_table_environment * "}", il, ns)
    end

    # Print the buffer into the io.
    # ==========================================================================

    print(io, String(take!(buf_io)))

    return nothing
end
