del bear.obj
del input.obj
del math.obj
cls
nasm -f win32 -o bear.obj bear.s
nasm -f win32 -o input.obj input.s
nasm -f win32 -o math.obj math.s