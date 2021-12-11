SELECT
    pm.player_name
FROM
    player_mast pm
        JOIN
    goal_details gd ON pm.player_id = gd.player_id
WHERE
    pm.posi_to_play = 'DF'