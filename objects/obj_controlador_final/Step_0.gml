switch (estado)
{
    case 0:
        // espera 5 segundos
        timer++;
        if (timer >= game_get_speed(gamespeed_fps) * 5)
        {
            scr_mostrar_dialogo("Ué... tem alguma coisa no meu bolso...");
            estado = 1;
        }
    break;

    case 1:
        // espera fechar dialogo
        if (!obj_dialogo.ativo)
        {
			global.player_pode_mover = false
			obj_barra_lembranca.alpha = 0
            estado = 2;
            timer = 0;
        }
    break;

    case 2:
        // mostra receita por 30 segundos
        timer++;
        if (timer >= game_get_speed(gamespeed_fps) * 30)
        {
			scr_mostrar_dialogo("Cadê a chave...?");
            estado = 3;
        }
    break;

    case 3:
        // espera fechar o segundo diálogo
        if (!obj_dialogo.ativo)
        {
            estado = 4;
        }
    break;

    case 4:
        // fade escuro
        alpha += 0.01;
        if (alpha >= 1)
        {
            alpha = 1;
            estado = 5;
        }
    break;
}