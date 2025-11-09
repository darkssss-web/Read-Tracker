const readingStats = [
  { month: 'Сентябрь', books: 2 },
  { month: 'Октябрь', books: 3 },
  { month: 'Ноябрь', books: 4 },
  { month: 'Декабрь', books: 1 },
];

function renderStats() {
  const app = document.getElementById('app');
  app.innerHTML = `
    <h2>Статистика чтения</h2>
    <canvas id="statsChart" width="400" height="200" aria-label="График чтения"></canvas>
  `;

  const ctx = document.getElementById('statsChart').getContext('2d');

  ctx.fillStyle = '#0d6efd';
  const max = Math.max(...readingStats.map(r => r.books));
  const barWidth = 60;
  readingStats.forEach((r, i) => {
    const barHeight = (r.books / max) * 150;
    ctx.fillRect(60 * i + 40, 180 - barHeight, barWidth, barHeight);
    ctx.fillText(r.month, 60 * i + 40, 195);
  });
}

window.addEventListener('hashchange', () => {
  if (location.hash === '#/stats') renderStats();
});
window.addEventListener('DOMContentLoaded', () => {
  if (location.hash === '#/stats') renderStats();
});
