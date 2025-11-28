INSERT INTO Users (username, email) VALUES
  ('alex_reader', 'alex@example.com'),
  ('maria_books', 'maria@example.com');

INSERT INTO Statuses (name) VALUES
  ('planned'),
  ('reading'),
  ('finished');

INSERT INTO Genres (name, description) VALUES
  ('Fantasy', 'Фэнтези и магия'),
  ('Non-fiction', 'Нон-фикшн, научпоп'),
  ('Classic', 'Классическая литература');


INSERT INTO Books (user_id, status_id, title, author, total_pages, started_at)
VALUES
  (1, 2, 'Властелин колец', 'Дж. Р. Р. Толкин', 1200, '2025-11-01'),
  (1, 1, 'Чистый код', 'Роберт Мартин', 450, NULL),
  (2, 3, 'Преступление и наказание', 'Ф. М. Достоевский', 700, '2025-09-10');

INSERT INTO Book_Genres (book_id, genre_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3);

INSERT INTO Reading_Sessions (user_id, book_id, session_date, pages_read, duration_minutes, note)
VALUES
  (1, 1, '2025-11-10 20:00', 40, 60, 'Читал вечером перед сном'),
  (1, 1, '2025-11-11 21:00', 35, 45, 'Продолжаю первую книгу'),
  (2, 3, '2025-10-01 19:30', 30, 50, 'Тяжело, но интересно');
