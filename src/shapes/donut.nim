# std
import
    std/[
        math,
        os
    ]


type
    Donut* = ref object


proc newDonut*(): Donut =
    return Donut()

proc draw*(self: Donut) =
    var A, B = 0.0'f
    var z: array[1760, float]
    var b: array[1760, char]
    echo("\x1b[2J")

    while true:
        for i in 0..<1760:
            z[i] = 0.0
            b[i] = ' '

        var j = 0.0
        while j < 6.28:
            var i = 0.0
            while i < 6.28:
                let c: float = sin(i)
                let d: float = cos(j)
                let e: float = sin(A)
                let f: float = sin(j)
                let g: float = cos(A)
                let h: float = d + 2
                let D: float = 1 / (c * h * e + f * g + 5)
                let l: float = cos(i)
                let m: float = cos(B)
                let n: float = sin(B)
                let t: float = c * h * g - f * e
                let x: int = (40 + 30 * D * (l * h * m - t * n)).int()
                let y: int = (12 + 15 * D * (l * h * n + t * m)).int()
                let o: int = x + 80 * y
                let N: int = (8 * ((f * e - c * d * g) * m - c * d * e - f * g - l * d * n)).int()

                if (22 > y and y > 0 and x > 0 and 80 > x and D > z[o]):
                    z[o] = D
                    b[o] = if N > 0: ".,-~:;=!*#$@"[N] else: '.'

                i += 0.02

            j += 0.07

        echo("\x1b[H")

        for idx, output in b:
            write(stdout, if idx mod 80 > 0: b[idx] else: '\n')
            A += 0.00004
            B += 0.00002

        sleep(30)