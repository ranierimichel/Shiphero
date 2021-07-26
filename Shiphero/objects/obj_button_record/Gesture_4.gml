/// @description Animação
event_inherited();

//// Mostrando leaderboard
if achievement_available()
    {
    achievement_show_leaderboards()
	achievement_show_achievements()
    }
else
    {
    if !achievement_login_status()
        {
        achievement_login();
        }
    }

//room_goto(rm_records);



