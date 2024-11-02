.section .text
.globl _start

_start:
    li a0, 5        # 将 5 加载到 a0 寄存器
    li a1, 3        # 将 3 加载到 a1 寄存器
    add a2, a0, a1  # 将 a0 和 a1 相加，结果存储到 a2
    # 这里可以添加其他操作或输出结果的代码

    li a7, 10       # 系统调用退出
    ecall
