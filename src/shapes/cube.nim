type
    Cube* = ref object


proc newCube*(): Cube =
    return Cube()

proc draw*(self: Cube) =
    discard