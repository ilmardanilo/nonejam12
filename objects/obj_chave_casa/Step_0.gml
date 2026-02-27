if (!ativo) exit;
if (finalizado) exit;

if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_jogador, false, true))
{
    if (keyboard_check_pressed(vk_enter))
    {
		var _texto = "Hmmm, está trancada... Onde será que eu deixei dessa vez?"
		if (global.chaves_encontradas[3])
		{
			_texto = "Abriu... Mas pera ai... O que eu ia fazer na rua mesmo?"
		}
        scr_mostrar_dialogo(_texto);
		
		finalizado = true
		ativo = false
		
		alarm[0] = game_get_speed(gamespeed_fps) * 5;
    }
}