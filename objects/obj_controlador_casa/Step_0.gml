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
    show_debug_message("lembrou da chave do banheiro")
}

if (global.lembrancas_encontradas[2]) {
    show_debug_message("lembrou da chave do quintal")
}

if (global.lembrancas_encontradas[3]) {
    show_debug_message("lembrou da chave da casa")
}