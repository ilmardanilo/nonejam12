if (!ativo) exit;

// acelerar se segurando ENTER
var _vel = velocidade;

if (keyboard_check(vk_enter))
{
	_vel = velocidade_acelerada;
}

// efeito máquina de escrever
if (!finalizado)
{
    indice += _vel;

    if (indice >= string_length(texto))
    {
        indice = string_length(texto);
        finalizado = true;
    }

    texto_exibido = string_copy(texto, 1, indice);
}
else
{
    // se já terminou e apertar ENTER, fecha
    if (keyboard_check_pressed(vk_enter))
    {
        ativo = false;
        visible = false;

        global.player_pode_mover = true;
    }
}