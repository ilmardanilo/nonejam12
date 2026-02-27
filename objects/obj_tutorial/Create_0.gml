if (room == rm_casa)
{
    texto = "Use as setas para se mover\nPressione ENTER para interagir";
}
else if (room == rm_mente_fase_1)
{
    texto = "Use as setas para se mover\nPressione R para reiniciar";
}
else
{
    texto = "";
}

tempo_onda = 0;

alpha_tutorial = 0;
alpha_target = 0.85;
fade_speed = 0.05;

removendo = false;
timer_remover = -1;