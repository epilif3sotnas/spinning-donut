type
    Cuboid* = ref object


proc newCuboid*(): Cuboid =
    return Cuboid()

proc draw*(self: Cuboid) =
    discard