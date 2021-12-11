select player_mast.* from player_mast join soccer_country on team_id = country_id
where playing_club = 'Liverpool'
and country_name = 'England'

