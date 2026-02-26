if (!movendo)
{
    var _cima = keyboard_check_pressed(vk_up);
    var _baixo = keyboard_check_pressed(vk_down);
    var _esquerda = keyboard_check_pressed(vk_left);
    var _direita = keyboard_check_pressed(vk_right);
    
    var _novo_dir_x = 0;
    var _novo_dir_y = 0;
    
    if (_cima)
    {
        _novo_dir_y = -1;
    }
    else if (_baixo)
    {
        _novo_dir_y = 1;
    }
    else if (_esquerda)
    {
        _novo_dir_x = -1;
    }
    else if (_direita)
    {
        _novo_dir_x = 1;
    }
    
    // Se alguma direção foi pressionada
    if (_novo_dir_x != 0 || _novo_dir_y != 0)
    {
        // Só começa a mover se NÃO houver parede imediatamente
        if (!place_meeting(x + _novo_dir_x, y + _novo_dir_y, obj_parede_invisivel))
        {
            dir_x = _novo_dir_x;
            dir_y = _novo_dir_y;
            movendo = true;
        }
    }
}

if (movendo)
{
    var _colisoes = move_and_collide(dir_x * velocidade, dir_y * velocidade, obj_parede_invisivel);

	if (array_length(_colisoes) > 0)
	{
		movendo = false;
		dir_x = 0;
		dir_y = 0;
	}
}

if (keyboard_check_pressed(ord("R")))
{
    room_restart();
}