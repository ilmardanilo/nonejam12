if (estado >= 2)
{
    draw_sprite(spr_receita_medica, 0, 0, 0);
}

if (estado >= 3)
{
    draw_set_alpha(alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
}

if (estado == 5)
{
    draw_set_font(fnt_pause_mente);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);

    var _w = display_get_gui_width();
    var _h = display_get_gui_height();

    var _cx = _w / 2;
    var _cy = _h / 2;

    draw_text(_cx, _cy, "Obrigado por jogar.");

    if (mostrar_pressione)
    {
        if (current_time div 500 mod 2 == 0)
        {
			draw_set_font(fnt_dialogo);
            draw_text(_cx, _h - 200, "Pressione qualquer botão para voltar ao menu");
        }
    }
}