SECTIONS
{
    . = 0x08048000 + SIZEOF_HEADERS;
    .rodata   : { *(.rodata) }
    .data     : { *(.text) *(.data)   }
    .bss      : { *(.bss)    }
}
