# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# Description
#
#   Pre-defined formats for HTML tables.
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

export html_default, html_dark, html_minimalist, html_simple

const html_default = HTMLTableFormat()

const html_dark = HTMLTableFormat(
    css = """
    table, td, th {
        border-collapse: collapse;
        font-family: sans-serif;
    }

    td, th {
        border-bottom: 0;
        padding: 4px
    }

    tr:nth-child(even) {
        background: #242627 !important;
        color: white;
    }

    tr:nth-child(odd) {
        background: #363b3d !important;
        color: white;
    }

    tr.header {
        background: #000 !important;
        color: #5fa6c2 !important;
        font-weight: bold;
    }

    tr.subheader {
        background: #242627 !important;
        color: white;
    }

    tr.headerLastRow {
        border-bottom: 2px solid black;
    }

    th.rowNumber, td.rowNumber {
        text-align: right;
    }
    """
)

const html_minimalist = HTMLTableFormat(
    css = """
    table, td, th {
        border-collapse: collapse;
        font-family: sans-serif;
    }

    td, th {
        border-bottom: 0;
        background: #fff !important;
        padding: 4px
    }

    tr.header {
        background: #fff !important;
        font-weight: bold;
    }

    tr.subheader {
        background: #fff !important;
        color: dimgray;
    }

    tr.headerLastRow {
        border-bottom: 2px solid black;
    }

    th.rowNumber, td.rowNumber {
        text-align: right;
    }
    """
)

const html_simple = HTMLTableFormat(
    css = """
    table, td, th {
        border-collapse: collapse;
        font-family: sans-serif;
    }

    td, th {
        border-bottom: 0;
        padding: 4px
    }

    tr:nth-child(odd) {
        background: #eee;
    }

    tr:nth-child(even) {
        background: #fff;
    }

    tr.header {
        background: #fff !important;
        font-weight: bold;
    }

    tr.subheader {
        background: #fff !important;
        color: dimgray;
    }

    tr.headerLastRow {
        border-bottom: 2px solid black;
    }

    th.rowNumber, td.rowNumber {
        text-align: right;
    }
    """
)

