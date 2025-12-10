PRAGMA foreign_keys = ON;

CREATE TABLE Users (
    user_id     INTEGER PRIMARY KEY AUTOINCREMENT,
    username    TEXT NOT NULL UNIQUE,
    email       TEXT UNIQUE,
    created_at  TEXT DEFAULT (datetime('now'))
);


CREATE TABLE Statuses (
    status_id   INTEGER PRIMARY KEY AUTOINCREMENT,
    name        TEXT NOT NULL UNIQUE
);

CREATE TABLE Genres (
    genre_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    name        TEXT NOT NULL UNIQUE,
    description TEXT
);

CREATE TABLE Books (
    book_id      INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id      INTEGER NOT NULL,
    status_id    INTEGER NOT NULL,
    title        TEXT NOT NULL,
    author       TEXT,
    total_pages  INTEGER,
    started_at   TEXT,
    finished_at  TEXT,
    created_at   TEXT DEFAULT (datetime('now')),

    FOREIGN KEY (user_id)   REFERENCES Users(user_id)   ON DELETE CASCADE,
    FOREIGN KEY (status_id) REFERENCES Statuses(status_id)
);


CREATE TABLE Book_Genres (
    book_id   INTEGER NOT NULL,
    genre_id  INTEGER NOT NULL,

    PRIMARY KEY (book_id, genre_id),
    FOREIGN KEY (book_id)  REFERENCES Books(book_id)   ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id) ON DELETE CASCADE
);

CREATE TABLE Reading_Sessions (
    session_id       INTEGER PRIMARY KEY AUTOINCREMENT,
    book_id          INTEGER NOT NULL,
    session_date     TEXT NOT NULL, 
    pages_read       INTEGER NOT NULL, 
    duration_minutes INTEGER,
    note             TEXT,

    FOREIGN KEY (book_id) REFERENCES Books(book_id) ON DELETE CASCADE
);


CREATE INDEX idx_books_user      ON Books(user_id);
CREATE INDEX idx_books_status    ON Books(status_id);

CREATE INDEX idx_sessions_book   ON Reading_Sessions(book_id);

CREATE INDEX idx_book_genres_g   ON Book_Genres(genre_id);
