if (!ativo) exit;

// usa a área real do sprite escalado
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_jogador, false, true))
{
    if (keyboard_check_pressed(vk_enter))
    {
        scr_mostrar_dialogo(texto);
        ativo = false;
        instance_destroy();
    }
}