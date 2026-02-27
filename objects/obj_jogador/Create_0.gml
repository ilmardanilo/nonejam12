/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_jogador_parado;
image_speed = 0;

x = global.ultima_posicao_player.x
y = global.ultima_posicao_player.y

bg_music = snd_casa
audio_stop_all()
audio_play_sound(bg_music, 0, 1)


mover_jogador = function()
{
	var _cima, _baixo, _esquerda, _direita;
	
	_cima = keyboard_check(vk_up);
	_baixo = keyboard_check(vk_down);
	_esquerda = keyboard_check(vk_left);
	_direita = keyboard_check(vk_right);
	
	var _velocidade_horizontal = (_direita - _esquerda) * velocidade;
	var _velocidade_vertical = (_baixo - _cima) * velocidade;
	
	var _x_antes = x;
	var _y_antes = y;
	
	move_and_collide(_velocidade_horizontal, _velocidade_vertical, obj_parede_invisivel)
	
	var _movendo = (x != _x_antes || y != _y_antes);
	
	
	if (_movendo)
	{
		if (sprite_index != spr_jogador_andando)
		{
			sprite_index = spr_jogador_andando;
			image_index = 0;
		}
		image_speed = 1;
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
	
	
	if (_velocidade_horizontal != 0)
	{
		image_xscale = sign(-_velocidade_horizontal);
	}
}