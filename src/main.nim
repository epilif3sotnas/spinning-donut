# std
import
    std/threadpool

# internal
import
  ./shapes/[
    cube,
    cuboid,
    cylinder,
    donut,
    sphere,
    squarepyramid
  ],
  ./drawer/drawer


proc main() =
  let cube = newCube()
  let cuboid = newCuboid()
  let cylinder = newCylinder()
  let donut = newDonut()
  let sphere = newSphere()
  let squarePyramid = newSquarePyramid()

  let drawer = newDrawer()

  # Draw Cube
  spawn drawer.drawObject(cube)

  # Draw Cuboid
  spawn drawer.drawObject(cuboid)

  # Draw Cylinder
  spawn drawer.drawObject(cylinder)

  # Draw Donut
  spawn drawer.drawObject(donut)

  # Draw Sphere
  spawn drawer.drawObject(sphere)

  # Draw SquarePyramid
  spawn drawer.drawObject(squarePyramid)

  sync()

when isMainModule:
  main()