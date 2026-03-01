menu_inicial = ["Jogar", "Créditos", "Sair"];

mostrando_creditos = false;

offset_y = array_create(array_length(menu_inicial), 0);
brilho = array_create(array_length(menu_inicial), 0.7);

audio_stop_all()
audio_play_sound(snd_menu, 0, 1)

draw_creditos = function()
{
    var _wgui = display_get_gui_width();
    var _hgui = display_get_gui_height();

    // Fundo escurecido
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(0, 0, _wgui, _hgui, false);
    draw_set_alpha(1);

    draw_set_halign(fa_center);
    draw_set_valign(fa_top);

    var _y = 80;
    var _esp = 28;

    // titulo
    draw_set_font(fnt_menu);

    // sombra
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_text(_wgui/2 + 2, _y + 2, "Créditos");

    // texto principal
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(_wgui/2, _y, "Créditos");

    _y += 70;

    // conteudo
    draw_set_font(fnt_dialogo);

    var _linhas = [
        "",
        "",
        "Programação e Arte",
        "Ilmar Danilo",
        "",
        "Fonte",
        "Comic Relief - Jeff Davis",
        "",
        "Músicas",
        "Kevin MacLeod (incompetech.com)",
        "",
        "SFX",
        "OpenGameArt.org"
    ];

    for (var _i = 0; _i < array_length(_linhas); _i++)
    {
        var _txt = _linhas[_i];

        if (_txt == "")
        {
            _y += _esp * 0.7;
            continue;
        }

        // sombra
        draw_set_alpha(0.7);
        draw_set_color(c_black);
        draw_text(_wgui/2 + 2, _y + 2, _txt);

        // texto
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_text(_wgui/2, _y, _txt);

        _y += _esp;
    }

    // BOTÃO VOLTAR
    _y += 120;

    var _voltar = "Clique para voltar";
	
	if (current_time div 500 mod 2 == 0)
    {
        draw_text(_wgui/2 + 2, _y + 2, _voltar);
    }

    if (mouse_check_button_pressed(mb_left))
    {
        mostrando_creditos = false;
    }
}