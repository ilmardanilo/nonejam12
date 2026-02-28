switch (estado)
{
    case 0:
        // espera 5 segundos
        timer++;
        if (timer >= game_get_speed(gamespeed_fps) * 5)
        {
            scr_mostrar_dialogo("Ué... tem alguma coisa no meu bolso...");
			
			audio_stop_all();
			audio_id = audio_play_sound(snd_final, 0, 1);
			audio_sound_gain(audio_id, 0, 0);
			audio_volume_atual = 0;
			
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
			audio_play_sound(snd_sfx_papel, 0, 0)
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

if (estado == 5)
{
    fim_timer++;

    if (fim_timer >= game_get_speed(gamespeed_fps) * 5)
    {
        mostrar_pressione = true;
    }

    if (mostrar_pressione)
    {
        if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any))
        {
            game_restart()
        }
    }
}
else
{
    fim_timer = 0;
    mostrar_pressione = false;
}

if (audio_id != -1)
{
    if (audio_volume_atual < audio_volume_final)
    {
        audio_volume_atual += audio_velocidade_fade;
        
        if (audio_volume_atual > audio_volume_final)
            audio_volume_atual = audio_volume_final;

        audio_sound_gain(audio_id, audio_volume_atual, 0);
    }
}