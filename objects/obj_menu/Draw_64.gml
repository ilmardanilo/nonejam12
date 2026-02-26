var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

var _wgui = display_get_gui_width();
var _hgui = display_get_gui_height();

// FUNDO ESCURECIDO
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, _wgui, _hgui, false);
draw_set_alpha(1);

// CONFIG TEXTO
draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var _tam_menu = array_length(menu_inicial);

for (var _i = 0; _i < _tam_menu; _i++)
{
    var _largura_texto = string_width(menu_inicial[_i]);
    var _altura_texto = string_height(menu_inicial[_i]);

    var _x = _wgui / 2;
    var _y = _hgui / 2 + (_altura_texto + 20) * _i;

    var _x1 = _x - _largura_texto / 2;
    var _y1 = _y - _altura_texto / 2;
    var _x2 = _x + _largura_texto / 2;
    var _y2 = _y + _altura_texto / 2;

    if (point_in_rectangle(_mx, _my, _x1, _y1, _x2, _y2))
    {
        escala[_i] = lerp(escala[_i], 1.4, 0.15);

        if (mouse_check_button_pressed(mb_left))
        {
            switch (menu_inicial[_i])
            {
                case menu_inicial[0]:
                    room_goto(rm_casa);
                    break;

                case menu_inicial[1]:
                    game_end();
                    break;
            }
        }
    }
    else
    {
        escala[_i] = lerp(escala[_i], 1, 0.15);
    }

    // OUTLINE MANUAL
    draw_set_color(c_black);

    draw_text_transformed(_x - 2, _y, menu_inicial[_i], escala[_i], escala[_i], 0);
    draw_text_transformed(_x + 2, _y, menu_inicial[_i], escala[_i], escala[_i], 0);
    draw_text_transformed(_x, _y - 2, menu_inicial[_i], escala[_i], escala[_i], 0);
    draw_text_transformed(_x, _y + 2, menu_inicial[_i], escala[_i], escala[_i], 0);

    draw_set_color(c_white);
    draw_text_transformed(_x, _y, menu_inicial[_i], escala[_i], escala[_i], 0);
}

// RESET
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
draw_set_color(c_white);
draw_set_alpha(1);