select match_no, country_name
from soccer_country
join match_details on match_details.team_id = soccer_country.country_id
where match_details.penalty_score in (
select max(penalty_score) from match_details);