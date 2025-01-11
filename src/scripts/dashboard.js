window.onload = () => {
    const fragment = new URLSearchParams(window.location.search);
    const code = fragment.get('code');

    const loadingSpinner = document.getElementById('loadingSpinner');
    const loginInfo = document.querySelector('.login-info');
    const homeLink = document.getElementById('home-link');

    if (!code) {
        loginInfo.innerHTML = "No authorization code provided. Please try logging in again.<br>If error persists, contact Neptunya.";
        homeLink.style.display = 'block';
        loadingSpinner.style.display = 'none';
        return;
    }

    loadingSpinner.style.display = 'block';
    loginInfo.innerHTML = "Logging you in, please wait...<br>You will be automatically redirected if login is successful.";

    fetch(`${import.meta.env.PUBLIC_BASE_URL}api/login`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            code: code, 
        }),
    })
    .then(response => response.json())
    .then(data => {
        loadingSpinner.style.display = 'none';

        if (data.access_token && data.refresh_token) {
            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
            window.location.href = 'https://infinitynikkilibrary.com/'
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
