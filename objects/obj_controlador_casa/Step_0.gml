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
    scr_mostrar_dialogo("LEMBREI! A chave do quarto acho que está no rack onde fica a TV!");
    global.lembrou_chave_quarto = true;
    
    if (instance_exists(inst_407D5EDF))
    {
        inst_407D5EDF.ativo = true;
    }
}

if (global.lembrancas_encontradas[1]) {
    show_debug_message("LEMBREI! Claro… eu enfiei a chave embaixo da cama como se fosse um cofre secreto.")
}

if (global.lembrancas_encontradas[2]) {
    show_debug_message("LEMBREI! A chave está na lixeira do banheiro. Eu definitivamente preciso dormir mais.")
}

if (global.lembrancas_encontradas[3]) {
    show_debug_message("LEMBREI! No fim das contas eu fiz coisa de filme mesmo… a chave está no tapete da entrada.")
}