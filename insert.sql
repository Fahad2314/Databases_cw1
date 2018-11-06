INSERT INTO employee 
(employee_id,emp_name,emp_surname,emp_sex,emp_dob,emp_email)
VALUES (default,'Lebron','James','Male','1984-12-30','lbj23@gmail.com');

INSERT INTO employee
(employee_id,emp_name,emp_surname,emp_sex,emp_dob,emp_email)
VALUES (default, 'Cristiano','Ronaldo','Male','1985-02-05','cristiano7@gmail.com');

INSERT INTO employee
(employee_id,emp_name,emp_surname,emp_sex,emp_dob,emp_email)
VALUES (default, 'Serena','Williams','Female','1981-09-26','s.williams@gmail.com');

INSERT INTO statuses
(status_id, creator_id, status_text, status_timestamp)
VALUES (default,1,'Feels great to be playing in LA, excited for my future with the Lakers',
CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id,creator_id,status_text,status_timestamp)
VALUES (default,1,'Tough game last night in Portland, the boys showed great character to grind out the win!',
CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id, creator_id, status_text, status_timestamp)
VALUES (default,1,'Listening to that new Roddy Rich album while I warm up!!!',
CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id, creator_id, status_text, status_timestamp)
VALUES (default,2,'FORZA JUVE!!!!', CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id, creator_id, status_text, status_timestamp)
VALUES (default, 2, 'Big game against @United tomorrow, looking forward to returning to Old Trafford',
CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id, creator_id, status_text, status_timestamp)
VALUES (default, 2, 'Thanks for all the support, guys. Follow me on instagram at @cristianoronaldo',
CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id,creator_id,status_text,status_timestamp)
VALUES (default, 3, 'Looking forward to returning to Wimbledon in the summer!',
CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id,creator_id,status_text,status_timestamp)
VALUES (default,3, 'Being a new mother is a blessing, I love it !',
CURRENT_TIMESTAMP);

INSERT INTO statuses
(status_id,creator_id,status_text,status_timestamp)
VALUES (default,3, 'Love this time of year!',
CURRENT_TIMESTAMP);

INSERT INTO comments
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default, 2,1,'Congratulations bro !',
CURRENT_TIMESTAMP);

INSERT INTO comments
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,3,1,'Congraulations Lebron, that is amazing',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,2,2,'Really exciting game had me on the edge of my seat',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,1,2,'Thanks Cristiano, you should come watch live sometime!',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,3,3,'You should listen to his first tape, I love it',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,1,3,'I did not think you would be a fan of @RoddyRich',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,1,4,'Looking forward to seeing what you do at Juve bro',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,2,4,'Hahaha so am I bro ',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,3,5,'Good luck Ronnie!',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,2,5,'Thank you Serena x',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,1,6,'Check your instagram direct messages',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,2,6,'Hahaha sounds good to me lets meet up in LA this summer?',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,1,7,'And I am looking forward to seeing you back in action',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,2,7,'That makes the two of us @LebronJames',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,3,7,'Aww you guys are so sweet x',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,1,8,'Happy for you Serena, nothing like being a parent',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,2,8,'Agreed nothing like having children, he is my biggest achievement ',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,1,9,'It is waaaaaay too cold. Brrrr',
CURRENT_TIMESTAMP);

INSERT INTO comments 
(comment_id, comment_creator_id,status_id,comment_text,comment_timestamp)
VALUES (default,2,9,'Hahaha maybe head to sunny Turin my friend?',
CURRENT_TIMESTAMP);


--Lebron likes for comments and statuses
INSERT INTO likeComment
(employee_id,comment_id)
VALUES (1,19);

INSERT INTO likeComment
(employee_id,comment_id)
VALUES (1,6);

INSERT INTO likeStatus
(employee_id,status_id)
VALUES(1,8);

INSERT INTO likeStatus
(employee_id,status_id)
VALUES (1,4);
-- Ronaldo likes for comments and statuses
INSERT INTO likeComment
(employee_id,comment_id)
VALUES (2,5);

INSERT INTO likeComment
(employee_id,comment_id)
VALUES (2,11);

INSERT INTO likeStatus
(employee_id,status_id)
VALUES(2,2);

INSERT INTO likeStatus
(employee_id,status_id)
VALUES (2,1);
-- Serena likes for statuses and comments
INSERT INTO likeComment
(employee_id,comment_id)
VALUES (3,13);

INSERT INTO likeComment
(employee_id,comment_id)
VALUES (3,16);

INSERT INTO likeStatus
(employee_id,status_id)
VALUES(3,3);

INSERT INTO likeStatus
(employee_id,status_id)
VALUES (3,1);

-- Events inserted into the events table
-- Social Events
INSERT INTO events
(event_id, event_creator_id, event_type, event_description, event_date, event_time, event_location)
VALUES (default, 1, 'Social','Catch up with Ronaldo & discuss Nike', '2018-11-14','15:00:00','Staples Center');

INSERT INTO events
(event_id, event_creator_id, event_type, event_description, event_date, event_time, event_location)
VALUES (default, 3, 'Social','Visit Ronaldo in Turin', '2018-11-20','00:00:00','Turin, Italy');

INSERT INTO events
(event_id, event_creator_id, event_type, event_description, event_date, event_time, event_location)
VALUES (default, 1, 'Social','Watch Serena play', '2019-09-07','12:00:00','Wimbeldon, London');

--Business events
INSERT INTO events
(event_id, event_creator_id, event_type, event_description, event_date, event_time, event_location)
VALUES (default, 1, 'Business','Shoot New Years Nike ad with Ronaldo and Serena', '2019-10-01','15:00:00','Nike Headquarters, Oregon');

INSERT INTO events
(event_id, event_creator_id, event_type, event_description, event_date, event_time, event_location)
VALUES (default, 2, 'Business','Discuss new menswear line with Lebron', '2019-03-01','12:00:00','Hilton, New York');

INSERT INTO events
(event_id, event_creator_id, event_type, event_description, event_date, event_time, event_location)
VALUES (default, 3, 'Business','Meet Lebron about new Nike contracts ', '2019-11-14','12:00:00','Los Angeles, Staples Center');
