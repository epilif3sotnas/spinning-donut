type
    Donut* = ref object


proc newDonut*(): Donut =
    return Donut()

proc draw*(self: Donut) =
    const r1 = 1
    const r2 = 2
    const k2 = 5
    const k1 = "asd"