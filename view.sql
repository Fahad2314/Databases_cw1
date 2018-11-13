CREATE VIEW future_events AS
SELECT * FROM events WHERE event_date > NOW()
WITH CHECK OPTION;

-- Statement to test rejection
INSERT INTO future_events(event_id, event_creator_id, event_type, event_description, event_date, event_time, event_location)
VALUES (default,1,'Social','Test event','2017-11-14','15:00:00','Test location');


/*For the purpose of the excercise we imagine that 
only datetimes which are in the future can be inserted
into the events table. However, in real life this would be 
enforced using a TRIGGER procedure which ensures only future
dates can be INSERTED into the events TABLE. */

-- Comments per user including user with no comments



