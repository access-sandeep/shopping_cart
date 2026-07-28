INSERT INTO user_details (id, name, email, password, registration_date_time) 
VALUES (10000, 'Sandeep Mukherji', 'sandeep.talk@gmail.com', 'admin123', current_date()),
(10001, 'Sujoy Mukherji', 'sujoy.talk@gmail.com', 'admin123', current_date()),
(10002, 'Sudeep Mukherji', 'sudeep.talk@gmail.com', 'admin123', current_date()),
(10003, 'Prarthana Mukherji', 'prarthana.talk@gmail.com', 'admin123', current_date());


INSERT INTO post (id, user_id, description) 
VALUES (10000, 10000, 'This is the first post of the first user'),
(10001, 10000, 'This is the second post of the first user'),
(10002, 10001, 'This is the first post of the second user'),
(10003, 10001, 'This is the second post of the second user');