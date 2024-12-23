window.onload = () => {
    const fragment = new URLSearchParams(window.location.hash.slice(1));
    const [accessToken, tokenType] = [fragment.get('access_token'), fragment.get('token_type')];
    
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
        const { username, discriminator, avatar, id} = response;
        document.getElementById('name').innerText = ` ${username}`;

        document.getElementById("avatar").src = `https://cdn.discordapp.com/avatars/${id}/${avatar}.jpg`;
    })
    .catch(console.error);
};