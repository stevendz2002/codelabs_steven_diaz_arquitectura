.text

.global calculadoraCiclos

calculadoraCiclos:
        # xmm0 funcion ( xmm0, rsi, xmm1)
        mulss %xmm1, %xmm0  # SS significa: S (scalar: escalar ) y S (sinlge: float)

# Queremos realizar n ciclos (rsi = 5)
ciclos:

        cmp $0, %rdi  # Comparacion entre rsi y cero
        je fin          # Podemos usar jje o jz arbitrariamente

        # codigo

        addss %xmm0, %xmm0      # xmm0 = xmm0 + xmm0

        dec %rdi
        jmp ciclos

fin:

 ret
