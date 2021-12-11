SELECT
*
FROM
    (SELECT
        sc.country_name, COUNT(*) AS num_refs
    FROM
        asst_referee_mast rm
    JOIN match_details md ON md.ass_ref = rm.ass_ref_id
    JOIN soccer_country sc ON rm.country_id = sc.country_id
    GROUP BY 1
    ORDER BY 2 DESC) t1
LIMIT 1;