section .text
    global _bearAdd
    global _bearSub
    global _bearMul
    global _bearDiv
    global _bearRand

_bearAdd:
    add ebx, ecx
    ret
_bearSub:
    sub ebx, ecx
    ret
_bearMul:
    imul ebx, ecx
    ret
_bearDiv:
    mov eax, ebx
    xor edx, edx
    div ecx
    mov ebx, eax
    ret