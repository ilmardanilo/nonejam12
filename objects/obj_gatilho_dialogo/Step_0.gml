// CONTROLE DE ESTADOS DE DIÁLOGO

if (estado == 1)
{
    if (!obj_dialogo.ativo)
    {
		var _text = ""
		switch (global.chave_atual)
        {
            case 0: _text = "Ai... minha cabeça..."; break;
            case 1: _text = "Espera... eu já vivi isso antes..."; break;
            case 2: _text = "Está ficando mais claro... eu consigo ver..."; break;
            case 3: _text = "Agora eu acho que lembro... de tudo."; break;
        }
        scr_mostrar_dialogo(_text);
        estado = 2;
    }
    exit;
}

if (estado == 2)
{
    if (!obj_dialogo.ativo)
    {
		transicao_ativa = true;
        estado = 3;
    }
    exit;
}

if (estado == 3)
{
	global.player_precisa_encontrar_chave_antes_de_voltar_a_interagir = true;
	
	var _zoom = 1 + (transicao_alpha * 0.15);
	camera_set_view_size(
	    view_camera[0],
	    camera_get_view_width(view_camera[0]) / _zoom,
	    camera_get_view_height(view_camera[0]) / _zoom
	);
	
    if (transicao_ativa)
    {
        transicao_alpha += 0.04;

        if (transicao_alpha >= 1)
        {
            switch (global.chave_atual)
            {
                case 0: room_goto(rm_mente_fase_1); break;
                case 1: room_goto(rm_mente_fase_2); break;
                case 2: room_goto(rm_mente_fase_3); break;
                case 3: room_goto(rm_mente_fase_4); break;
            }
        }
    }

    exit;
}

if (!ativo) exit;

if (global.objetos_interagidos[$id_interacao])
{
    instance_destroy();
    exit;
}

if (global.player_precisa_encontrar_chave_antes_de_voltar_a_interagir && !possui_chave)
{
    exit;
}

// INTERAÇÃO
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_jogador, false, true))
{
    if (keyboard_check_pressed(vk_enter))
    {
        scr_mostrar_dialogo(texto);
        ativo = false;

        global.objetos_interagidos[$id_interacao] = true;

        // SE FOR CHAVE
        if (possui_chave)
        {
            audio_play_sound(snd_sfx_get_key, 0, 0);

            global.chaves_encontradas[chave - 1] = true;
            global.chave_atual++;
            global.interacoes_atuais = 0;
            global.player_precisa_encontrar_chave_antes_de_voltar_a_interagir = false;
			
			var _sprite_chave = spr_chave_1
			switch (chave)
			{
			    case 1: _sprite_chave = spr_chave_1; break;
			    case 2: _sprite_chave = spr_chave_2; break;
			    case 3: _sprite_chave = spr_chave_3; break;
			    case 4: _sprite_chave = spr_chave_4; break;
			}
			
			if (!instance_exists(obj_chave_popup))
			{
				var _inst = instance_create_layer(0, 0, "controladores", obj_chave_popup);
				_inst.sprite_index = _sprite_chave;
			}

            instance_destroy();
            exit;
        }


        /// SE NÃO FOR CHAVE INCREMENTA INTERAÇÃO
        global.interacoes_atuais++;

        if (global.interacoes_atuais >= global.total_interacoes_por_chave[global.chave_atual])
        {
            estado = 1; // começa fluxo de transição para o mundo da mente
        }
        else
        {
            instance_destroy();
        }
    }
}