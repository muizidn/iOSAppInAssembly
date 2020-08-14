    .section    __TEXT,__text,regular,pure_instructions
    .build_version ios, 13, 2    sdk_version 13, 2
    .globl    _main                   ; -- Begin function main
    .p2align    2
_main:                                  ; @main
    .cfi_startproc
; %bb.0:
    sub    sp, sp, #32             ; =32
    stp    x29, x30, [sp, #16]     ; 16-byte Folded Spill
    add    x29, sp, #16            ; =16
    .cfi_def_cfa w29, 16
    .cfi_offset w30, -8
    .cfi_offset w29, -16
    stur    wzr, [x29, #-4]
    adrp    x0, l_.str@PAGE
    add    x0, x0, l_.str@PAGEOFF
    bl    _printf
    mov    w8, #0
    str    w0, [sp, #8]            ; 4-byte Folded Spill
    mov    x0, x8
    ldp    x29, x30, [sp, #16]     ; 16-byte Folded Reload
    add    sp, sp, #32             ; =32
    ret
    .cfi_endproc
                                        ; -- End function
    .section    __TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
    .asciz    "Hello World"


.subsections_via_symbols
