type
    Cylinder* = ref object


proc newCylinder*(): Cylinder =
    return Cylinder()

proc draw*(self: Cylinder) =
    discard