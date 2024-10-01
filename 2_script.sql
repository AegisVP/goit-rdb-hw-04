-- 2. Seed the database

INSERT INTO authors (author_name) VALUES 
("author1"),
("author2"),
("author3"),
("author4"),
("author5");

INSERT INTO genres (genre_name) VALUES 
("genre1"),
("genre2"),
("genre3"),
("genre4"),
("genre5");

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
("book title 01", 2010, 1, 1),
("book title 02", 2011, 5, 2),
("book title 03", 2012, 4, 3),
("book title 04", 2013, 3, 2),
("book title 05", 2014, 2, 4),
("book title 06", 2015, 1, 5),
("book title 07", 2016, 5, 3),
("book title 08", 2017, 4, 2),
("book title 09", 2018, 3, 1),
("book title 10", 2019, 2, 1),
("book title 11", 2020, 1, 2),
("book title 12", 2021, 3, 5);

INSERT INTO users (username, email) VALUES 
("user1", "user1@email.com"),
("user2", "user2@email.com"),
("user3", "user3@email.com"),
("user4", "user4@email.com"),
("user5", "user5@email.com");

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-09-15', '2024-10-15'),
(2, 1, '2024-09-16', '2024-10-16'),
(3, 2, '2024-09-17', '2024-10-17'),
(4, 2, '2024-09-18', '2024-10-18'),
(5, 3, '2024-09-19', '2024-10-19'),
(6, 3, '2024-09-20', '2024-10-20'),
(7, 4, '2024-09-21', '2024-10-21'),
(8, 4, '2024-09-22', '2024-10-22'),
(9, 4, '2024-09-23', '2024-10-23'),
(10, 5, '2024-09-24', '2024-10-24');
