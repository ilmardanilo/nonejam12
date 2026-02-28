if (!ativo) exit;

if (global.objetos_interagidos[$id_interacao])
{
	instance_destroy()
	exit
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
		}
		
		global.objetos_interagidos[$id_interacao] = true
        instance_destroy();
    }
}