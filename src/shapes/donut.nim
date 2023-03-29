type
    Donut* = ref object


proc newDonut*(): Donut =
    return Donut()

proc draw*(self: Donut) =
    discard