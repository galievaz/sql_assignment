SQL skills assessment: 

1.	You have the following table at disposal (called campaign_comms_user_level): 

    campaign_id 	user_id 	date_sent 	opened_ email 	clicked_on_ link 	visited_landing_ page 	converted 

      183946 	68324 	20180705 	1 	1 	0 	0 
      
      183946 	65715 	20180712 	1 	0 	0 	0 
      
      421564 	46546 	20180702 	1 	1 	1 	1 

      654654 	86451 	20180801 	0 	0 	0 	0 

      421564 	65158 	20180807 	1 	0 	0 	0 
      … 	… 	… 	… 	… 	… 	… 

  Write SQL queries to: 
  
    a.	Calculate a “funnel” per campaign (= ordered milestones with proportion of successes in each milestone based on the successes in the previous milestone).
  
    b.	Find the most successful campaign in terms of 
        i) proportion of opened (among sent) emails 
        ii) proportion of conversions among emails opened. 
    
    c.	Find all users who were contacted with at least 5 campaigns and 
        i) converted in more than 75% of cases 
        ii) never converted. 
 
2.	Regarding the metrics calculated in the previous task, is there any methodological issue / something we need to take care of? How would you assess the quality of the data stored in campaign_comms_user_level?
 
3.	Write an SQL script which creates the above table (campaign_comms_user_level) using only the information from the table below (called campaign_comms): 
 
    date 	campaign_id 	user_id 	event 
    
    20180722 	183946 	657464654 	opened_email 

    20180801 	421564 	6874654651 	converted 

      … 	… 	… 	… 
 
  Where event can have the following values:  
    •	‘email_sent’, ‘email_opened’, ‘clicked_on_link’, ‘visited_landing_page’, ‘converted’ 

 
