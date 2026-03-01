if ((room == rm_casa && global.viu_tutorial_casa) ||
    (room == rm_mente_fase_1 && global.viu_tutorial_mente))
{
    instance_destroy();
    exit;
}


tempo_onda += 0.05;

if (!removendo)
{
    alpha_tutorial = lerp(alpha_tutorial, alpha_target, fade_speed);
    
    if (keyboard_check_pressed(vk_anykey))
    {
		global.viu_balao = true;
        removendo = true;
        timer_remover = game_get_speed(gamespeed_fps) * 3;
    }
}
else
{
    timer_remover--;
    
    alpha_tutorial = lerp(alpha_tutorial, 0, 0.02);
    
    if (timer_remover <= 0)
    {
		
		if (room == rm_casa)
		{
			global.viu_tutorial_casa = true
		}
		if (room == rm_mente_fase_1)
		{
			global.viu_tutorial_mente = true
		}
        instance_destroy();
    }
}