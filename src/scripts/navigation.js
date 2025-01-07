let refreshToken;
let uid;
window.addEventListener('load', () => {
    check_exp();
    refreshToken = localStorage.getItem('refresh_token');
    const logoutLinks = document.querySelectorAll('.logout');
    logoutLinks.forEach(link => {
        link.addEventListener('click', () => {
            localStorage.removeItem('access_token');
            localStorage.removeItem('refresh_token');
            window.location.href = '/';
        });
    });
    updateNavLinks();
});

window.addEventListener('resize', () => {
    updateNavLinks();
});

const updateNavLinks = () => {
    refreshToken = localStorage.getItem('refresh_token');
    const loginHori = document.getElementById('login-hori');
    const logoutHori = document.getElementById('logout-hori');
    const loginVert = document.getElementById('login-vert');
    const logoutVert = document.getElementById('logout-vert');
    const width = window.innerWidth;
    
    if (refreshToken) {
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

const check_exp = () => {
    refreshToken = localStorage.getItem('refresh_token'); 
    uid = sessionStorage.getItem('uid');

    if (uid) {
        return;
    } else if (refreshToken) {
        fetch(`${import.meta.env.PUBLIC_BASE_URL}get-expiration?refresh_token=${encodeURIComponent(refreshToken)}`, {
            method: 'GET',
            headers: {
            'Content-Type': 'application/json',
            },
        })
        .then(response => response.json())
        .then(data => {
            if (data.expires_at) {
                const expirationTime = new Date(data.expires_at);
                const currentTime = new Date();
                
                if (currentTime > expirationTime) {
                    localStorage.removeItem('refresh_token');
                    localStorage.removeItem('access_token');
                    updateNavLinks();
                } else {
                    sessionStorage.setItem('uid', data.user_id);
                    refresh(expirationTime, data.user_id);
                }
            } else if (data.error) {
                console.error("Error:", data.error);
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
    }
}

const refresh = (expirationTime, userId) => {
    const currentTime = new Date();
    const diffTime = expirationTime - currentTime;
    const diffDays = diffTime / (1000 * 3600 * 24);

    if (diffDays <= 6) {

        fetch(`${import.meta.env.PUBLIC_BASE_URL}refresh-discord`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                user_id: userId
            })
        })
        .then(discordResponse => discordResponse.json())
        .then(discordData => {
            if (discordData.message === "Discord token refreshed successfully.") {

                fetch(`${import.meta.env.PUBLIC_BASE_URL}refresh_jwt`, {
                    method: 'GET',
                    headers: {
                        'Authorization': `Bearer ${localStorage.getItem('refresh_token')}`,
                    }
                })
                .then(jwtResponse => jwtResponse.json())
                .then(jwtData => {
                    if (jwtData.access_token && jwtData.refresh_token) {
                        localStorage.setItem('access_token', jwtData.access_token);
                        localStorage.setItem('refresh_token', jwtData.refresh_token);
                    } else {
                        console.error('Error refreshing JWT tokens:', jwtData.error);
                    }
                })
                .catch(error => {
                    console.error('Error refreshing JWT tokens:', error);
                });
            } else {
                console.error('Error refreshing Discord token:', discordData.error);
            }
        })
        .catch(error => {
            console.error('Error refreshing token:', error);
        });
    }
}