global.ultima_posicao_player.x = x
global.ultima_posicao_player.y = y

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