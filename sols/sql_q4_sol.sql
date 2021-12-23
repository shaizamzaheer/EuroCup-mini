SELECT 
    play_stage, in_out, COUNT(*)
FROM
    player_in_out,
    match_details
GROUP BY play_stage , in_out;

-- get stages and find out substitutions for each stage