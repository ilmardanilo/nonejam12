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
    
	var _palavras = string_split(_line, " ");
	var _char_x = _x;

	for (var _p = 0; _p < array_length(_palavras); _p++)
	{
	    var _palavra = _palavras[_p];
	    var _cor_atual = c_white;
    
	    // verifica se é tecla
	    for (var _t = 0; _t < array_length(teclas_destaque); _t++)
	    {
	        if (_palavra == teclas_destaque[_t])
	        {
	            _cor_atual = cor_tecla;
	            break;
	        }
	    }
    
	    // desenha palavra caractere por caractere (mantendo onda)
	    for (var _i = 1; _i <= string_length(_palavra); _i++)
	    {
	        var _char = string_char_at(_palavra, _i);
	        var _offset = sin(tempo_onda * _velocidade + _i * 0.25) * _amplitude;
	        var _draw_y = _y + _offset;

	        // contorno
	        draw_set_color(c_black);
	        draw_text(_char_x - _outline, _draw_y, _char);
	        draw_text(_char_x + _outline, _draw_y, _char);
	        draw_text(_char_x, _draw_y - _outline, _char);
	        draw_text(_char_x, _draw_y + _outline, _char);

	        // texto principal
	        draw_set_color(_cor_atual);
	        draw_text(_char_x, _draw_y, _char);

	        _char_x += string_width(_char);
	    }

	    // espaço entre palavras
	    _char_x += string_width(" ");
	}
}

draw_set_alpha(1);