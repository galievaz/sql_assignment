CREATE TABLE campaign_comms(
  date INTEGER,
  campaign_id INTEGER,
   user_id INTEGER,
  event VARCHAR(20)
);

INSERT INTO campaign_comms VALUES (20180722, 183946, 657464654, 'opened_email');
INSERT INTO campaign_comms VALUES (20130801, 421564, 6874654651, 'clicked_on_link');

CREATE TABLE campaign_comms_user_level AS 
	SELECT date AS date_sent, campaign_id, user_id, 
      SUM (CASE WHEN event = 'opened_email' THEN 1 ELSE 0 END) AS opened_email,
      SUM (CASE WHEN event  = 'clicked_on_link' THEN 1 ELSE 0 END) AS clicked_on_link,
      SUM (CASE WHEN event  = 'visited_landing_page' THEN 1 ELSE 0 END) AS visited_landing_page,
      SUM (CASE WHEN event  = 'converted' THEN 1 ELSE 0 END) AS converted
     FROM campaign_comms
     GROUP BY user_id;

SELECT * FROM campaign_comms_user_level;