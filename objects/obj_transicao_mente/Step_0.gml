switch (estado)
{
    case 0:
        alpha += velocidade;

        if (alpha >= 1)
        {
            alpha = 1;
            room_goto(rm_casa);
            estado = 1;
        }
    break;
}