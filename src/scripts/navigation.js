let accessToken;
window.onload = () => {
    accessToken = localStorage.getItem('access_token');
    const logoutLinks = document.querySelectorAll('.logout');
    logoutLinks.forEach(link => {
        link.addEventListener('click', () => {
            localStorage.removeItem('access_token');
            window.location.href = '/';
        });
    });
    updateNavLinks();
};

window.onresize = () => {
    updateNavLinks();
};

const updateNavLinks = () => {
    const loginHori = document.getElementById('login-hori');
    const logoutHori = document.getElementById('logout-hori');
    const loginVert = document.getElementById('login-vert');
    const logoutVert = document.getElementById('logout-vert');
    const width = window.innerWidth;
    
    if (accessToken) {
        if (width < 600) {
            loginHori.style.display = 'none';
            logoutHori.style.display = 'none';
            loginVert.style.display = 'none';
            logoutVert.style.display = 'block';
        } else {
            loginHori.style.display = 'none';
            logoutHori.style.display = 'inline-block';
            loginVert.style.display = 'none';
            logoutVert.style.display = 'none';
        }
    } else {
        if (width < 600) {
            loginHori.style.display = 'none';
            logoutHori.style.display = 'none';
            loginVert.style.display = 'block';
            logoutVert.style.display = 'none';
        } else {
            loginHori.style.display = 'inline-block';
            logoutHori.style.display = 'none';
            loginVert.style.display = 'none';
            logoutVert.style.display = 'none';
        }
    }
}