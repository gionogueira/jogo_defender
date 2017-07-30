.text 
main: 	lui $8, 0x1001 #ponto inicial do mapa	
	addi $9, $0, 0xC66C3A #cor inicial marrom
	addi $10, $0, 1920 #quantidade de pixels solo
	
	addi $8, $8, 25088
	
solo:	sw $9, 0($8) #função para desenho
	addi $8, $8, 4
	addi $11, $11, 1
	beq $11, $10, preparo_predio
	j solo
	
	
preparo_predio:   lui $8, 0x1001 #ponto inicial
		  addi $9, $0, 0x545DD4 #cor do prédio
		  addi $10, $0, 1280 #quantidade pixels prédio	880
		  addi $11, $0, 0 #reset variável $11
		  addi $8, $8, 19968 #ponto inicial prédio 	

predio:	sw $9, 0($8) 		
	addi $8, $8, 4
	addi $11, $11, 1
	beq $11, $10, prep
	j predio	

prep:lui $8, 0x1001 #ponto inicial
	  addi $8, $8, 25068 #ponto inicial prédio 
	  addi $11, $0, 0 #reset variável $11
	  
	  
prep_espaco:addi $9, $0, 0x000000 #cor do espaco
	  addi $10, $0, 450 #quantidade pixels prédio	880
	  addi $8, $8, -5068 #ponto inicial prédio 	
	  addi $12, $0, 0 #reset variável $12
	  


espaco: sw $9,0($8)
	addi $8, $8, 4
	sw $9,0($8)
	addi $8, $8, 4
	sw $9,0($8)
	addi $8, $8, 4
	sw $9,0($8)
	addi $8, $8, 4
	sw $9,0($8)
	addi $8, $8, 496
	addi $11, $11, 5
	addi $12, $12, 5
	beq $11, $10, preparo_nave
	beq $12, 50, prep_espaco
	j espaco

preparo_nave:  	lui $8, 0x1001 #ponto inicial
		addi $9, $0, 0xffffff #cor da nave
		addi $10, $0, 0 #quantidade pixels nave	
		addi $11, $0, 0 #reset variável $11
		addi $8, $8, 13328 #ponto inicial nave 
		
		add $12, $0, $0
prepara_tiro:
	lui $20, 0x1001
	
preparo_nave_inimiga:
		lui $14, 0x1001
		addi $14, $14, 2000 
nave: 	
	
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 504 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0xffffff
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 500 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0xffffff
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 496 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0xffffff
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 492 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0xffffff
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 492 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0xffffff
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 492 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0xffffff
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 496 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0xffffff
	sw $9, 0($8)
	addi $8, $8, 4 
 
	addi $9, $0, 0x000000
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 500 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, 4 
 
	sw $9, 0($8)
	addi $8, $8, -4104
        j entrada_teclado
        
nave_inimiga: 

	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 500 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 492 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 480 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 472 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 472 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($14)
	addi $14, $14, 472 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)
	addi $14, $14, 4 
 
	sw $10, 0($14)	 
	addi $14, $14, -3096   
      	j entrada_teclado
      
      	
tiro:
	addi $10, $0, 0x000000
	sw $10, 0($20)
	addi $20, $20, 4 
 
	addi $10, $0, 0x97dede
	sw $10, 0($20)
	addi $20, $20, 4 
 
	sw $10, 0($20)
	addi $20, $20, 4 
 
	sw $10, 0($20)
	addi $20, $20, 4 
 
	addi $10, $0, 0xffffff
	sw $10, 0($20)
	addi $20, $20, 4 
 
	sw $10, 0($20)
	addi $20, $20, -20
	j verificar_nave_inimiga
	
entrada_teclado:
	lui  $18, 0xffff
	lw $17, 0($18)
	beq $17, $0, verifica_movimento
	addi $18, $18, 4
	lw $15, 0($18)
	#Compara e verifica a entrada
	addi $23, $0, 119 #Tecla W
	beq $15, $23, descer_nave
#	addi $23, $0, 97 #Tecla A
#	beq $15, $23, esquerda_nave
	addi $23, $0, 115 #Tecla S
	beq $15, $23, subir_nave
	addi $23, $0, 100 #Tecla Backspace
	beq $15, $23, disparou
#	addi $23, $0, 100 #Tecla D
#	beq $15, $23, direita_nave
	j entrada_teclado
disparou:
	bne $19, 0, entrada_teclado
	add $20, $0, $8
	addi $20, $20, 2084
	addi $19, $19, 1
	j entrada_teclado

verifica_movimento:
	bne $19, 0, movimento_tiro
	j verificar_nave_inimiga
	
subir_nave: 
	addi $8, $8, 512
	j nave		
	
descer_nave: 
	addi $8, $8, -512
	j nave		            
      
esquerda_nave: 
	addi $8, $8, -4
	j nave	      
	
direita_nave: 
	addi $8, $8, 4
	j nave		
movimento_tiro:
	addi $19, $19, 1
	beq $19, 2, movimento_tiro_objeto
	j verificar_nave_inimiga
	
movimento_tiro_objeto:
	addi $19, $0, 1
	addi $20, $20, 4 
	addi $21, $21, 1
	beq $21, 99,verifica_fim 
	j tiro      
	
verificar_nave_inimiga:
	beq $12, 0, nave_cima_inimiga
      	beq $12, 1, nave_baixo_inimiga
      
nave_cima_inimiga:
	addi $14, $14, 512
	addi $11, $11, 1
	beq $11, 30, preparo_nave_baixo_inimiga
	j nave_inimiga

nave_baixo_inimiga:
	addi $14, $14, -512
	addi $11, $11, 1
	beq $11, 30, preparo_nave_cima_inimiga
	j nave_inimiga

preparo_nave_cima_inimiga: addi $12, $0, 0
	add $11, $0, $0
	j nave_cima_inimiga

preparo_nave_baixo_inimiga: addi $12, $0, 1
      	add $11, $0, $0
      	j nave_baixo_inimiga
      	
verifica_fim:
	addi $20, $20, 28
	lw $20, ($20)
	bne $20, 0x000000, win
	j loose
win: 
	lui $9, 0x1001
	
	addi $9, $9, 7852 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 404 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 404 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 408 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 408 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 412 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 76 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 916 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 428 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 408 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 408 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 412 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 412 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 416 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 420 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 492 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	j fim
loose:
	lui $9, 0x1001
	
	addi $9, $9, 9808 
 
	addi $10, $0, 0x0cd716
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 40 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 192 
 
	sw $10, 0($9)
	addi $9, $9, 44 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 188 
 
	sw $10, 0($9)
	addi $9, $9, 44 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 184 
 
	sw $10, 0($9)
	addi $9, $9, 44 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 184 
 
	sw $10, 0($9)
	addi $9, $9, 44 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 184 
 
	sw $10, 0($9)
	addi $9, $9, 44 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 188 
 
	sw $10, 0($9)
	addi $9, $9, 44 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 36 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 192 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 188 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 36 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 188 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 36 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 184 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 36 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 56 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 8 
 
	sw $10, 0($9)
	addi $9, $9, 20 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
	addi $9, $9, 188 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 36 
 
	sw $10, 0($9)
	addi $9, $9, 16 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 40 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 32 
 
	sw $10, 0($9)
	addi $9, $9, 28 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 4 
 
	sw $10, 0($9)
	addi $9, $9, 12 
 
	sw $10, 0($9)
	addi $9, $9, 24 
 
	sw $10, 0($9)
fim: nop
	
	
