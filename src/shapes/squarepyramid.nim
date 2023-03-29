type
    SquarePyramid* = ref object


proc newSquarePyramid*(): SquarePyramid =
    return SquarePyramid()

proc draw*(self: SquarePyramid) =
    discard