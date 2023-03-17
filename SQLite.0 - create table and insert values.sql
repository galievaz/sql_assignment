CREATE TABLE campaign_comms_user_level (
campaign_id INTEGER,
user_id INTEGER,
date_sent INTEGER,
opened_email INTEGER,
clicked_on_link INTEGER,
visited_landing_page INTEGER,
converted INTEGER);

INSERT INTO campaign_comms_user_level VALUES (183946, 68324, 20180705, 1, 1, 0, 0);
INSERT INTO campaign_comms_user_level VALUES (183946, 65715, 20180712, 1, 0, 0, 0);
INSERT INTO campaign_comms_user_level VALUES (421564, 46546, 20180702, 1, 1, 1, 1);
INSERT INTO campaign_comms_user_level VALUES (654654, 86451, 20180801, 0, 0, 0, 0);
INSERT INTO campaign_comms_user_level VALUES (421564, 65158, 20180807, 1, 0, 0, 0);

SELECT * FROM campaign_comms_user_level;



    
    