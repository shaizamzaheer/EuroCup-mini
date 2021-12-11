SELECT * 
FROM match_details
WHERE 
goal_score = 1
  and win_lose = 'W'
  AND decided_by = 'N';