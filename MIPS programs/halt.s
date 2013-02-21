        lui $r0, 0x33          # 0x9033
        ori $r0, $r0, 0x44     # 0x2044
        lui $r1, 0x33          # 0x9133
        ori $r1, $r1, 0x44     # 0x2544
self:   beq $r0, $r1, self     # 0x71FF