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

//Pulsação da barra
var _target_scale = 1;
if (_percentual >= 100)
{
    // Pulsação forte
    _target_scale = 1 + (sin(current_time / 120) * 0.06);
}
else if (_percentual >= 75)
{
    // Pulsação leve
    _target_scale = 1 + (sin(current_time / 180) * 0.03);
}
else
{
    _target_scale = 1;
}

// suaviza transição
escala_atual = lerp(escala_atual, _target_scale, 0.15);

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