
--DELETE STATEMENT FOR THE MOST CONTROVERSIAL
DELETE employee 
FROM employee 
JOIN (SELECT comment_creator_id  
    FROM comments 
    GROUP BY status_id 
    ORDER BY COUNT(comment_id) DESC
    LIMIT 1) AS T
ON employee_id = comment_creator_id
AND (employee_id= comment_creator_id);
