SELECT 

    campaign_id, 

    COUNT (CASE WHEN campaign_comms_user_level.opened_email=1 THEN 1 END) AS opened_email, 

    COUNT (CASE WHEN  campaign_comms_user_level.clicked_on_link=1 THEN 1 END) AS clicked_on_link, 

    COUNT (CASE WHEN campaign_comms_user_level.visited_landing_page=1 THEN 1 END) AS visited_landing_page,
    
    COUNT (CASE WHEN campaign_comms_user_level.converted=1 THEN 1 END) AS converted 

FROM 

    campaign_comms_user_level 

WHERE 

    campaign_id IS NOT NULL 

GROUP BY 

    campaign_id;