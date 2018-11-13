
--DELETE STATEMENT FOR THE MOST CONTROVERSIAL

DELETE
FROM employee 
WHERE employee.emp_email = (SELECT asd FROM 
    (SELECT emp_email AS asd
                                FROM employee e 
                                INNER JOIN 
                                                (SELECT * FROM statuses s
                                                INNER JOIN 
                                                            (SELECT COUNT(comment_id) AS 'Comment Count', status_id AS s_id,comment_text
                                                                            FROM comments 
                                                                            GROUP BY s_id 
                                                                            ORDER BY COUNT(comment_id) DESC
                                                                            LIMIT 1) AS T
                                                ON s.status_id = T.s_id) AS T2
                                ON e.employee_id = T2.creator_id) AS T5 );
