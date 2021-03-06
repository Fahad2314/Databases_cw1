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
SELECT COUNT(event_id) as 'Number of Events in Feb'
FROM events 
WHERE MONTH(event_date) = 2
GROUP BY event_type;

-- How much each employee is commenting 4.5
SELECT employee_id, COUNT(comment_id) AS 'Number of Comments'
FROM employee
LEFT JOIN comments ON employee_id = comment_creator_id
GROUP BY employee_id;


-- TOP 2 employees by Status and email 4.6 Top two parcipating 
-- UNION joining tables counting statuses and comments for each employee as Table T
--LIMIT 2 ensures that only the top 2 results will be returned
-- join tables in subquery on employee_id order in DESC order

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


-- MOST  CONTROVERSIAL EMPLOYEE 4.7


SELECT * FROM
    employee AS e
    INNER JOIN 
        (SELECT *
        FROM 
            (SELECT comment_creator_id,COUNT(comment_id) AS 'Comment Count',status_id                  
            FROM comments                  
            GROUP BY status_id                  
            ORDER BY COUNT(comment_id) DESC,status_id) AS T
            LIMIT 1) AS T2 
    ON e.employee_id= comment_creator_id;
            
