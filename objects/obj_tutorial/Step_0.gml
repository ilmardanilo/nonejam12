tempo_onda += 0.05;

if (!removendo)
{
    alpha_tutorial = lerp(alpha_tutorial, alpha_target, fade_speed);
    
    if (keyboard_check_pressed(vk_anykey))
    {
        removendo = true;
        timer_remover = game_get_speed(gamespeed_fps) * 2;
    }
}
else
{
    timer_remover--;
    
    alpha_tutorial = lerp(alpha_tutorial, 0, 0.08);
    
    if (timer_remover <= 0)
    {
        instance_destroy();
    }
}