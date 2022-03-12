function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    Base.precompile(Tuple{Core.kwftype(typeof(pretty_table)),NamedTuple{(:alignment, :crop), Tuple{Symbol, Symbol}},typeof(pretty_table),Vector{Any}})   # time: 0.059328616
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),UInt8})   # time: 0.050841685
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Int8}})   # time: 0.048754435
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{UInt8}})   # time: 0.04570676
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Float16}})   # time: 0.043950703
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Int8}})   # time: 0.04311265
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Float64}})   # time: 0.03354585
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{String}})   # time: 0.03333053
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),AnsiTextCell})   # time: 0.03182978
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Int8})   # time: 0.031548962
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{UInt8}})   # time: 0.031430952
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{UInt64}})   # time: 0.029313615
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Bool}})   # time: 0.027581748
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Int32}})   # time: 0.027080031
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{UInt16}})   # time: 0.026486024
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Float32}})   # time: 0.025422318
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Int16}})   # time: 0.025420792
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{UInt32}})   # time: 0.024806323
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Float64}})   # time: 0.024390634
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Int64}})   # time: 0.023276743
    Base.precompile(Tuple{typeof(_print_table_data!),Display,ProcessedTable,Matrix{Vector{String}},Vector{Int64},Int64,Vector{Int64},Int64,Vector{Int64},NTuple{4, Char},Symbol,Int64,Ref{Any},Vector{Int64},TextFormat,TextCrayons{Crayon, Vector{Crayon}},Symbol})   # time: 0.023041958
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Tuple{Int64, Int64}})   # time: 0.022882245
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Int16}})   # time: 0.018450897
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),String})   # time: 0.018287916
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Int32}})   # time: 0.01782546
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Int64})   # time: 0.016851809
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Vector{Char}})   # time: 0.016487738
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Int64}})   # time: 0.015538055
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Bool}})   # time: 0.015486164
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{UInt32}})   # time: 0.015486038
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{String}})   # time: 0.014851811
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{UInt16}})   # time: 0.014844522
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{UInt64}})   # time: 0.014496672
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Char}})   # time: 0.014332458
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Float16}})   # time: 0.014304247
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Matrix{Float32}})   # time: 0.014047097
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Bool})   # time: 0.013475034
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Float32})   # time: 0.013071352
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Int16})   # time: 0.01298181
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),UInt16})   # time: 0.012571192
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Float64})   # time: 0.011909148
    Base.precompile(Tuple{typeof(_print_table_data!),Display,ProcessedTable,Matrix{Vector{String}},Vector{Int64},Int64,Vector{Int64},Int64,Vector{Int64},NTuple{4, Char},Symbol,Int64,Ref{Any},Vector{Int64},TextFormat,TextCrayons{Crayon, Crayon},Symbol})   # time: 0.011568206
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),UInt64})   # time: 0.011488153
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Symbol})   # time: 0.010990948
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Float16})   # time: 0.009670453
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),UInt32})   # time: 0.009508707
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Int32})   # time: 0.009414122
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Char})   # time: 0.009293673
    Base.precompile(Tuple{typeof(compact_type_str),DataType})   # time: 0.009043086
    Base.precompile(Tuple{typeof(_print_table_data!),Display,ProcessedTable,Matrix{Vector{String}},Vector{Int64},Int64,Vector{Int64},Int64,Vector{Int64},NTuple{4, Char},Symbol,Int64,Ref{Any},Vector{Int64},TextFormat,TextCrayons{Vector{Crayon}, Vector{Crayon}},Symbol})   # time: 0.00724373
    Base.precompile(Tuple{typeof(_print_table_data!),Display,ProcessedTable,Matrix{Vector{String}},Vector{Int64},Int64,Vector{Int64},Int64,Vector{Int64},NTuple{4, Char},Symbol,Int64,Ref{Any},Vector{Int64},TextFormat,TextCrayons{Crayon, Crayon},Vector{Int64}})   # time: 0.007070381
    Base.precompile(Tuple{typeof(_print_table_data!),Display,ProcessedTable,Matrix{Vector{String}},Vector{Int64},Int64,Vector{Int64},Int64,Vector{Int64},NTuple{4, Char},Symbol,Int64,Ref{Any},Vector{Int64},TextFormat,TextCrayons{Vector{Crayon}, Crayon},Symbol})   # time: 0.006598127
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),Symbol})   # time: 0.006274707
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),String})   # time: 0.004568947
    Base.precompile(Tuple{Core.kwftype(typeof(_parse_cell_text)),NamedTuple{(:autowrap, :cell_data_type, :cell_first_line_only, :column_width, :compact_printing, :has_color, :limit_printing, :linebreaks, :renderer), Tuple{Bool, DataType, Bool, Int64, Bool, Bool, Bool, Bool, Val{:print}}},typeof(_parse_cell_text),URLTextCell})   # time: 0.002782481
    Base.precompile(Tuple{typeof(_process_data_cell_text),ProcessedTable,AnsiTextCell,String,Int64,Int64,Int64,Int64,Crayon,Symbol,Ref{Any}})   # time: 0.002061521
    Base.precompile(Tuple{typeof(_process_data_cell_text),ProcessedTable,URLTextCell,String,Int64,Int64,Int64,Int64,Crayon,Symbol,Ref{Any}})   # time: 0.001816599
    Base.precompile(Tuple{typeof(_print_custom_text_cell!),Display,AnsiTextCell,String,Crayon,Int64,Ref{Any}})   # time: 0.001616025
    Base.precompile(Tuple{typeof(_print_custom_text_cell!),Display,URLTextCell,String,Crayon,Int64,Ref{Any}})   # time: 0.001240785
    Base.precompile(Tuple{typeof(_flush_display!),IOContext{Base.TTY},Display,Bool,Bool,Int64})   # time: 0.001014678
end