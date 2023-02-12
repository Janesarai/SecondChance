var nav = document.querySelector('nav'); 

        window.addEventListener('scroll', function() {
            if (window.pageYOffset > 100){
                nav.classList.add('bg-black', 'shadow');
            } else {
                nav.classList.remove('bg-black', 'shadow');
            }
        });
