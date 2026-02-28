lembrete_timer = 0;
lembrete_intervalo = game_get_speed(gamespeed_fps) * 30; // 30s

mostrar_lembrete = function(_condicao_memoria, _condicao_chave, _texto)
{
    if (_condicao_memoria && !_condicao_chave)
    {
        lembrete_timer++;

        if (lembrete_timer >= lembrete_intervalo)
        {
            if (!obj_dialogo.ativo)
            {
                scr_mostrar_dialogo(_texto);
                lembrete_timer = 0;
            }
        }
    }
}

marcar_sala_cozinha_concluida = function()
{
    global.objetos_interagidos.cabideiro = true;
    global.objetos_interagidos.fogao = true;
    global.objetos_interagidos.geladeira = true;
    global.objetos_interagidos.liquidificador = true;
    global.objetos_interagidos.pia = true;
    global.objetos_interagidos.mesa = true;
    global.objetos_interagidos.criado_mudo = true;
    global.objetos_interagidos.sofa = true;
}

marcar_quarto_concluido = function()
{
    global.objetos_interagidos.tapete = true;
    global.objetos_interagidos.guarda_roupa = true;
    global.objetos_interagidos.escrivaninha = true;
    global.objetos_interagidos.travesseiro = true;
}

marcar_banheiro_concluido = function()
{
    global.objetos_interagidos.tapete_banheiro = true;
    global.objetos_interagidos.privada = true;
    global.objetos_interagidos.pia_banheiro = true;
    global.objetos_interagidos.ralo = true;
}

marcar_quintal_concluido = function()
{
    global.objetos_interagidos.atras_arvore = true;
    global.objetos_interagidos.arbusto = true;
    global.objetos_interagidos.pedra = true;
}