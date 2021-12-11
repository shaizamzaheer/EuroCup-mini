-- select distinct posi_to_play from player_mast 'GK'
SELECT DISTINCT
    pm.player_name, pm.jersey_no
FROM
    player_mast pm
        JOIN
    soccer_country sc ON pm.team_id = sc.country_id
        JOIN
    match_details md ON md.team_id = sc.country_id
        AND md.player_gk = pm.player_id
WHERE
    pm.posi_to_play = 'GK'
        AND sc.country_name = 'Germany'
        AND md.play_stage = 'G';


