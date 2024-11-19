document.getElementById('show-details-btn').addEventListener('click', () => {
    const details = document.getElementById('details');
    if (details.classList.contains('hidden')) {
      details.classList.remove('hidden');
      details.style.animation = 'fadeIn 0.5s';
    } else {
      details.classList.add('hidden');
    }
  });
  