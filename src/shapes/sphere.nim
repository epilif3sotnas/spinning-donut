type
    Sphere* = ref object


proc newSphere*(): Sphere =
    return Sphere()

proc draw*(self: Sphere) =
    discard