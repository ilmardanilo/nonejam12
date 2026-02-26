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

if (keyboard_check(vk_space))
{
	scr_mostrar_dialogo("Será que deu bom?Será que deu bom?Será que deu bom?Será que deu bom?Será que deu bom?Será que deu bom?Será que deu bom?")
}