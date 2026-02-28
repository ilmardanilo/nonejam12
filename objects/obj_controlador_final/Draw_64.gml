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
    draw_text(display_get_gui_width()/2,
              display_get_gui_height()/2,
              "Obrigado por jogar.");
}