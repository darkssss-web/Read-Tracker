# Read-Tracker API Documentation

## Mock Server URL
https://5b12d35e-8766-42d7-bb60-3055d4bafd55.mock.pstmn.io

---

## Endpoints

### Authentication
- POST /auth/login – авторизация пользователя

### Books
- GET /books – получить список книг
- POST /books – добавить книгу
- PATCH /books?id={id} – обновить книгу
- DELETE /books?id={id} – удалить книгу

### Genres
- GET /genres – получить список жанров (deleted=true/false)

---

## Examples

### Login
**Name:** Success – Login  
**URL:** {{base_url}}/auth/login?username=darkssss  

**Name:** Error – Invalid credentials  
**URL:** {{base_url}}/auth/login?username=wronguser

---

### Get All Books
**Name:** Success – With books  
**URL:** {{base_url}}/books?status=reading  

**Name:** Success – Empty list  
**URL:** {{base_url}}/books?status=finished

---

### Create Book
**Name:** Success – Book created  
**URL:** {{base_url}}/books?title="Гарри Поттер"  

**Name:** Error – Validation failed  
**URL:** {{base_url}}/books?title  

**Name:** Error – Duplicate title  
**URL:** {{base_url}}/books?title="Гарри Поттер"

---

### Update Book
**Name:** Success – Book updated  
**URL:** {{base_url}}/books?id=3  

**Name:** Error – Book not found  
**URL:** {{base_url}}/books?id=9999

---

### Delete Book
**Name:** Success – Book deleted  
**URL:** {{base_url}}/books?id=3  

**Name:** Error – Book not found  
**URL:** {{base_url}}/books?id=9999

---

### Get Genres
**Name:** Success – Active genres  
**URL:** {{base_url}}/genres?deleted=false  

**Name:** Success – Deleted genres  
**URL:** {{base_url}}/genres?deleted=true
