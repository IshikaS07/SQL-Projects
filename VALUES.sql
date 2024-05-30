-- Insert sample data into Directors table
INSERT INTO Directors (name, birthdate) VALUES 
('Steven Spielberg', '1946-12-18'),
('Christopher Nolan', '1970-07-30');

-- Insert sample data into Movies table
INSERT INTO Movies (title, release_year, genre, director_id) VALUES 
('Jurassic Park', 1993, 'Science Fiction', 1),
('Inception', 2010, 'Science Fiction', 2);

-- Insert sample data into Actors table
INSERT INTO Actors (name, birthdate) VALUES 
('Leonardo DiCaprio', '1974-11-11'),
('Jeff Goldblum', '1952-10-22');

-- Insert sample data into Movie_Actors table
INSERT INTO Movie_Actors (movie_id, actor_id) VALUES 
(1, 2),
(2, 1);

-- Insert sample data into Reviews table
INSERT INTO Reviews (movie_id, review_date, rating, comment) VALUES 
(1, '1993-06-11', 8.5, 'A thrilling adventure.'),
(2, '2010-07-16', 9.0, 'A mind-bending experience.');
