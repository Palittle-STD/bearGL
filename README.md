-- NOTE --
this was made in a couple of days. very simple and easy-to-use library.
this library works for windows only
if you want to use bearGL, you have to copy the 3 .obj files to your program's directory

-- HOW TO USE --
to compile the .asm files, first, download and install GCC, and NASM. after that, run make.bat. and after that, you have to make a simple program using that library. or you could use one of the exmaple files in the "examples" folder. after that, type:
"
nasm -f win32 -o filename.obj filename.asm
gcc -m32 bear.obj input.obj math.obj filename.obj -o filename.exe
"

then run the program in your terminal (CMD or Powershell)