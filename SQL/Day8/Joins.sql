CREATE DATABASE MovieDB;
USE MovieDB;
CREATE TABLE Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL
);
CREATE TABLE Directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50)
);
CREATE TABLE Actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    actor_name VARCHAR(100) NOT NULL,
    gender VARCHAR(20),
    age INT
);
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_name VARCHAR(150) NOT NULL,
    release_date DATE,
    duration INT,
    language VARCHAR(50),
    genre_id INT,
    director_id INT,

    FOREIGN KEY (genre_id)
        REFERENCES Genres(genre_id),

    FOREIGN KEY (director_id)
        REFERENCES Directors(director_id)
);
CREATE TABLE MovieActors (
    movie_id INT,
    actor_id INT,

    PRIMARY KEY (movie_id, actor_id),

    FOREIGN KEY (movie_id)
        REFERENCES Movies(movie_id),

    FOREIGN KEY (actor_id)
        REFERENCES Actors(actor_id)
);
CREATE TABLE Theaters (
    theater_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_name VARCHAR(150) NOT NULL,
    location VARCHAR(200),
    city VARCHAR(100)
);
CREATE TABLE Screens (
    screen_id INT PRIMARY KEY AUTO_INCREMENT,
    theater_id INT,
    screen_name VARCHAR(50),
    total_seats INT,

    FOREIGN KEY (theater_id)
        REFERENCES Theaters(theater_id)
);
CREATE TABLE Shows (
    show_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    screen_id INT,
    show_date DATE,
    show_time TIME,
    ticket_price DECIMAL(10,2),

    FOREIGN KEY (movie_id)
        REFERENCES Movies(movie_id),

    FOREIGN KEY (screen_id)
        REFERENCES Screens(screen_id)
);
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    show_id INT,
    booking_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    booking_status VARCHAR(30) DEFAULT 'Confirmed',

    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id),

    FOREIGN KEY (show_id)
        REFERENCES Shows(show_id)
);
CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    seat_number VARCHAR(10),
    ticket_price DECIMAL(10,2),

    FOREIGN KEY (booking_id)
        REFERENCES Bookings(booking_id),

    UNIQUE (booking_id, seat_number)
);
INSERT INTO Genres (genre_name)
VALUES
('Action'),
('Comedy'),
('Drama'),
('Thriller');
INSERT INTO Directors (director_name, nationality)
VALUES
('Lokesh Kanagaraj', 'Indian'),
('Mani Ratnam', 'Indian'),
('Atlee', 'Indian');
INSERT INTO Actors (actor_name, gender, age)
VALUES
('Vijay', 'Male', 52),
('Suriya', 'Male', 51),
('Trisha', 'Female', 43),
('Nayanthara', 'Female', 41);
INSERT INTO Movies
(movie_name, release_date, duration, language, genre_id, director_id)
VALUES
('Action Hero', '2026-07-10', 150, 'Tamil', 1, 1),
('Love Story', '2026-06-15', 140, 'Tamil', 3, 2),
('City Fighter', '2026-08-01', 155, 'Tamil', 1, 3);
INSERT INTO MovieActors (movie_id, actor_id) VALUES
(1, 1),
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 4);
INSERT INTO Theaters
(theater_name, location, city)
VALUES
('PVR Cinemas', 'Phoenix Mall', 'Chennai'),
('INOX', 'Express Avenue', 'Chennai'),
('AGS Cinemas', 'OMR Road', 'Chennai');
INSERT INTO Screens
(theater_id, screen_name, total_seats)
VALUES
(1, 'Screen 1', 200),
(1, 'Screen 2', 150),
(2, 'Screen 1', 180),
(3, 'Screen 1', 250);
INSERT INTO Shows
(movie_id, screen_id, show_date, show_time, ticket_price)
VALUES
(1, 1, '2026-08-10', '10:00:00', 250.00),
(1, 1, '2026-08-10', '18:00:00', 300.00),
(2, 2, '2026-08-10', '14:00:00', 200.00),
(3, 3, '2026-08-11', '19:00:00', 300.00);
INSERT INTO Customers
(customer_name, email, phone)
VALUES
('Arun', 'arun@gmail.com', '9876543210'),
('Priya', 'priya@gmail.com', '9876543211'),
('Rahul', 'rahul@gmail.com', '9876543212');
INSERT INTO Bookings
(customer_id, show_id, total_amount, booking_status)
VALUES
(1, 1, 500.00, 'Confirmed'),
(2, 2, 300.00, 'Confirmed'),
(3, 3, 200.00, 'Pending');
INSERT INTO Tickets
(booking_id, seat_number, ticket_price)
VALUES
(1, 'A1', 250.00),
(1, 'A2', 250.00),
(2, 'B5', 300.00),
(3, 'C10', 200.00);
-- task 1
select m.movie_name,g.genre_name from Movies m  inner join Genres g  on m.genre_id=g.genre_id;
-- task 2
select m.movie_name,d.director_name name from Movies m inner join Directors d on m.director_id=d.director_id;
-- task 3
SELECT m.movie_name,a.actor_name FROM Movies m INNER JOIN MovieActors ma ON m.movie_id = ma.movie_id INNER JOIN Actors a ON ma.actor_id = a.actor_id;
-- task 4
SELECT
    Customers.customer_name,
    Movies.movie_name,
    Theaters.theater_name
FROM Customers
INNER JOIN Bookings
    ON Customers.customer_id = Bookings.customer_id
INNER JOIN Shows
    ON Bookings.show_id = Shows.show_id
INNER JOIN Movies
    ON Shows.movie_id = Movies.movie_id
INNER JOIN Screens
    ON Shows.screen_id = Screens.screen_id
INNER JOIN Theaters
    ON Screens.theater_id = Theaters.theater_id;
    -- Task 5
SELECT
    Customers.customer_name,
    Movies.movie_name,
    Tickets.ticket_price,
    Tickets.seat_number
FROM Customers
INNER JOIN Bookings
    ON Customers.customer_id = Bookings.customer_id
INNER JOIN Tickets
    ON Bookings.booking_id = Tickets.booking_id
INNER JOIN Shows
    ON Bookings.show_id = Shows.show_id
INNER JOIN Movies
    ON Shows.movie_id = Movies.movie_id;
DESC Movies;
desc Actors;