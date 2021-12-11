select max(count) from (SELECT 
    pb.match_no, COUNT(*) AS count
FROM
    player_booked pb
GROUP BY pb.match_no
order by count desc) t1;