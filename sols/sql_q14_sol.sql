SELECT 
    rm.referee_name, COUNT(*)
FROM
    referee_mast rm
        JOIN
    match_mast mm ON rm.referee_id = mm.referee_id
GROUP BY 1
ORDER BY 2 DESC