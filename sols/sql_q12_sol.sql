SELECT 
    COUNT(*) AS goals, pm.posi_to_play, sc.country_abbr
FROM
    soccer_country sc
        JOIN
    player_mast pm ON sc.country_id = pm.team_id
        JOIN
    goal_details gd ON pm.player_id = gd.player_id
GROUP BY posi_to_play , country_abbr