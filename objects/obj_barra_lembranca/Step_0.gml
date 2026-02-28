if (global.chave_atual >= array_length(global.total_interacoes_por_chave))
{
    sprite = spr_barra_lembranca_100;
    exit;
}

var _total_necessario = global.total_interacoes_por_chave[global.chave_atual];

var _percentual = 0;

if (_total_necessario > 0)
{
    _percentual = (global.interacoes_atuais / _total_necessario) * 100;
}

show_debug_message(string(_percentual));

if (_percentual <= 0)
    sprite = spr_barra_lembranca_0;
else if (_percentual <= 10)
    sprite = spr_barra_lembranca_10;
else if (_percentual <= 33)
    sprite = spr_barra_lembranca_33;
else if (_percentual <= 50)
    sprite = spr_barra_lembranca_50;
else if (_percentual <= 75)
    sprite = spr_barra_lembranca_70;
else if (_percentual <= 90)
    sprite = spr_barra_lembranca_90;
else
    sprite = spr_barra_lembranca_100;