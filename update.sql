--AL-FAHAD ABDUL-MUMUNI

-- 5.1 Change events that after 17:00 to Social 
UPDATE events 
SET event_type = "Social" 
WHERE event_time > "17:00:00";

--5.2 Update events so that the comment timestamp is equal to +1 second timestamp time

UPDATE comments c
INNER JOIN statuses s ON c.status_id = s.status_id
SET c.comment_timestamp = s.status_timestamp + TIME('00:00:01')
WHERE s.status_timestamp > c.comment_timestamp;


