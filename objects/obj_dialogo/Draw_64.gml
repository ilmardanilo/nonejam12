if (!ativo) exit;

var _w = display_get_gui_width();
var _h = display_get_gui_height();

var _margem = 40;
var _altura_caixa = 150;

var _x1 = _margem;
var _y1 = _h - _altura_caixa - _margem;
var _x2 = _w - _margem;
var _y2 = _h - _margem;

// fundo escurecido
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(_x1, _y1, _x2, _y2, false);
draw_set_alpha(1);

// texto
draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(_x1 + 20, _y1 + 20, texto_exibido);