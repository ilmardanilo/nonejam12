function scr_mostrar_dialogo(_texto)
{
    with (obj_dialogo)
    {
        ativo = true;
        visible = true;

        texto = _texto;
        texto_exibido = "";
        indice = 0;

        finalizado = false;

        // trava player
        global.player_pode_mover = false;
    }
}