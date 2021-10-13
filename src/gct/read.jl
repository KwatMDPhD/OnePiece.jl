using CSV: File
using DataFrames: DataFrame, Not, rename, select

function read(pa::String; na::String = "Name")::DataFrame

    return rename(
        select(
            DataFrame(File(pa; header = 3, delim = '\t')),
            Not("Description"),
        ),
        "Name" => na,
    )

end

export read