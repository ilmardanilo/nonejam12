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

// usa a área real do sprite escalado
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_jogador, false, true))
{
    if (keyboard_check_pressed(vk_enter))
    {
        scr_mostrar_dialogo(texto);
        ativo = false;
		
		if (possui_chave) 
		{
			audio_play_sound(snd_sfx_get_key, 0, 0)
			global.chaves_encontradas[chave - 1] = true
		    global.chave_atual++;
		    global.interacoes_atuais = 0;
			global.player_precisa_encontrar_chave_antes_de_voltar_a_interagir = false;
		}
		
		global.objetos_interagidos[$id_interacao] = true
		
		if (!global.chaves_encontradas[global.chave_atual] && !possui_chave)
		{
		    global.interacoes_atuais++;

		    if (global.interacoes_atuais >= global.total_interacoes_por_chave[global.chave_atual])
		    {
				global.player_precisa_encontrar_chave_antes_de_voltar_a_interagir = true;
				
				switch (global.chave_atual)
	            {
	                case 0:
						room_goto(rm_mente_fase_1);
	                    break;

	                case 1:
						room_goto(rm_mente_fase_2);
	                    break;

	                case 2:
						room_goto(rm_mente_fase_3);
	                    break;

	                case 3:
						room_goto(rm_mente_fase_4);
	                    break;
	            }
		    }
		}

        instance_destroy();
    }
}