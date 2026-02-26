; input mechanic

section .data
    up_arrow dd 75
    down_arrow dd 77
    left_arrow dd 72
    right_arrow dd 80

section .text
    global _getInput
    global _cmpInput
    extern _getch

_getInput:
    call _getch
    cmp eax, 224     ; Check for F-key prefix first
    je .get_second
    cmp eax, 0       ; Check for Alt prefix
    je .get_second
    ret              ; Regular key, return as-is
.get_second:
    call _getch      ; Get the real key code
    ret

_cmpInput:
    cmp eax, 48
    je .zero

    cmp eax, 49
    je .one

    cmp eax, 50
    je .two

    cmp eax, 51
    je .three

    cmp eax, 52
    je .four

    cmp eax, 53
    je .five

    cmp eax, 54
    je .six

    cmp eax, 55
    je .seven

    cmp eax, 56
    je .eight

    cmp eax, 57
    je .nine

    cmp eax, 72
    je .up
    cmp eax, 80
    je .down
    cmp eax, 75
    je .left
    cmp eax, 77
    je .right

    cmp eax, 65
    je .A
    cmp eax, 66
    je .B
    cmp eax, 67
    je .C
    cmp eax, 68
    je .D
    cmp eax, 69
    je .E
    cmp eax, 70
    je .F
    cmp eax, 71
    je .G
    cmp eax, 72
    je .H
    cmp eax, 73
    je .I
    cmp eax, 74
    je .J
    cmp eax, 75
    je .K
    cmp eax, 76
    je .L
    cmp eax, 77
    je .M
    cmp eax, 78
    je .N
    cmp eax, 79
    je .O
    cmp eax, 80
    je .P
    cmp eax, 81
    je .Q
    cmp eax, 82
    je .R
    cmp eax, 83
    je .S
    cmp eax, 84
    je .T
    cmp eax, 85
    je .U
    cmp eax, 86
    je .V
    cmp eax, 87
    je .W
    cmp eax, 88
    je .X
    cmp eax, 89
    je .Y
    cmp eax, 90
    je .Z

    cmp eax, 97
    je .a
    cmp eax, 98
    je .b
    cmp eax, 99
    je .c
    cmp eax, 100
    je .d
    cmp eax, 101
    je .e
    cmp eax, 102
    je .f
    cmp eax, 103
    je .g
    cmp eax, 104
    je .h
    cmp eax, 105
    je .i
    cmp eax, 106
    je .j
    cmp eax, 107
    je .k
    cmp eax, 108
    je .l
    cmp eax, 109
    je .m
    cmp eax, 110
    je .n
    cmp eax, 111
    je .o
    cmp eax, 112
    je .p
    cmp eax, 113
    je .q
    cmp eax, 114
    je .r
    cmp eax, 115
    je .s
    cmp eax, 116
    je .t
    cmp eax, 117
    je .u
    cmp eax, 118
    je .v
    cmp eax, 119
    je .w
    cmp eax, 120
    je .x
    cmp eax, 121
    je .y
    cmp eax, 122
    je .z

    cmp eax, 27
    je .esc

    cmp eax, 13
    je .enter

    cmp eax, 9
    je .tab

    cmp eax, 8
    je .bs

    cmp eax, 32
    je .spc

    cmp eax, 127
    je .delete

    cmp eax, 130
    je .insert

    cmp eax, 71
    je .home

    cmp eax, 79
    je .end

    cmp eax, 73
    je .pgup

    cmp eax, 81
    je .pgdn

    cmp eax, 33
    je .exm

    cmp eax, 34
    je .doq

    cmp eax, 35
    je .hashtag

    cmp eax, 36
    je .dlrsin

    cmp eax, 37
    je .percent

    cmp eax, 38
    je .ampersand

    cmp eax, 39
    je .siq

    cmp eax, 40
    je .quopn

    cmp eax, 41
    je .qucls

    cmp eax, 42
    je .ast

    cmp eax, 43
    je .pls

    cmp eax, 44
    je .com

    cmp eax, 45
    je .dsh

    cmp eax, 46
    je .prd

    cmp eax, 47
    je .fslash

    cmp eax, 58
    je .cln

    cmp eax, 59
    je .semicln

    cmp eax, 60
    je .larr
    
    cmp eax, 61
    je .equals

    cmp eax, 62
    je .rarr

    cmp eax, 63
    je .qmark

    cmp eax, 64
    je .atsin

    cmp eax, 91
    je .opnbrkt

    cmp eax, 92
    je .bslash

    cmp eax, 93
    je .clsbrkt

    cmp eax, 94
    je .uarr

    cmp eax, 95
    je .undscr

    cmp eax, 96
    je .bckquot

    cmp eax, 123
    je .crlbrcktopn

    cmp eax, 124
    je .vertbar

    cmp eax, 125
    je .crlbrcktcls

    cmp eax, 126
    je .tilde

    cmp eax, 1
    je .ctrl_a
    cmp eax, 2
    je .ctrl_b
    cmp eax, 3
    je .ctrl_c
    cmp eax, 4
    je .ctrl_d
    cmp eax, 5
    je .ctrl_e
    cmp eax, 6
    je .ctrl_f
    cmp eax, 7
    je .ctrl_g
    cmp eax, 8
    je .ctrl_h
    cmp eax, 9
    je .ctrl_i
    cmp eax, 10
    je .ctrl_j
    cmp eax, 11
    je .ctrl_k
    cmp eax, 12
    je .ctrl_l
    cmp eax, 13
    je .ctrl_m
    cmp eax, 14
    je .ctrl_n
    cmp eax, 15
    je .ctrl_o
    cmp eax, 16
    je .ctrl_p
    cmp eax, 17
    je .ctrl_q
    cmp eax, 18
    je .ctrl_r
    cmp eax, 19
    je .ctrl_s
    cmp eax, 20
    je .ctrl_t
    cmp eax, 21
    je .ctrl_u
    cmp eax, 22
    je .ctrl_v
    cmp eax, 23
    je .ctrl_w
    cmp eax, 24
    je .ctrl_x
    cmp eax, 25
    je .ctrl_y
    cmp eax, 26
    je .ctrl_z
    

    mov eax, 0
    ret
.up:
    mov eax, 1
    ret
.down:
    mov eax, 2
    ret
.left:
    mov eax, 3
    ret
.right:
    mov eax, 4
    ret
.A:
    mov eax, 5
    ret
.B:
    mov eax, 6
    ret
.C:
    mov eax, 7
    ret
.D:
    mov eax, 8
    ret
.E:
    mov eax, 9
    ret
.F:
    mov eax, 10
    ret
.G:
    mov eax, 11
    ret
.H:
    mov eax, 12
    ret
.I:
    mov eax, 13
    ret
.J:
    mov eax, 14
    ret
.K:
    mov eax, 15
    ret
.L:
    mov eax, 16
    ret
.M:
    mov eax, 17
    ret
.N:
    mov eax, 18
    ret
.O:
    mov eax, 19
    ret
.P:
    mov eax, 20
    ret
.Q:
    mov eax, 21
    ret
.R:
    mov eax, 22
    ret
.S:
    mov eax, 23
    ret
.T:
    mov eax, 24
    ret
.U:
    mov eax, 25
    ret
.V:
    mov eax, 26
    ret
.W:
    mov eax, 27
    ret
.X:
    mov eax, 28
    ret
.Y:
    mov eax, 29
    ret
.Z:
    mov eax, 30
    ret
.a:
    mov eax, 31
    ret
.b:
    mov eax, 32
    ret
.c:
    mov eax, 33
    ret
.d:
    mov eax, 34
    ret
.e:
    mov eax, 35
    ret
.f:
    mov eax, 36
    ret
.g:
    mov eax, 37
    ret
.h:
    mov eax, 38
    ret
.i:
    mov eax, 39
    ret
.j:
    mov eax, 40
    ret
.k:
    mov eax, 41
    ret
.l:
    mov eax, 42
    ret
.m:
    mov eax, 43
    ret
.n:
    mov eax, 44
    ret
.o:
    mov eax, 45
    ret
.p:
    mov eax, 46
    ret
.q:
    mov eax, 47
    ret
.r:
    mov eax, 48
    ret
.s:
    mov eax, 49
    ret
.t:
    mov eax, 50
    ret
.u:
    mov eax, 51
    ret
.v:
    mov eax, 52
    ret
.w:
    mov eax, 53
    ret
.x:
    mov eax, 54
    ret
.y:
    mov eax, 55
    ret
.z:
    mov eax, 56
    ret
.one:
    mov eax, 57
    ret
.two:
    mov eax, 58
    ret
.three:
    mov eax, 59
    ret
.four:
    mov eax, 60
    ret
.five:
    mov eax, 61
    ret
.six:
    mov eax, 62
    ret
.seven:
    mov eax, 63
    ret
.eight:
    mov eax, 64
    ret
.nine:
    mov eax, 65
    ret
.zero:
    mov eax, 66
    ret
.esc:
    mov eax, 67
    ret
.enter:
    mov eax, 68
    ret
.tab:
    mov eax, 69
    ret
.bs:
    mov eax, 70
    ret
.spc:
    mov eax, 71
    ret
.delete:
    mov eax, 72
    ret
.insert:
    mov eax, 73
    ret
.home:
    mov eax, 74
    ret
.end:
    mov eax, 75
    ret
.pgup:
    mov eax, 76
    ret
.pgdn:
    mov eax, 77
    ret
.equals:
    mov eax, 78
    ret
.exm:
    mov eax, 79
    ret
.doq:
    mov eax, 80
    ret
.hashtag:
    mov eax, 81
    ret
.dlrsin:
    mov eax, 82
    ret
.percent:
    mov eax, 83
    ret
.ampersand:
    mov eax, 84
    ret
.siq:
    mov eax, 85
    ret
.quopn:
    mov eax, 86
    ret
.qucls:
    mov eax, 87
    ret
.ast:
    mov eax, 88
    ret
.pls:
    mov eax, 89
    ret
.com:
    mov eax, 90
    ret
.dsh:
    mov eax, 91
    ret
.prd:
    mov eax, 92
    ret
.fslash:
    mov eax, 93
    ret
.cln:
    mov eax, 94
    ret
.semicln:
    mov eax, 95
    ret
.larr:
    mov eax, 96
    ret
.rarr:
    mov eax, 97
    ret
.qmark:
    mov eax, 98
    ret
.atsin:
    mov eax, 99
    ret
.opnbrkt:
    mov eax, 100
    ret
.bslash:
    mov eax, 101
    ret
.clsbrkt:
    mov eax, 102
    ret
.uarr:
    mov eax, 103
    ret
.undscr:
    mov eax, 104
    ret
.bckquot:
    mov eax, 105
    ret
.crlbrcktopn:
    mov eax, 106
    ret
.vertbar:
    mov eax, 107
    ret
.crlbrcktcls:
    mov eax, 108
    ret
.tilde:
    mov eax, 109
    ret
.ctrl_a:
    mov eax, 110
    ret
.ctrl_b:
    mov eax, 111
    ret
.ctrl_c:
    mov eax, 112
    ret
.ctrl_d:
    mov eax, 113
    ret
.ctrl_e:
    mov eax, 114
    ret
.ctrl_f:
    mov eax, 115
    ret
.ctrl_g:
    mov eax, 116
    ret
.ctrl_h:
    mov eax, 117
    ret
.ctrl_i:
    mov eax, 118
    ret
.ctrl_j:
    mov eax, 119
    ret
.ctrl_k:
    mov eax, 120
    ret
.ctrl_l:
    mov eax, 121
    ret
.ctrl_m:
    mov eax, 122
    ret
.ctrl_n:
    mov eax, 123
    ret
.ctrl_o:
    mov eax, 124
    ret
.ctrl_p:
    mov eax, 125
    ret
.ctrl_q:
    mov eax, 126
    ret
.ctrl_r:
    mov eax, 127
    ret
.ctrl_s:
    mov eax, 128
    ret
.ctrl_t:
    mov eax, 129
    ret
.ctrl_u:
    mov eax, 130
    ret
.ctrl_v:
    mov eax, 131
    ret
.ctrl_w:
    mov eax, 132
    ret
.ctrl_x:
    mov eax, 133
    ret
.ctrl_y:
    mov eax, 134
    ret
.ctrl_z:
    mov eax, 135
    ret
