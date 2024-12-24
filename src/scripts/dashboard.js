window.onload = () => {
    const fragment = new URLSearchParams(window.location.hash.slice(1));
    const accessToken = fragment.get('access_token');
    const tokenType = fragment.get('token_type');
    const expiresIn = parseInt(fragment.get('expires_in'), 10);

    const loadingSpinner = document.getElementById('loadingSpinner');
    const loginInfo = document.querySelector('.login-info');
    const homeLink = document.getElementById('home-link');

    if (!accessToken) {
        loginInfo.innerHTML = "No access token provided. Please try logging in again.<br>If error persists, contact Neptunya.";
        homeLink.style.display = 'block';
        loadingSpinner.style.display = 'none';
        return;
    }

    loadingSpinner.style.display = 'block';
    loginInfo.innerHTML = "Logging you in, please wait...<br>You will be automatically redirected if log in is successful.";

    fetch(`${import.meta.env.PUBLIC_BASE_URL}login`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            access_token: accessToken,
            token_type: tokenType,
            expires_in: expiresIn,
        }),
    })
    .then(response => response.json())
    .then(data => {
        loadingSpinner.style.display = 'none';

        if (data.access_token && data.refresh_token) {
            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
            window.location.href = '/';
        } else {
            loginInfo.innerHTML = "Login failed: Missing tokens from the server. Please try again.<br>If error persists, contact Neptunya.";
            homeLink.style.display = 'block';
        }
    })
    .catch(error => {
        loadingSpinner.style.display = 'none';
        
        let errorMessage = "An unexpected error occurred. Please try again later.<br>If error persists, contact Neptunya.";
        
        if (error.message.includes('NetworkError')) {
            errorMessage = "Network error: Unable to reach the server. Please check your connection.<br>If error persists, contact Neptunya.";
        }

        loginInfo.innerHTML = errorMessage;
        console.error('Error during login:', error);
        homeLink.style.display = 'block';
    });
};
