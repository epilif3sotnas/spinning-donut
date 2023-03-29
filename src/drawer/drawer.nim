# internal
import
    ./shape


type
    Drawer* = ref object


proc newDrawer*(): Drawer =
    return Drawer()

proc drawObject*(self: Drawer, service: Shape) =
    service.draw()