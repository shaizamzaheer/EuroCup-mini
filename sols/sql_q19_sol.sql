SELECT DISTINCT
    pm.player_name
FROM
    match_details md
        JOIN
    match_captain mc ON md.match_no = mc.match_no
        AND md.player_gk = mc.player_captain
        JOIN
    player_mast pm ON mc.player_captain = pm.player_id;
