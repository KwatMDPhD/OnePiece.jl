using OnePiece
using OnePiece

TE = OnePiece.path.make_temporary("OnePiece.test")

sr_ =
    [basename(na) for na in readdir(joinpath(dirname(@__DIR__), "src"), join = true) if isdir(na)]

te_ = [splitext(na)[1] for na in readdir() if endswith(na, ".ipynb") && na != "runtests.ipynb"]

symdiff(sr_, te_)

OnePiece.ipynb.run(".", ["runtests.ipynb"])
