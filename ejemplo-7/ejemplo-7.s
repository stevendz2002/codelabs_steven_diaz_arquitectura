.text
.global suma_float

#para los floats se utilizan los registros xmn (son de 128 bits)
#segun system V:
#xmn0 funcion (xmn0, xmn1, xmn2, ....) En ensamblador
#float funcion (float1, float2, float3, ....) en lenguaje c
suma_float:
  addss %xmm1,% xmm0  # xmm0 = xmm0 + xmm1
  ret


# addss: Add Scalar Single preciion (sumar un escalar de precision simple, es decir float
