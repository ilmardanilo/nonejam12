if (!ativo) exit;

if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_jogador, false, true))
{
    if (keyboard_check_pressed(vk_enter))
    {
		var _texto = "A porta do quarto está trancada, preciso encontrar a chave."
		if (global.chaves_encontradas[0])
		{
			_texto = "Hehe, agora posso abrir!"
		}
        scr_mostrar_dialogo(_texto);
		if (global.chaves_encontradas[0])
		{
			global.sombras_liberadas[0] = true
			instance_destroy()
		}
		
		ativo = false
		
		alarm[0] = game_get_speed(gamespeed_fps) * 5;
    }
}