if (global.sombras_liberadas[0]) {
    layer_set_visible("fg_sombra_1", false); //quarto
}

if (global.sombras_liberadas[1]) {
    layer_set_visible("fg_sombra_2", false); //banheiro
}

if (global.sombras_liberadas[2]) {
    layer_set_visible("fg_sombra_3", false); //quintal
}

if (global.lembrancas_encontradas[0] && !global.lembrou_chave_quarto)
{
	marcar_sala_cozinha_concluida()
    scr_mostrar_dialogo("LEMBREI! A chave do quarto acho que está no rack onde fica a TV!");
    global.lembrou_chave_quarto = true;
    
    if (instance_exists(inst_rack))
    {
        inst_rack.ativo = true;
    }
}

if (global.lembrancas_encontradas[1] && !global.lembrou_chave_banheiro) {
	marcar_sala_cozinha_concluida()
	marcar_quarto_concluido()
    scr_mostrar_dialogo("LEMBREI! Claro... eu enfiei a chave embaixo da cama como se fosse um cofre secreto.")
    global.lembrou_chave_banheiro = true;
    
    if (instance_exists(inst_embaixo_cama))
    {
        inst_embaixo_cama.ativo = true;
    }
}

if (global.lembrancas_encontradas[2] && !global.lembrou_chave_quintal) {
	marcar_sala_cozinha_concluida()
	marcar_quarto_concluido()
	marcar_banheiro_concluido()
    scr_mostrar_dialogo("LEMBREI! A chave está na lixeira do banheiro. Eu definitivamente preciso dormir mais.")
    global.lembrou_chave_quintal = true;
    
    if (instance_exists(inst_lixeira))
    {
        inst_lixeira.ativo = true;
    }
}

if (global.lembrancas_encontradas[3] && !global.lembrou_chave_casa) {
	marcar_sala_cozinha_concluida()
	marcar_quarto_concluido()
	marcar_banheiro_concluido()
	marcar_quintal_concluido()
    scr_mostrar_dialogo("LEMBREI! No fim das contas eu fiz coisa de filme mesmo... a chave está no tapete da entrada.")
    global.lembrou_chave_casa = true;
    
    if (instance_exists(inst_tapete_entrada))
    {
        inst_tapete_entrada.ativo = true;
    }
}