// Back to Top functionality
const backToTopBtn = document.getElementById('backToTop');

window.addEventListener('scroll', () => {
    if (window.pageYOffset > 300) {
        backToTopBtn.classList.remove('opacity-0', 'translate-y-10', 'invisible');
        backToTopBtn.classList.add('opacity-100', 'translate-y-0', 'visible');
    } else {
        backToTopBtn.classList.add('opacity-0', 'translate-y-10', 'invisible');
        backToTopBtn.classList.remove('opacity-100', 'translate-y-0', 'visible');
    }
});

backToTopBtn.addEventListener('click', () => {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
});
