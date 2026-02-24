/// @description Insert description here
// You can write your code in this editor


mover_jogador = function()
{
	var _cima, _baixo, _esquerda, _direita;
	
	_cima = keyboard_check(vk_up)
	_baixo = keyboard_check(vk_down)
	_esquerda = keyboard_check(vk_left)
	_direita = keyboard_check(vk_right)
	
	var _velocidade_horizontal = (_direita - _esquerda) * velocidade
	x += _velocidade_horizontal
	
	var _velocidade_vertical = (_baixo - _cima) * velocidade
	y += _velocidade_vertical
}