SELECT 
    pm.player_name
FROM
    player_in_out pi
        JOIN
    player_mast pm USING (player_id)
WHERE
    pi.in_out = 'I' AND pi.play_half = 1
        AND pi.play_schedule = 'NT';