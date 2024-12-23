window.onload = () => {
    const fragment = new URLSearchParams(window.location.hash.slice(1));
    const [accessToken, tokenType, expiresIn] = [
        fragment.get('access_token'),
        fragment.get('token_type'),
        fragment.get('expires_in')
    ];
    
    if (!accessToken) {
        window.location.href('/')
    }
    
    fetch('https://discord.com/api/users/@me', {
        headers: {
            authorization: `${tokenType} ${accessToken}`,
        },
    })
    .then(result => result.json())
    .then(response => {
        const { username, avatar, id} = response;
        document.getElementById('name').innerText = ` ${username}`;
        document.getElementById("avatar").src = `https://cdn.discordapp.com/avatars/${id}/${avatar}.jpg`;
        const expiresAt = new Date(Date.now() + parseInt(expiresIn, 10) * 1000).toISOString();
        const userData = {
            id: id,
            username: username,
            access_token: accessToken,
            refresh_token: "temp_refresh_token",
            expires_at: expiresAt,
            avatar: avatar
        };
        
        fetch(`${import.meta.env.PUBLIC_BASE_URL}/users`, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(userData),
        })
        .then(postReponse => {
            if (!postReponse.ok) {
                throw new Error('Failed to save user data.')
            }
            return postReponse.json();
        })
        .then(data =>{
            console.log('User data saved:', data)
        })
        .catch(error => console.error('Error saving user data:', error));
    })
    .catch(console.error);
};