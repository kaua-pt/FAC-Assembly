.data
    nome: .space 100
    cmp: .space 100
.text 
    main:
        li $v0, 5
        syscall
        move $t0,$v0 # t0 é o len da string
        li $v0,8
        la $a0,nome
        la $a1,$t0
        syscall
        li $v0,8
        la $a0,cmp
        la $a1,$t0
        syscall
    
    move $a0,$t1
    li $v0,1
    syscall

    #finalizar programa
    li $v0,10
    syscall
        
        
        