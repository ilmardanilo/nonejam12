tempo--;

if (tempo <= 0)
{
	obj_barra_lembranca.alpha = 1;
	global.player_pode_mover = true;
    instance_destroy();
}
else
{
	global.player_pode_mover = false;
}