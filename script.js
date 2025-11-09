const books = [];

function renderBooks() {
  const app = document.getElementById('app');
  app.innerHTML = `
    <h2>Мои книги</h2>
    <div class="row">
      <input id="titleInput" type="text" placeholder="Название книги" />
      <input id="authorInput" type="text" placeholder="Автор" />
      <button onclick="addBook()">Добавить</button>
    </div>
    <ul id="bookList"></ul>
  `;

  const list = document.getElementById('bookList');
  books.forEach((b, i) => {
    const li = document.createElement('li');
    li.innerHTML = `
      <span>${b.title} — <em>${b.author}</em></span>
      <button onclick="deleteBook(${i})">Удалить</button>
    `;
    list.appendChild(li);
  });
}

function addBook() {
  const title = document.getElementById('titleInput').value.trim();
  const author = document.getElementById('authorInput').value.trim();

  if (!title || !author) {
    alert('Введите название и автора!');
    return;
  }

  books.push({ title, author });
  renderBooks();
}

function deleteBook(index) {
  books.splice(index, 1);
  renderBooks();
}

window.addEventListener('DOMContentLoaded', renderBooks);
