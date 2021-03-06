function make(di, sr_, sc, ht = "")

    if isempty(ht)

        ht = joinpath(OnePiece.TEMPORARY_DIRECTORY, "$(OnePiece.time.stamp()).html")

    end

    open(ht, "w") do io

        println(io, "<!doctype html>")

        println(
            io,
            "<div id=\"$di\" style=\"display: block; height: 1000px; width: 80%; margin-left: auto; margin-right: auto; background: #fdfdfd\"></div>",
        )

        for sr in sr_

            println(io, "<script src=\"$sr\"></script>")

        end

        println(io, "<script>")

        println(io, "$sc")

        println(io, "</script>")

    end

    println("Made $ht.")

    DefaultApplication.open(ht)

end
