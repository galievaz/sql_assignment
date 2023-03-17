SELECT

	campaign_id,
    
    1.0*COUNT (CASE WHEN campaign_comms_user_level.opened_email THEN 1 END)/ COUNT (CASE WHEN campaign_comms_user_level.date_sent THEN 1 ELSE 1 END) AS ratio_opened_sent_email 

FROM 

    campaign_comms_user_level 

WHERE 

    campaign_id IS NOT NULL 

GROUP BY 

    campaign_id
    
ORDER BY ratio_opened_sent_email DESC
LIMIT 1;