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
		
nave: addi $9, $0, 0xffffff
	sw $9, 0($8)
      addi $8, $8, 512	
      sw $9, 0($8)
      addi $8, $8, 4
      sw $9, 0($8)
      addi $8, $8, 508
      sw $9, 0($8)
      addi $8, $8, 4
      sw $9, 0($8)
      addi $8, $8, 4
      sw $9, 0($8)
      addi $8, $8, 504
      sw $9, 0($8)
      addi $8, $8, 4
      sw $9, 0($8)
      addi $8, $8, 508		
      sw $9, 0($8)
      addi $8, $8, -2052
      addi $9, $0, 0x000000
      sw $9, 0($8)
      addi $8, $8, 8
      sw $9, 0($8)
      addi $8, $8, 504
      sw $9, 0($8)
      addi $8, $8, 12
      sw $9, 0($8)
      addi $8, $8, 500
      sw $9, 0($8)
      addi $8, $8, 16
      sw $9, 0($8)
      addi $8, $8, 496
      sw $9, 0($8)
      addi $8, $8, 12
      sw $9, 0($8)
      addi $8, $8, 500
      sw $9, 0($8)
      addi $8, $8, 8
      sw $9, 0($8)
      addi $8, $8, -2052
       add $13, $0, $0
      j tempo_nave
      
tempo_nave: addi $13, $13, 1
	beq $13, 100000000, verificar_nave
     
verificar_nave:beq $12, 0, nave_direita
      beq $12, 1, nave_esquerda
      
nave_direita:addi $8, $8, 4
	addi $11, $11, 1
	beq $11, 80, preparo_nave_esquerda
	j nave

nave_esquerda:addi $8, $8, -4
	addi $11, $11, 1
	beq $11, 80, preparo_nave_direita
	j nave

preparo_nave_direita: addi $12, $0, 0
	add $11, $0, $0
	j nave_direita

preparo_nave_esquerda: addi $12, $0, 1
      	add $11, $0, $0
      	j nave_esquerda

fim: nop
	
	
