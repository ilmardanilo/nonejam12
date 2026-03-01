var _w = display_get_gui_width();
var _h = display_get_gui_height();

draw_set_font(fnt_tutorial);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _base_y = _h * 0.70;
var _amplitude = 1.5;
var _velocidade = 1;
var _outline = 1; // espessura do contorno

draw_set_alpha(alpha_tutorial);

// Quebra o texto em linhas
var _lines = string_split(texto, "\n");

for (var _l = 0; _l < array_length(_lines); _l++)
{
    var _line = _lines[_l];
    
    var _line_width = string_width(_line);
    var _x = (_w - _line_width) * 0.5;
    var _y = _base_y + _l * (string_height("A") + 6);
    
    var _char_x = _x;
    
    for (var _i = 1; _i <= string_length(_line); _i++)
    {
        var _char = string_char_at(_line, _i);
        
        var _offset = sin(tempo_onda * _velocidade + _i * 0.25) * _amplitude;
        var _draw_y = _y + _offset;
        
        // Contorno preto
        draw_set_color(c_black);
        draw_text(_char_x - _outline, _draw_y, _char);
        draw_text(_char_x + _outline, _draw_y, _char);
        draw_text(_char_x, _draw_y - _outline, _char);
        draw_text(_char_x, _draw_y + _outline, _char);
        
        // Texto principal
        draw_set_color(c_white);
        draw_text(_char_x, _draw_y, _char);
        
        _char_x += string_width(_char);
    }
}

draw_set_alpha(1);