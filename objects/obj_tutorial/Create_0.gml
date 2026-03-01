if (room == rm_casa)
{
    texto = "Use as setas para se mover\nPressione ENTER para interagir\nEsc para pausar";
}
else if (room == rm_mente_fase_1)
{
    texto = "Use as setas para se mover\nPressione R para reiniciar\nEsc para pausar";
}
else
{
    texto = "";
}

tempo_onda = 0;

alpha_tutorial = 0;
alpha_target = 0.85;
fade_speed = 0.08;

removendo = false;
timer_remover = -1;