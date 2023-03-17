SELECT 

    campaign_id, 

    1.0*COUNT (CASE WHEN campaign_comms_user_level.opened_email THEN 1 END)/ COUNT (CASE WHEN campaign_comms_user_level.date_sent THEN 1 ELSE 1 END) AS p_opened_email, 

    1.0*COUNT (CASE WHEN  campaign_comms_user_level.clicked_on_link THEN 1 END)/ COUNT (CASE WHEN campaign_comms_user_level.opened_email THEN 1 ELSE 1 END) AS p_clicked_on_link, 

    1.0*COUNT (CASE WHEN campaign_comms_user_level.visited_landing_page THEN 1  END)/ COUNT (CASE WHEN campaign_comms_user_level.clicked_on_link THEN 1 ELSE 1 END) AS p_visited_landing_page,
    
    1.0*COUNT (CASE WHEN campaign_comms_user_level.converted THEN 1 END)/ COUNT (CASE WHEN campaign_comms_user_level.visited_landing_page THEN 1 ELSE 1 END) AS p_converted 

FROM 

    campaign_comms_user_level 

WHERE 

    campaign_id IS NOT NULL 

GROUP BY 

    campaign_id;