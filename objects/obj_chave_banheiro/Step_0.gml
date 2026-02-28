if (global.sombras_liberadas[1])
{
	instance_destroy()
}

if (!ativo) exit;

if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_jogador, false, true))
{
    if (keyboard_check_pressed(vk_enter))
    {
		var _texto = "A porta do banheiro está trancada, preciso lembrar onde deixei a chave."
		if (global.chaves_encontradas[1])
		{
			_texto = "Aew, aberta!"
			audio_play_sound(snd_sfx_porta_banheiro, 0, 0)
			global.sombras_liberadas[1] = true
		}
		
        scr_mostrar_dialogo(_texto);
		
		ativo = false
		
		alarm[0] = game_get_speed(gamespeed_fps) * 5;
    }
}