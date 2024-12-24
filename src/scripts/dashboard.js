window.onload = () => {
    const fragment = new URLSearchParams(window.location.hash.slice(1));
    const accessToken = fragment.get('access_token');
    const tokenType = fragment.get('token_type');
    const expiresIn = parseInt(fragment.get('expires_in'), 10);

    if (!accessToken) {
        window.location.href = '/';
        return;
    }

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
        if (data.access_token && data.refresh_token) {
            localStorage.setItem('access_token', data.access_token);
            localStorage.setItem('refresh_token', data.refresh_token);
        } else {
            console.error('Failed to retrieve JWT tokens');
        }
    })
    .catch(error => console.error('Error during login:', error));
};
