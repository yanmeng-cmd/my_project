.section .data
a: .word 5         # 第一个加数
b: .word 3         # 第二个加数
result: .word 0    # 结果存储

.section .text
.globl _start
_start:
    lw t0, a       # t0 = a
    lw t1, b       # t1 = b

add_loop:
    xor t2, t0, t1 # t2 = t0 ^ t1 (计算和)
    and t3, t0, t1 # t3 = t0 & t1 (计算进位)
    slli t3, t3, 1 # t3 = t3 << 1 (左移进位)

    beq t3, zero, done # 如果没有进位，跳出循环

    move t0, t2    # t0 = 和
    move t1, t3    # t1 = 进位
    j add_loop

done:
    sw t2, result   # 存储结果
    li a7, 10       # 系统调用退出
    ecall

