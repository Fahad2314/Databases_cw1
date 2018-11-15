--AL-FAHAD ABDUL-MUMUNI

--Return name and email from employee
SELECT emp_name, emp_surname, emp_email
FROM employee;

--Return the oldest status text
SELECT status_text,status_timestamp FROM statuses
ORDER BY status_timestamp ASC LIMIT 1;

-- How many STATUSES, COMMENTS AND EVENTS
SELECT (
    SELECT COUNT(status_id)
    FROM statuses) AS 'Status Count',
    (
    SELECT COUNT(comment_id)
    FROM comments) AS 'Comment Count',
    (SELECT COUNT(event_id)
    FROM events) AS 'Event Count'
    ;
    
-- LIST THE TOTAL NUMBER OF EVENTS BY TYPE FOR MONTH OF FEBRUARY
/* converted month date to numerical so that any year that has dates in february 
will be counted rather than hardcoding time interval
*/
SELECT COUNT(event_id) as 'Number of Events'
FROM events 
WHERE MONTH(event_date) = 2
GROUP BY event_type;

-- How much each employee is commenting 4.5
SELECT employee_id, COUNT(comment_id) AS 'Number of Comments'
FROM employee
LEFT JOIN comments ON employee_id = comment_creator_id
GROUP BY employee_id;


-- TOP 2 employees by Status and email 4.6 Top two parcipating 
--UNION COUNTS OF STATUSES AND COMMENTS FOR EACH EMPLOYEE 
-- INNER JOIN TABLE RESULTS to employee table on employee_id

SELECT * FROM
    (SELECT * FROM employee e
    INNER JOIN
            (SELECT creator_id, SUM(Total) as Tot FROM
            (
                SELECT s.creator_id, COUNT(status_id) Total FROM statuses s
            GROUP BY s.creator_id
            UNION ALL
            SELECT c.comment_creator_id, COUNT(comment_id) Total FROM comments c
            GROUP BY c.comment_creator_id

            ) AS T
            GROUP BY creator_id
            ORDER BY SUM(Total) DESC
            LIMIT 2
            ) AS T2
    ON e.employee_id = creator_id) AS T3
    ORDER BY  Tot DESC;


-- MOST CONTROVERSIAL EMPLOYEE


SELECT T3.employee_id,T3.emp_name, T3.emp_surname, T3.emp_sex, T3.emp_dob, T3.emp_email, T3.Comment_Count, T3.status_id,l.status_id AS 'liked Status', event_id AS 'Event ', T3.event_type, T3.event_description, T3.event_date, T3.event_time, T3.event_location 
FROM     likeStatus l     
INNER JOIN              
    (SELECT * FROM              
        events p
        INNER JOIN
        (SELECT * FROM employee e
         INNER JOIN
            (SELECT COUNT(comment_id) AS 'Comment_Count',comment_creator_id , status_id
                   FROM comments
             GROUP BY status_id
                ORDER BY COUNT(comment_id) DESC
             LIMIT 1) AS T                 
         ON e.employee_id= comment_creator_id) AS T2
     ON p.event_creator_id=T2.employee_id) AS T3
     ON l.employee_id = T3.employee_id;

        
