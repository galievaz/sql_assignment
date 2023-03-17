SELECT
		user_id
FROM 
        campaign_comms_user_level 
GROUP BY
		user_id
HAVING	
		COUNT(DISTINCT(campaign_id))>=5 AND (COUNT(converted)/COUNT(*))>0.75;