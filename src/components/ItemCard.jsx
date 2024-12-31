import * as React from 'react';

const ItemCard = ({ item }) => {
    const itemName = item['Name'].replace(/\s+/g, '');
    const itemNameOwned = `${itemName}-owned`;
    const itemNameWish = `${itemName}-wished`;
    const itemNameLvl = `${itemName}-level`;

    const [isFavorited, setIsFavorited] = React.useState(false);

    const toggleFavorite = () => {
        setIsFavorited(!isFavorited);
    };

    return (
        <div className="item-card card-row">
            <img
                className="item-img"
                src={`/images/items/${item.Name}.png`}
                alt={item.Name}
            />
            <div className="item-card-text">
                <h3>{item.Name}</h3>
                {item.Outfit && (
                    <p style={{ whiteSpace: 'wrap', marginTop: '4px' }}>
                        <strong>
                            <i>{item.Outfit}</i>
                        </strong>
                    </p>
                )}
                <div>
                    <input
                        type="checkbox"
                        id={itemNameOwned}
                        name={itemNameOwned}
                        value={itemNameOwned}
                        style={{ marginTop: '4px' }}
                    />
                    <label htmlFor={itemNameOwned}>
                        Owned
                        <br />
                    </label>
                </div>
                <input
                    type="checkbox"
                    id={itemNameWish}
                    name={itemNameWish}
                    value={itemNameWish}
                />
                <label htmlFor={itemNameWish}>
                    Wishlist
                    <br />
                </label>
                <label htmlFor={itemNameLvl}>Level:</label>
                <input
                    type="number"
                    id={itemNameLvl}
                    name={itemNameLvl}
                    min="0"
                    max="11"
                />
                <br />
                <a href={`#${item.Name}`}>
                    <button className="more-details-btn">More Details</button>
                </a>
                <button
                    className={`heart ${isFavorited ? 'favorited' : ''}`}
                    title={isFavorited ? 'Remove from favorites' : 'Add to favorites'}
                    aria-pressed={isFavorited}
                    onClick={toggleFavorite}
                >
                    ❤
                </button>
            </div>
        </div>
    );
};

export default ItemCard;