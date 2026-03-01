if (room == rm_casa)
{
    texto = "Use as SETAS para se mover\nPressione ENTER para interagir\nESC para pausar";
}
else if (room == rm_mente_fase_1)
{
    texto = "Use as SETAS para se mover\nPressione R para reiniciar\nESC para pausar";
}
else
{
    texto = "";
}

teclas_destaque = ["SETAS", "ENTER", "ESC", "R"];
cor_tecla = make_color_rgb(231, 85, 151);

tempo_onda = 0;

alpha_tutorial = 0;
alpha_target = 0.85;
fade_speed = 0.08;

removendo = false;
timer_remover = -1;