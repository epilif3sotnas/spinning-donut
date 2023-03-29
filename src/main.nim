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
  drawer.drawObject(cube)

  # Draw Cuboid
  drawer.drawObject(cuboid)

  # Draw Cylinder
  drawer.drawObject(cylinder)

  # Draw Donut
  drawer.drawObject(donut)

  # Draw Sphere
  drawer.drawObject(sphere)

  # Draw SquarePyramid
  drawer.drawObject(squarePyramid)

when isMainModule:
  main()