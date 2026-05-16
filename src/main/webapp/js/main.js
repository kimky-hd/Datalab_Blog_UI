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

// Accordion functionality for Sidebar
document.addEventListener('DOMContentLoaded', () => {
    const accordionItems = document.querySelectorAll('.accordion-item');

    accordionItems.forEach(item => {
        const header = item.querySelector('.accordion-header');
        const content = item.querySelector('.accordion-content');
        const icon = item.querySelector('.accordion-icon');

        if (header && content && icon) {
            header.addEventListener('click', () => {
                // Check if currently open
                const isOpen = !content.classList.contains('hidden');

                // Close all
                accordionItems.forEach(otherItem => {
                    const otherContent = otherItem.querySelector('.accordion-content');
                    const otherIcon = otherItem.querySelector('.accordion-icon');
                    if (otherContent && otherIcon) {
                        otherContent.classList.add('hidden');
                        otherIcon.classList.remove('rotate-180');
                    }
                });

                // If it was not open, open it
                if (!isOpen) {
                    content.classList.remove('hidden');
                    icon.classList.add('rotate-180');
                }
            });
        }
    });
});
