CREATE TABLE employee
    (
    employee_id INT(11) NOT NULL AUTO_INCREMENT,
    emp_name VARCHAR(45) NOT NULL,
    emp_surname VARCHAR(45) NOT NULL,
    emp_sex ENUM('Male','Female','Prefer Not to Say') NOT NULL,
    emp_dob DATE NOT NULL,
    emp_email VARCHAR(45) NOT NULL,
    PRIMARY KEY (employee_id),
    UNIQUE KEY (employee_id)
    );

CREATE TABLE statuses
    (
    status_id INT(11) NOT NULL AUTO_INCREMENT,
    creator_id INT(11) NOT NULL ,
    status_text VARCHAR(150) NOT NULL,
    status_timestamp DATETIME,
    PRIMARY KEY (status_id),
    FOREIGN KEY (creator_id) REFERENCES employee(employee_id)
    ON DELETE CASCADE
    );

CREATE TABLE events
    (
    event_id INT(11) NOT NULL AUTO_INCREMENT,
    event_creator_id  INT(11) NOT NULL,
    event_type ENUM('Social','Business') NOT NULL,
    event_description VARCHAR(150) NOT NULL,
    event_date DATE NOT NULL,
    event_time TIME NOT NULL,
    event_location VARCHAR(150),
    PRIMARY KEY (event_id),
    FOREIGN KEY (event_creator_id) REFERENCES employee(employee_id)
    ON DELETE CASCADE
    );

CREATE TABLE comments
    (
    comment_id INT(11) NOT NULL AUTO_INCREMENT,
    comment_creator_id INT(11) NOT NULL,
    status_id INT (11) NOT NULL,
    comment_text VARCHAR(250) NOT NULL,
    comment_timestamp DATETIME NOT NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (comment_creator_id) REFERENCES employee(employee_id)
    ON DELETE CASCADE,
    FOREIGN KEY (status_id) REFERENCES statuses(status_id)
    ON DELETE CASCADE
    );

CREATE TABLE likeStatus 
    (
    employee_id INT(11) NOT NULL,
    status_id INT(11) NOT NULL,
    PRIMARY KEY (employee_id,status_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
    ON DELETE CASCADE,
    FOREIGN KEY (status_id) REFERENCES statuses(status_id)
    ON DELETE CASCADE,

    )

CREATE TABLE likeComment(
    employee_id INT(11) NOT NULL,
    comment_id INT(11) NOT NULL,
    PRIMARY KEY (employee_id,comment_id),
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
    ON DELETE CASCADE,
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id)
    ON DELETE CASCADE
    );
