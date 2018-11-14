-- Al-Fahad Abdul-Mumuni
--DELETE STATEMENT FOR THE MOST CONTROVERSIAL EMPLOYEE
-- first inner join comments and statuses table on status_id alias AS T
--- join employee table to the table T on employee_id and select the employee email
-- DELETE from employee table where the email = the email selected from the joint/subquery TABLE T5

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
