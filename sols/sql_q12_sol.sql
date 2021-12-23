SELECT 
    sc.country_abbr, pm.posi_to_play, COUNT(*) AS goals
FROM
    goal_details gd
        JOIN
    player_mast pm ON pm.player_id = gd.player_id
        JOIN
    soccer_country sc ON sc.country_id = pm.team_id
GROUP BY 1 , 2
ORDER BY 1 , 2;
-- Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.
-- make goals table main