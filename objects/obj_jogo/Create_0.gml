if (instance_number(obj_jogo) > 1) {
    instance_destroy();
}

global.sombras_liberadas = [false, false, false];
global.lembrancas_encontradas = [false, false, false];
global.chaves_encontradas = [false, false, false, false];
global.player_pode_mover = true;