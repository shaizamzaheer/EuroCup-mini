SELECT 
    rm.referee_name, COUNT(DISTINCT pb.player_id) AS book_count
FROM
    referee_mast rm
        JOIN
    match_mast mm ON rm.referee_id = mm.referee_id
        JOIN
    player_booked pb ON mm.match_no = pb.match_no
GROUP BY rm.referee_id , referee_name
ORDER BY book_count DESC;