; Prompt de Texto
; DEPENDENCIAS: scanf.asm, printf.asm, malloc.asm

jmp main

block_addr_pos : var #1
dynamic_memory_block : var # 128
block_end_addr_pos : var #1
;---- Inicio do Programa Principal -----
main:
	; iniciando memoria dinamica ----
	loadn r7, #dynamic_memory_block ; addr inicial
	loadn r6, #block_end_addr_pos ; addr final
	call mem_move
	call mem_init
	; iniciando resolucoes da tela ----
	loadn r7, #40
	call drawing_screen_width
	; ----
	; iniciar processos
	call text_prompt_start
main_while_true:
	; loop dos processos
	call text_prompt_loop
	jmp main_while_true
	breakp
	halt

; corpo do prompt de texto ----
text_prompt_cursor : var #1
text_prompt_string_pointer : var #1
text_prompt_start:
	push r6
	push r7
	
	loadn r7, #41 ; tamanho do buffer de string
	call mem_calloc ; comeca com a string toda vazia

	loadn r6, #text_prompt_string_pointer
	storei r6, r7 ; grava em text_prompt_string_pointer o pointer da string alocada
	
	pop r7
	pop r6
	rts
text_prompt_last_char : var #1
text_prompt_loop:
	push r0 ; 0
	push r1 ; char c
	push r2 ; cursor
	push r3 ; char * s
	push r4 ; constantes quando necessario
	push r5 ; constantes quando necessario
	push r6 ; argumento e saida de rotinas
	push r7 ; argumento e saida de rotinas
	
	loadn r0, #0
	load r2, text_prompt_cursor
	load r3, text_prompt_string_pointer
	
	call get_char	
	; r7 tem o char, colocar em r1
	mov r1, r7
	
	text_prompt_loop_return_if_same_char_check:
		load r4, text_prompt_last_char
		cmp r1, r4
		jne text_prompt_loop_return_if_same_char_end ; c == last_char
	text_prompt_loop_return_if_same_char:
		jmp text_prompt_loop_return ; retornar mais cedo pois estamos com o botao segurado
	text_prompt_loop_return_if_same_char_end:
	
	text_prompt_loop_is_displayable_char_check:
		loadn r4, #40
		cmp r2, r4
		jeg text_prompt_loop_is_backspace_check ; cursor >= 40, alem da string
		loadn r4, #31
		loadn r5, #127
		cmp r1, r4
		jle text_prompt_loop_is_backspace_check
		cmp r1, r5
		jeg text_prompt_loop_is_backspace_check ; c <= 31 || c >= 127, nao eh char printavel
	text_prompt_loop_is_displayable_char:
		add r3, r3, r2
		storei r3, r1 ; *(s + cursor) = c
		inc r2
		store text_prompt_cursor, r2 ; grava o valor do cursor na memoria
		
		load r7, text_prompt_string_pointer
		call update_string_display
		
		jmp text_prompt_loop_is_displayable_char_end
	text_prompt_loop_is_backspace_check:
		loadn r4, #8
		cmp r1, r4
		jne text_prompt_loop_is_enter_check ; c == 8, eh o backspace
	text_prompt_loop_is_backspace:
		loadn r4, #1
		sub r2, r2, r4 ; subtracao de u_int (nao da underflow)
		store text_prompt_cursor, r2 ; grava o valor do cursor na memoria
		
		add r3, r3, r2
		storei r3, r0 ; *(s + cursor) = '\0'
		load r7, text_prompt_string_pointer

		call update_string_display
		
		jmp text_prompt_loop_is_displayable_char_end
	text_prompt_loop_is_enter_check:
		loadn r4, #13
		cmp r1, r4
		jne text_prompt_loop_is_displayable_char_end ; c == 13, eh o '\r' (teclado WHYYYYY)		
	text_prompt_loop_is_enter:
		load r7, text_prompt_string_pointer
		call display_string
		; alocar novamente o espaco para o text_promp_buffer
		loadn r7, #41 ; tamanho do buffer de string
		call mem_calloc
		loadn r6, #text_prompt_string_pointer
		store text_prompt_string_pointer, r7 ; grava em text_prompt_string_pointer o pointer da string alocada

		store text_prompt_cursor, r0 ; resetar o cursor para 0

		call update_string_display
		; TODO TODO TODO
		
	text_prompt_loop_is_displayable_char_end:

text_prompt_loop_return:
	store text_prompt_last_char, r1 ; last_char = c
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
; rotinas do prompt de texto
set_canvas_for_update_string_display:
	push r6
	push r7
	; configurando o canvas do update_string_display ----
	; setar o tamanho do canvas
	loadn r7, #40
	loadn r6, #1
	call canvas_set_resolution
	; setar a posicao da origem do canvas
	loadn r7, #0
	loadn r6, #28
	call canvas_set_origin
	; setar a posicao inicial do cursor do canvas
	loadn r7, #0
	loadn r6, #0
	call canvas_move_cursor_xy
	; ----
	pop r7
	pop r6
	rts
update_string_display:
	push r6 ; argumento de funcs
	push r7 ; ponteiro da string
	call set_canvas_for_update_string_display
	call canvas_clear
	; r7
	loadn r6, #0 ; branco
	call print_string
	; ----
	pop r7
	pop r6
	rts

display_string:
	push r6
	push r7 ; ponteiro da string
	call set_canvas_for_update_string_display
	call mem_free
	; TODO Printar a string no canvas legal
	;call mem_free ; libera o bloco de mem
	pop r7
	pop r6
	rts
; fim do prompt de texto

; rotinas do rpg de texto
; status: rendering, waiting
; rendering -> renderizando a imagem/texto, fazer uma linha por loop para nao bloquear muito o text_prompt
; waiting -> esperando a saida o text_prompt, quando receber muda, faz o processamento e muda para rendering

dating_sim_loop:


; ----- BIBLIOTECAS -----
; -----   MALLOC    -----
mem_move:		;  Rotina de setar o bloco de memoria a ser gerenciado pela biblioteca
				; Argumentos:
				; r7 = block_addr, endereco onde comeca o bloco de memoria
				; r6 = block_end_addr, endereco final do bloco de memoria gerenciado
				; Retorno: nenhum
	store block_addr_pos, r7
	store block_end_addr_pos, r6
	rts

mem_init:		; Rotina de inicializacao do bloco de memoria
				; Argumentos: nenhum
				; Retorno: nenhum
	push r0
	push r1
	loadn r0, #0
	load r1, block_addr_pos
	; Setando header do bloco inicial
	storei r1, r0 ; Seta a flag 'free'
	inc r1 ; Vai para o segundo elemento da struct
	load r0, block_end_addr_pos
	storei r1, r0
	; Seta next_block para o fim do bloco
	pop r1
	pop r0
	rts

mem_alloc:		; Rotina de alocacao dinamica de memoria
				; Argumentos:
				; r7 = desired_size, tamanho do espaco a ser alocado
				; Retorno:
				; r7 = ponteiro do espaco alocado, NULL caso nao tenha conseguido
	push r0 ; #0
	push r1 ; block_end_addr
	push r2 ; pos
	push r3 ; is_free
	push r4 ; next_block
	push r5 ; generic_alg
		
	loadn r0, #0
	; Procurando espaco disponivel
	load r1, block_end_addr_pos
	load r4, block_addr_pos ; next_block = block_addr
	; do {
mem_alloc_space_search_do_while:
	mov r2, r4 ; pos = next_block
	loadi r3, r2 ; is_free = *(pos)
	inc r2
	loadi r4, r2 ; next_block = *(pos + 1)
	dec r2 ; retorna pos para valor real
	; } while (next_block != block_end_addr -> se chegamos no ultimo bloco
	; && (!is_free -> caso o bloco esteja livre 
	; || ((next_block - pos - 2 != desired_size) -> se cabe exatamente no bloco
	; && (next_block - pos - 4 < desired_size) -> se ha como dar split no bloco
	;)));
	cmp r4, r1
	jeq mem_alloc_space_search_do_while_end ; next_block == block_end_addr -> chegamos no ultimo item, sair da busca 
	cmp r3, r0
	jne mem_alloc_space_search_do_while ; !is_free -> o bloco que estamos nao esta livre, continuar procurando
	loadn r5, #2
	sub r5, r4, r5 ; (next_block - 2)
	sub r5, r5, r2 ; (next_block - 2) - pos
	cmp r5, r7
	jeq mem_alloc_space_search_do_while_end ; (next_block - pos - 2 == desired_size), achamos um bloco usavel, sair
	dec r5
	dec r5 ; (next_block - pos - 2) - 2
	cmp r5, r7
	jeg mem_alloc_space_search_do_while_end ; (next_block - pos - 4 >= desired_size) -> bloco grande suficiente para slip, sair
	jmp mem_alloc_space_search_do_while ; o bloco nao eh util para alocacao exata, nem de split, continuar procurando
mem_alloc_space_search_do_while_end:
	; achamos um bloco ou chegamos no final
	; conferir se chegamos no final == sem memoria
	cmp r4, r1
	jne mem_alloc_alloc_memory ; nao estamos no fim, portanto eh um bloco alocavel
	cmp r3, r0
	jne mem_alloc_space_not_found ; estamos no fim, e nem ele esta livre, nao temos memoria
	loadn r5, #2
	sub r5, r4, r5 ; (next_block - 2)
	sub r5, r5, r2 ; (next_block - 2) - pos
	cmp r5, r7
	jeq mem_alloc_alloc_memory ; (next_block - pos - 2 == desired_size) -> o bloco final tem tamanho exato, podemos alocar ainda
	inc r7
	inc r7
	cmp r5, r7 ; para podermos fazer a comparacao (next_block - pos - 4 >= desired_size) na forma (next_block - pos - 2 >= desired_size + 2)
	dec r7
	dec r7 ; voltando o valor de r7 ao original
	jeg mem_alloc_alloc_memory ; (next_block - pos - 4 >= desired_size) -> bloco final grande suficiente para split, podemos alocar ainda
	; nao temos nem como ter alocacao exata, nem split, e chegamos no fim, retornar ponteiro NULL
mem_alloc_space_not_found:
	mov r7, r0 ; ponteiro de saida eh NULL
	jmp mem_alloc_return
mem_alloc_alloc_memory:
	; sabemos que o bloco atual eh proprio para alocacao
	; primeiro vemos se eh tamanho exato
	loadn r5, #2
	sub r5, r4, r5 ; (next_block - 2)
	sub r5, r5, r2 ; (next_block - 2) - pos
	cmp r5, r7
	jne mem_alloc_split_block ; (next_block - pos - 2) != desired_size -> o bloco atual eh para ser dado split
	; o bloco tem tamanho exato, apenas setar a flag de free e devolver o ponteiro
mem_alloc_exact_block:
	loadn r5, #2
	storei r2, r5 ; *(pos) = 2 -> flag de free setada como nao livre
	add r7, r2, r5 ; ponteiro de espaco alocado eh a pos + 2 de header
	jmp mem_alloc_return	
mem_alloc_split_block:
	; o bloco eh para ser dado split
	; atualizando o bloco atual ---
	loadn r5, #2
	storei r2, r5 ; *(pos) = 2 -> flag de free setada como nao livre
	add r5, r2, r5 ; (pos + 2)
	add r5, r5, r7 ; (pos + 2 + desired_size)
	inc r2
	storei r2, r5 ; *(pos + 1) = (pos + 2) + desired_size -> next_block do bloco atual apontando para o bloco a ser criado
	; criando o novo bloco ---
	storei r5, r0 ; *(pos + 2 + size) = 0 -> flag de free setada como livre, pois eh um novo bloco a ser alocado
	inc r5
	storei r5, r4 ; *(pos + 2 + size + 1) = next_block -> o novo bloco agora aponta para onde o atual estava apontando
	inc r2 ; agora r2 = pos + 2
	mov r7, r2 ; a saida tem o valor do ponteiro de pos + 2
	; fim da alocacao por split
mem_alloc_return:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

mem_empty:		; Rotina de setar toda a memoria em um bloco de memoria para 0
				; Argumentos:
				; r7 = memory_pointer, endereco da memoria a ser esvaziada
				; Retorno: nenhum
	push r0 ; 0
	push r1 ; next_block
	push r7 ; memory_pointer
	loadn r0, #0
	dec r7
	loadi r1, r7 ; carrega o ponteiro do proximo bloco de memoria
	inc r7 ; volta r7 ao valor do inicio desse bloco
mem_empty_loop_check:
	cmp r7, r1
	jeq mem_empty_loop_end ; while (memory_pointer != next_block)
mem_empty_loop:
	storei r7, r0 ; *memory_pointer = 0
	inc r7 ; memory_pointer++
	jmp mem_empty_loop_check
mem_empty_loop_end:
	pop r7
	pop r1
	pop r0
	rts

mem_calloc:		; Rotina de alocar memoria toda iniciada em 0
				; Argumentos:
				; r7 = desired_size, tamanho do espaco a ser alocado
				; Retorno:
				; r7 = ponteiro do espaco alocado, NULL caso nao tenha conseguido
	push r0 ; 0
	loadn r0, #0
	call mem_alloc
	cmp r7, r0 ; if (memory_pointer != NULL)
	jeq mem_calloc_allocation_failed
	call mem_empty ; colocar zeros no bloco de memoria alocado
mem_calloc_allocation_failed:
	pop r0
	rts

mem_free:		; Rotina de liberacao de memoria alocada
				; Argumentos:
				; r7 = memory_pointer, endereco da memoria alocada
				; Retorno: nenhum
	push r0
	push r1
	loadn r0, #0
	loadn r1, #2
	sub r1, r7, r1 ; Endereco da flag eh memory_pointer - 2
	storei r1, r0 ; Seta a flag 'free' do bloco de memoria
	pop r1
	pop r0
	rts

mem_defrag:		; Rotina de desfragmentacao de blocos de memoria livre
				; Argumentos: nenhum
				; Retorno: nenhum
	push r0 ; sempre 0
	push r1 ; block_end_addr_pos
	push r2 ; current_pos
	push r3 ; start_defrag_block_pos
	push r4 ; current_pos_free
	push r5 ; start_defrag_block_pos_free

	loadn r0, #0
	load r1, block_end_addr_pos
	load r2, block_addr_pos
	mov r3, r2 ; start_defrag_block_pos = block_addr

	; do {
mem_defrag_merging_blocks_do_while:
	loadi r5, r3 ; *(start_defrag_block_pos)
	loadi r4, r2 ; *(current_pos)
	
	cmp r4, r5
	jeq mem_defrag_found_new_defrag_block_end
	; nao achamos fim/inicio de bloco, pular o if	
mem_defrag_found_new_defrag_block:
	cmp r5, r0
	jne mem_defrag_merge_blocks_end
	; o bloco que achamos o fim eh de free, juntar eles
	mem_defrag_merge_blocks:
		inc r3
		storei r3, r2 ; *(start_block + 1) = current_pos -> junta os blocos free que sao seguidos
		dec r3 ; volta r3 ao valor original
	mem_defrag_merge_blocks_end:
	mov r3, r2 ; start_block = current_pos -> novo inicio de bloco de defragmentacao
mem_defrag_found_new_defrag_block_end:
	inc r2
	loadi r2, r2 ; current_pos = *(current_pos + 1) ; move para o proximo bloco
mem_defrag_merging_blocks_end_do_while:
	cmp r2, r1
	jne mem_defrag_merging_blocks_do_while
	; (current_pos != block_end_addr_pos) -> ha mais a ser possivelmente desfragmentado, ir para o proximo
	; ultima checagem, caso o conjunto final de blocos seja de free
	loadi r5, r3 ; *(start_defrag_block_pos)
	cmp r5, r0
	jne mem_defrag_merge_end_blocks
	; o bloco que achamos o fim eh de free, juntar eles
	mem_defrag_merge_end_blocks:
		inc r3
		storei r3, r2 ; *(start_block + 1) = current_pos -> junta os blocos free que sao seguidos
		dec r3 ; volta r3 ao valor original
	mem_defrag_merge_end_blocks_end:
mem_defrag_return:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
; -----   PRINTF    -----
screen_width: var #1
canvas_cursor_pos_x: var #1
canvas_cursor_pos_y: var #1
canvas_cursor_pos: var #1
canvas_resolution_x: var #1
canvas_resolution_y: var #1
canvas_start_pos_x: var #1
canvas_start_pos_y: var #1

drawing_screen_width:	; Rotina de setar a resolucao horizontal da tela
			; Argumentos:
			; r7 = screen_width, resolucao horizontal da tela
			; Retorno: nenhum
	store screen_width, r7
	rts


canvas_set_resolution:	; Rotina de setar a resolucao do canvas.
			; Argumentos:
			; r7 = res_x, resolucao em x
			; r6 = res_y, resolucao em y
			; Retorno: nenhum
	store canvas_resolution_x, r7
	store canvas_resolution_y, r6
	rts

canvas_set_origin:	; Rotina de setar a origem do canvas.
			; Argumentos:
			; r7 = pos_x, origem em x
			; r6 = pos_y, origem em y
			; Retorno: nenhum
	store canvas_start_pos_x, r7
	store canvas_start_pos_y, r6
	rts

canvas_move_cursor_xy:	; Rotina de mover o cursor do canvas por x e y.
			; Argumentos:
			; r7 = pos_x, pos em x
			; r6 = pos_y, pos em y
			; Retorno:
			; r7 = codigo de erro: 0 -> moveu; 1 -> x > resolucao_x; 2 -> y > resolucao_y
	push r0 ; constantes
	load r0, canvas_resolution_y
	cmp r6, r0
	jeg canvas_move_cursor_xy_y_too_big
	load r0, canvas_resolution_x
	cmp r7, r0
	jeg canvas_move_cursor_xy_x_too_big
	store canvas_cursor_pos_x, r7
	store canvas_cursor_pos_y, r6
	mul r0, r0, r6 ; pos_y * res_x
	add r7, r0, r7 ; x + y * res_x
	store canvas_cursor_pos, r7 ; guardar a posicao linear no canvas
	loadn r7, #0 ; conseguimos mover, colocar codigo 0
	jmp canvas_move_cursor_xy_return
canvas_move_cursor_xy_x_too_big:
	loadn r7, #1
	jmp canvas_move_cursor_xy_return
canvas_move_cursor_xy_y_too_big:
	loadn r7, #2
canvas_move_cursor_xy_return:
	pop r0
	rts

canvas_move_cursor:	; Rotina de mover o cursor do canvas.
			; Argumentos:
			; r7 = pos, posicao linear
			; Retorno:
			; r7 = codigo de erro: 0 -> moveu; 1 -> alem do fim do canvas
	push r0 ; consts
	push r6 ; pos_y
	load r0, canvas_resolution_x
	div r6, r7, r0 ; pos_y = pos / res_x
	mod r7, r7, r0 ; pos_x = pos % res_x
	call canvas_move_cursor_xy
	loadn r0, #0
	cmp r7, r0
	jeq canvas_move_cursor_return ; se o retorno de canvas_move_cursor_xy nao for 0, entao o valor a pos vai alem do canvas
canvas_move_cursor_too_big:
	loadn r7, #1
canvas_move_cursor_return:
	pop r6
	pop r0
	rts

canvas_clear:		; Rotina de limpar o canvas atual
			; Argumentos: nenhum
			; Retorno: nenhum
	push r0 ; 0
	push r1 ; pos_on_screen
	push r2 ; pos_x_on_canvas
	push r3 ; pos_y_on_canvas
	push r4 ; canvas_start_pos_x
	push r5 ; canvas_start_pos_y
	push r6 ; screen_width
	
	loadn r0, #0
	load r4, canvas_start_pos_x
	load r5, canvas_start_pos_y
	load r6, screen_width
	
	load r3, canvas_resolution_y ; carrega o tamanho de y no canvas
canvas_clear_loop_y_check: ; while (pos_y_on_canvas != 0) {
	cmp r3, r0
	jeq canvas_clear_loop_y_end
canvas_clear_loop_y:
	dec r3
	load r2, canvas_resolution_x ; carrega o tamanho de x no canvas
	canvas_clear_loop_x_check: ; while (pos_x_on_canvas != 0) {
		cmp r2, r0
		jeq canvas_clear_loop_x_end
	canvas_clear_loop_x:
		dec r2

		add r1, r3, r5
		mul r1, r1, r6
		add r1, r1, r4
		add r1, r1, r2
		; r1 = x + x0 + (y + y0) * W
		outchar r0, r1 ; desenha char vazio na pos de r1
		jmp canvas_clear_loop_x_check
	canvas_clear_loop_x_end: ; }
	jmp canvas_clear_loop_y_check
canvas_clear_loop_y_end: ; }
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

draw_char:		; Rotina de desenhar o caracter na posicao atual do cursor no canvas
			; Argumentos:
			; r7 = char, caracter para desenhar
			; r6 = color, cor do caracter
			; Retorno: nenhum
	push r0 ; consts e char com cor
	push r1 ; posicao para out_char
	load r1, canvas_cursor_pos_y
	load r0, canvas_start_pos_y
	add r1, r1, r0 ; (y + y0)
	load r0, screen_width
	mul r1, r1, r0 ; (y + y0) * W
	load r0, canvas_cursor_pos_x
	add r1, r1, r0 ; x + (y + y0) * W
	load r0, canvas_start_pos_x
	add r1, r1, r0 ; x + x0 + (y + y0) * W
	add r0, r7, r6 ; char_out = char + color
	outchar r0, r1 ; desenha char com cor color na pos (x + x0 + (y + y0) * W) 
	pop r1
	pop r0
	rts

print_char:		; Rotina de printar o caracter na posicao atual do cursor no canvas, e mover o cursor para a posicao seguinte
			; Argumentos:
			; r7 = char, caracter para printar
			; r6 = color, cor do caracter
			; Retorno: 
			; r7 = aviso de fim de canvas, setado caso printou na ultima posicao do buffer
	push r0; constantes
	push r6
	print_char_drawable_char_check:
		loadn r0, #31
		cmp r7, r0
		jle print_char_newline_check
		loadn r0, #127
		cmp r7, r0
		jeg print_char_newline_check
	print_char_drawable_char:
		call draw_char
		load r7, canvas_cursor_pos
		inc r7 ; canvas_cursor_pos + 1
		call canvas_move_cursor ; a rotina vai retornar 1 caso chegamos no fim, e ira andar o cursor um para frente
		jmp print_char_drawable_char_end
	print_char_newline_check:
		loadn r0, #10 ; /n
		cmp r7, r0
		jeq print_char_newline
		loadn r0, #13 ; /r
		jne print_char_drawable_char_end
	print_char_newline:
		loadn r7, #0
		load r6, canvas_cursor_pos_y
		inc r6 ; vai para o inicio da prox linha
		call canvas_move_cursor_xy
	print_char_drawable_char_end:
	pop r6
	pop r0
	rts

print_string:		; Rotina de printar uma string a partir da posicao atual
			; Argumentos:
			; r7 = char* s, endereco da string
			; r6 = color, cor da string
			; Retorno:
			; r7 = aviso de fim de canvas, setado caso chegamos ou tenhamos ultrapassado a ultima posicao do buffer, a string eh cortada caso ela ultrapasse
	push r0; 0
	push r1 ; char * s
	loadn r0, #0
	mov r1, r7
	loadi r7, r1 ; r7 tem o caracter
	cmp r7, r0 ; r7 == '\0'
	jeq print_string_return ; string vazia, nao printar nem mover cursor
print_string_loop:
	call print_char
	cmp r7, r0 ; r7 != 0, portanto fim de buffer
	jne print_string_return
	inc r1
	loadi r7, r1 ; proximo char
	cmp r7, r0
	jne print_string_loop ; r7 != '\0', continuar printando
	; se chegou aqui terminamos de printar sem chegar no fim, e r7 esta com 0 ('\0') 
print_string_return:
	pop r1
	pop r0
	rts

print_string_overflow:		; Rotina de printar uma string a partir da posicao atual, com overflow. Caso o fim seja atingido, ele parte da origem do canvas
			; Argumentos:
			; r7 = char* s, endereco da string
			; r6 = color, cor da string
			; Retorno: nenhum
	push r0; 0
	push r1 ; char * s
	push r7 ; char atual
	loadn r0, #0
	mov r1, r7
	loadi r7, r1 ; r7 tem o caracter
	cmp r7, r0 ; r7 == '\0'
	jeq print_string_overflow_return ; string vazia, nao printar nem mover cursor
print_string_overflow_loop:
	call print_char
	cmp r7, r0 ; r7 != 0, portanto fim de buffer, voltar cursor ao inicio
	jeq print_string_overflow_loop_reset_cursor_end
print_string_overflow_loop_reset_cursor:
	push r7
	mov r7, r0
	call canvas_move_cursor
	pop r7 ; push e pop mais facil do que de usar um novo registrador
print_string_overflow_loop_reset_cursor_end:
	inc r1
	loadi r7, r1 ; proximo char
	cmp r7, r0
	jne print_string_overflow_loop ; r7 != '\0', continuar printando
	; se chegou aqui terminamos de printar sem chegar no fim, e r7 esta com 0 ('\0') 
print_string_overflow_return:
	pop r7
	pop r1
	pop r0
	rts
; -----    SCANF    -----
get_char:		; Rotina de ler o char atualmente apertado. Nao bloqueante.
			; Argumentos: nenhum
			; Retorno:
			; r7 = char lido no teclado
	push r0
	inchar r7
	loadn r0, #255
	cmp r7, r0
	jne get_char_return
	loadn r7, #0 ; bug de fpga de ler 255 na primeira entrada, tratar portanto como um '\0'
get_char_return:
	pop r0
	rts

old_pressed_char : var #1
	static old_pressed_char + #0, #0
scan_char:		; Rotina de esperar um char ser apertado (ser diferente de '\0'). Bloqueante.
			; Argumentos: nenhum
			; Retorno:
			; r7 = char apertado no teclado
	push r0 ; '\0'
	push r1 ; old_pressed_char
	loadn r0, #0
	load r1, old_pressed_char
	loadn r7, #0 ; comeca como char nulo
scan_char_loop:
	call get_char
	cmp r7, r1
	mov r1, r7 ; ja comparou se eh igual, agora tomar o valor para si
	jeq scan_char_loop ; enquanto o char for igual ao anteriormente apertado, ficar no loop
	cmp r7, r0
	jeq scan_char_loop ; enquanto o char for '\0', ficar no loop
	store old_pressed_char, r1
	pop r1
	pop r0
	rts

scan_string:		; Rotina de esperar uma string ser enviada (ultimo char ser '\n'). Bloqueante.
			; Argumentos: 
			; r7 = char * s, endereco do buffer para a string
			; r6 = int max_size, tamanho maximo da string (nao incluindo '\0')
			; Retorno: nenhum
	push r0 ; guarda '\n', que eh condicao de parada, depois '\0' para inserir no fim da string
	push r1 ; char * s, endereco do char da string
	push r2 ; int size, tamanho da string, para nao ultrapassar o max_size
	push r7 ; pois scan_char retorna no r7, entao copiamos seu valor para r1, e protegemos r7 do caller
	mov r1, r7
	loadn r0, #13 ; '\n'
	loadn r2, #0
scan_string_loop:
	call scan_char
	storei r1, r7
	inc r1
	inc r2
	cmp r2, r6
	jgr scan_string_loop_end ; chegamos no tamaho maximo, sair
	cmp r7, r0
	jne scan_string_loop ; o char atual ainda nao eh '\n', continuar
scan_string_loop_end:
	loadn r0, #0
	storei r1, r0 ; sobreescreve o '\n'com um '\0'
	pop r7
	pop r2
	pop r1
	pop r0
	rts
