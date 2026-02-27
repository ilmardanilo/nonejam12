menu_inicial = ["Jogar", "Sair"]

offset_y = array_create(array_length(menu_inicial), 0);
brilho = array_create(array_length(menu_inicial), 0.7);

audio_stop_all()
audio_play_sound(snd_menu, 0, 1)