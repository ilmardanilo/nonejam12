/// @description Insert description here
// You can write your code in this editor

sprite_index = spr_jogador_parado;
image_speed = 0;


mover_jogador = function()
{
	var _cima, _baixo, _esquerda, _direita;
	
	_cima = keyboard_check(vk_up);
	_baixo = keyboard_check(vk_down);
	_esquerda = keyboard_check(vk_left);
	_direita = keyboard_check(vk_right);
	
	var _velocidade_horizontal = (_direita - _esquerda) * velocidade;
	var _velocidade_vertical = (_baixo - _cima) * velocidade;
	
	move_and_collide(_velocidade_horizontal, _velocidade_vertical, obj_parede_invisivel)
	
	var _movendo = (_velocidade_horizontal != 0 || _velocidade_vertical != 0);
	
	
	if (_movendo)
	{
		if (sprite_index != spr_jogador_andando)
		{
			sprite_index = spr_jogador_andando;
			image_index = 0;
		}
		image_speed = 0.7;
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