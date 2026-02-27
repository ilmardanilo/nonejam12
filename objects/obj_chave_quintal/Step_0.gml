if (global.sombras_liberadas[2])
{
	instance_destroy()
}

if (!ativo) exit;

if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_jogador, false, true))
{
    if (keyboard_check_pressed(vk_enter))
    {
		var _texto = "A porta do quintal está trancada, preciso encontrar a chave."
		if (global.chaves_encontradas[2])
		{
			_texto = "Agora posso ver se deixei a chave de casa lá fora"
		}
        scr_mostrar_dialogo(_texto);
		if (global.chaves_encontradas[2])
		{
			global.sombras_liberadas[2] = true
		}
		
		ativo = false
		
		alarm[0] = game_get_speed(gamespeed_fps) * 5;
    }
}