global.ultima_posicao_player.x = x
global.ultima_posicao_player.y = y

if (pause_ativo) exit;

// Pause
if (keyboard_check_pressed(vk_escape) && global.player_pode_mover)
{
    if (!instance_exists(obj_pause_casa))
    {
        instance_create_layer(0, 0, "controladores", obj_pause_casa);
        pause_ativo = true;
    }
}

if (global.player_pode_mover)
{
	mover_jogador()
}
else
{
	if (sprite_index != spr_jogador_parado)
	{
		sprite_index = spr_jogador_parado;
		image_index = 0;
	}
	image_speed = 0;
}