.data

.text
main:
    li $v0, 5
    syscall
    move $a0,$v0
    j bitparidade

um:
    move $v0 $zero
    addi $v0,$v0,1
    addi $v1,$a0,128
    j sVolta
zero:
    move $v0 $zero
    move $v1,$a0
    j sVolta

somaUm:
    add $t9,$t9,1 # soma ao contador
    j volta

bitparidade:
    #a0 é meu numero padrao
    li $t0,1 # mascara
    move $t9,$zero #contador bits 
    move $t4,$zero #contador loop

    loop:
        beq $t4,7,print
        and $t1,$t0,$a0 #faz paridade com 1
        beq $t1,1,somaUm # se o and der um é dento
        volta:
        srl	$s0,$s0,1 # rigth no numero
        addi $t4,$t4,1 #soma ao loop
        j loop

print:
    and $t7,$t0,$t9
    beq $t7,0,zero
    beq $t7,1,um
        
sVolta:
    jr $ra #finaliza

