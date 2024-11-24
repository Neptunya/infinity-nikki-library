--
-- PostgreSQL database dump
--

-- Dumped from database version 17.1
-- Dumped by pg_dump version 17.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: item_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_details (
    "Name" character varying(255) NOT NULL,
    "Rarity" integer,
    "Slot" character varying(255),
    "Outfit" character varying(255),
    "Labels" character varying(255),
    "Source" character varying(255),
    "Style" character varying(255),
    "Banner" character varying(255)
);


ALTER TABLE public.item_details OWNER TO postgres;

--
-- Name: level_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.level_details (
    "Name" character varying(255) NOT NULL,
    "Rarity" integer,
    "Slot" character varying(255),
    "Outfit" character varying(255),
    "Level" integer NOT NULL,
    "Elegant" integer,
    "Fresh" integer,
    "Sweet" integer,
    "Sexy" integer,
    "Cool" integer,
    "Blings" integer,
    "Threads" integer,
    "Bubbles" integer,
    "Style" character varying(255)
);


ALTER TABLE public.level_details OWNER TO postgres;

--
-- Data for Name: item_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.item_details ("Name", "Rarity", "Slot", "Outfit", "Labels", "Source", "Style", "Banner") FROM stdin;
Blooming Pact	5	Hair	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Evening Banquet	5	Hair	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Firefly Brilliance	5	Hair	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Silver Shimmer	5	Hair	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Morning Sunlight	5	Hair	Fairytale Swan	Formal	Resonance from the Distant Sea	Sexy	Distant Sea
Moonlit Chords	5	Hair	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Sexy	Distant Sea
Flame's Embers	5	Hair	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Sexy	Distant Sea
Moonlit Glide	5	Hair	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Sexy	Distant Sea
Fluttermist Isle	5	Hair	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Windborne Realm	5	Hair	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Cursed Storm	5	Hair	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Etched by the Wind	5	Hair	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Starry Splendor	5	Dress	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Ethereal Dreamland	5	Dress	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Eternal Radiance	5	Dress	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Rustling Stars	5	Dress	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Blooming Grace	5	Dress	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Lake of Tears	5	Dress	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Swan's Heartfire	5	Dress	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Beyond the Stars	5	Dress	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Fluttering Twist	5	Dress	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Winged Illusions	5	Dress	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Embers of the Butterfly	5	Dress	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Silent Woodland	5	Dress	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Fluttering Wishes	5	Dress	\N	Royal	A classic clothing piece from Marques Boutique.	Elegant	\N
Raging Rockling	5	Top	\N	Playful	Treasure guarded by Esselings.	Cool	\N
Imminent Bloom	5	Socks	Blossoming Stars	Romance	Resonance from the Distant Sea	Fresh	Distant Sea
Long Dreaming	5	Socks	Blossoming Stars: Dreamfall	Romance	Resonance from the Distant Sea	Fresh	Distant Sea
Starry Tread	5	Socks	Blossoming Stars: Radiance	Romance	Resonance from the Distant Sea	Fresh	Distant Sea
Misty Silhouette	5	Socks	Blossoming Stars: Starlight	Romance	Resonance from the Distant Sea	Fresh	Distant Sea
Interwoven with Love	5	Socks	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Shadow Pacing	5	Socks	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Through the Flames	5	Socks	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Plumes of Aurora	5	Socks	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Windborne Memories	5	Socks	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Enduring Ballad	5	Socks	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Land of Winds	5	Socks	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Dreamwalker's Forest	5	Socks	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Starry Pathway	5	Shoes	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Floating Shore	5	Shoes	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Chasing Stars	5	Shoes	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Floral Stardust	5	Shoes	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Ripple Tracker	5	Shoes	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Feathered Waltz	5	Shoes	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Omen of Revival	5	Shoes	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Voyage of Stars	5	Shoes	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Offshore Breeze	5	Shoes	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Resting in the Rift	5	Shoes	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Path of Sorrow	5	Shoes	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Echoes of the Wind	5	Shoes	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Pearly Bird	5	Shoes	\N	Fantasy	Treasure guarded by Esselings.	Sweet	\N
Starlit Dreams	5	Hair Accessory	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Mist Glow	5	Hair Accessory	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Glistening Moment	5	Hair Accessory	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Blooming Starfall	5	Hair Accessory	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Bloom Together	5	Headwear	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Moon in Flowers	5	Headwear	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
White Branches	5	Headwear	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Snow on Branches	5	Headwear	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Fluttering Feathers	5	Headwear	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Starry Night	5	Headwear	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Forged in Flames	5	Headwear	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Covenant of Swans	5	Headwear	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Frigid Branches	5	Headwear	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Dreams of the Past	5	Headwear	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Beneath the Ashes	5	Headwear	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Lonely Branches	5	Headwear	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Eternal Harmony	5	Headwear	\N	Formal	Proof of styling prowess.	Elegant	\N
Astral Petals	5	Earrings	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Forgotten Drift	5	Earrings	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Golden Blossom	5	Earrings	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Star Blossom	5	Earrings	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Swaying Ode	5	Earrings	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Feather's Whisper	5	Earrings	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Nest of Dreams and Sleep	5	Earrings	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Sigh of Ether	5	Earrings	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Windhowl Tears	5	Earrings	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Butterfly's Dance	5	Earrings	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Butterfly Elegy	5	Earrings	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Isolated Melody	5	Earrings	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Blossom Promenade	5	Neckwear	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Dreams Lost	5	Neckwear	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Dawning Light	5	Neckwear	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Milky Way Overflow	5	Neckwear	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Silent Perch	5	Neckwear	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Dreams on Wings	5	Neckwear	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Amid the Storm	5	Neckwear	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Shaded Green	5	Neckwear	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Distant Twinkle	5	Bracelet	Blossoming Stars	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Starlight Submersion	5	Bracelet	Blossoming Stars: Dreamfall	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Pure Wish	5	Bracelet	Blossoming Stars: Radiance	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Cloud Cluster	5	Bracelet	Blossoming Stars: Starlight	Romance, Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Swan Sonata	5	Choker	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Scattered Plume	5	Choker	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Feathers of Passion	5	Choker	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Tail of Comet	5	Choker	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Sealing Cocoon	5	Choker	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Endless Gaze	5	Choker	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Fated Chains	5	Choker	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Green Slumber	5	Choker	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Feathered Gleam	5	Gloves	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Harmonic Wings	5	Gloves	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Trial of Wings	5	Gloves	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Glimmer of Hope	5	Gloves	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Delicate Wings	5	Gloves	Flutter Storm	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Fluttering Butterfly	5	Gloves	Flutter Storm: Dream Chant	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Fervent Longing	5	Gloves	Flutter Storm: Flame Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Lingering Warmth	5	Gloves	Flutter Storm: Forest Song	Romance	Resonance from the Distant Sea	Sexy	Butterfly Dream
Wishful Honors	5	Chest Accessory	\N	Fashion	Proof of styling prowess.	Elegant	\N
Starry Guidance	5	Ring	Fairytale Swan	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Lingering Dreams	5	Ring	Fairytale Swan: Dream	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Burnt to Ashes	5	Ring	Fairytale Swan: Mystfire	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Path of Stars	5	Ring	Fairytale Swan: Truth	Formal	Resonance from the Distant Sea	Elegant	Distant Sea
Eternal Blossoms	5	Handheld	\N	Romance	Proof of styling prowess.	Elegant	\N
Dreamy Ripples	5	Base Makeup	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Mermaid's Glow	5	Base Makeup	\N	\N	Resonance from the Distant Sea	Elegant	Butterfly Dream
Spring Breeze	5	Base Makeup	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Nimbus Dreams	5	Eyebrows	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Snowy Branches	5	Eyebrows	\N	\N	Resonance from the Distant Sea	Elegant	Butterfly Dream
Warm Brown	5	Eyebrows	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Aromalily's Heart	5	Eyelashes	\N	\N	Resonance from the Distant Sea	Elegant	Butterfly Dream
Delicate Heartstrings	5	Eyelashes	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Feathery Sway	5	Eyelashes	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Crystal Gaze	5	Contact Lenses	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Dainty Yellow	5	Contact Lenses	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Snowy Sky	5	Contact Lenses	\N	\N	Resonance from the Distant Sea	Elegant	Butterfly Dream
Light Tangerine	5	Lips	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Mermaid Icebloom	5	Lips	\N	\N	Resonance from the Distant Sea	Elegant	Butterfly Dream
Rose in Blossom	5	Lips	\N	\N	Resonance from the Distant Sea	Elegant	Distant Sea
Air Bubbles	4	Hair	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Fresh Breeze	4	Hair	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Friendly Impression	4	Hair	Bye-Bye Dust	Playful	Insights of the Heart of Infinity.	Sweet	\N
Cat Paw	4	Hair	Bye-Bye Dust: Kitty	Playful	Insights of the Heart of Infinity.	Sweet	\N
Distant Memory	4	Hair	Floral Memory	Retro	Insights of the Heart of Infinity.	Fresh	\N
Distant Aroma	4	Hair	Floral Memory: Gleam	Retro	Insights of the Heart of Infinity.	Fresh	\N
Painting Blossoms	4	Hair	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Solo of the Stars	4	Hair	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Troubleshooter	4	Hair	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Colorful Gradient	4	Hair	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Windswept Wheat	4	Hair	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Silvernight Whispers	4	Hair	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Tomorrow's Vows	4	Hair	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Vibrant Life	4	Hair	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Rippling Waves	4	Hair	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Entrance Invitation	4	Hair	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Mellifluous Melody	4	Hair	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Glittering Night	4	Hair	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Spring Whispers	4	Hair	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Dancing Waves	4	Hair	\N	Playful	Resonance from the Distant Sea	Fresh	Distant Sea
Mature Short Hair	4	Hair	\N	Fashion	An unexpected surprise from the Surprise-O-Matic.	Sexy	\N
Whispering Bubbles	4	Dress	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Bubbly Aroma	4	Dress	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Sky Fall	4	Dress	Floral Memory	Retro	Insights of the Heart of Infinity.	Fresh	\N
Golden Memory	4	Dress	Floral Memory: Gleam	Retro	Insights of the Heart of Infinity.	Fresh	\N
Circuit Connection	4	Dress	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Crackling Electricity	4	Dress	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Song of Harvest	4	Dress	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Wishful Flowers	4	Dress	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Paper Crane's Flight	4	Dress	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Elegant	\N
Silent Sea	4	Dress	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Elegant	\N
Chuckle Trainee	4	Dress	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Graceful Spin	4	Dress	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Melodic Heart	4	Dress	Symphony of Strings	Romance	Insights of the Heart of Infinity.	Sweet	\N
Pure Melody	4	Dress	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Imaginative Painting	4	Outerwear	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Wandering Thoughts	4	Outerwear	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Through the Storm	4	Outerwear	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Wish of All	4	Outerwear	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Puffy Sleeves	4	Outerwear	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Flow of the Night	4	Outerwear	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Siesta Tunes	4	Top	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Purity Guardian	4	Top	Bye-Bye Dust	Playful	Insights of the Heart of Infinity.	Sweet	\N
Monochrome Mood	4	Top	Bye-Bye Dust: Kitty	Playful	Insights of the Heart of Infinity.	Sweet	\N
Splashed Ink	4	Top	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Passing Seasons	4	Top	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Azure Waters	4	Top	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Joy of Fish	4	Top	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Pink Sailor	4	Top	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Set Sail	4	Top	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Ceremony Guest	4	Top	\N	Retro	Rare treasures scattered in chests found all around the world.	Elegant	\N
Crimson Snowstorm	4	Top	\N	Uniform	A piece of journey anecdote.	Cool	\N
Sunny Agenda	4	Bottom	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Stained Palette	4	Bottom	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Endless Tracking	4	Bottom	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Babbling Brook	4	Bottom	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Colorful Scales	4	Bottom	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Sweet Juice	4	Bottom	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Riding the Breeze	4	Bottom	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Refreshing Droplet	4	Bottom	\N	Playful	Insights of the Heart of Infinity.	Sweet	\N
Verdant Dance	4	Bottom	\N	Intellectual	An unexpected surprise from the Surprise-O-Matic.	Sexy	\N
Little Luck	4	Socks	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Transparent Trajectory	4	Socks	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Viridescent Hops	4	Socks	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Pawprint Love	4	Socks	Bye-Bye Dust	Playful	Insights of the Heart of Infinity.	Sweet	\N
Icebreaker Game	4	Socks	Bye-Bye Dust: Kitty	Playful	Insights of the Heart of Infinity.	Sweet	\N
Twilight Daydream	4	Socks	Floral Memory	Retro	Insights of the Heart of Infinity.	Elegant	\N
Wind-swayed Dreams	4	Socks	Floral Memory: Gleam	Retro	Insights of the Heart of Infinity.	Elegant	\N
New Colors	4	Socks	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Paint-soaked Album	4	Socks	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Volt Check	4	Socks	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Power Restart	4	Socks	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Breezy Cotton	4	Socks	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Soft Cotton	4	Socks	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Blooming Path	4	Socks	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Fragrant Realm	4	Socks	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Fruity Bubble	4	Socks	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Soft Bibcoon Socks	4	Socks	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Cotton Candy	4	Socks	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Rhythmic Pulse	4	Socks	Symphony of Strings	Romance	Insights of the Heart of Infinity.	Sweet	\N
Shallow Reflections	4	Socks	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Dot-Grip Sentiments	4	Socks	\N	\N	One of the initial items acquired upon arrival in Miraland.	Sexy	\N
Sunflower Long Socks	4	Socks	\N	Warm	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Springtime Steps	4	Shoes	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Graceful Takeoff	4	Shoes	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Springing Up	4	Shoes	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Droplet Ballet	4	Shoes	Bye-Bye Dust	Playful	Insights of the Heart of Infinity.	Sweet	\N
Grooming Expert	4	Shoes	Bye-Bye Dust: Kitty	Playful	Insights of the Heart of Infinity.	Sweet	\N
Trace of the Pen	4	Shoes	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Time Stands Still	4	Shoes	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Insulated Marks	4	Shoes	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Emergency Deployment	4	Shoes	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Homeland's Nostalgia	4	Shoes	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Flower Fields	4	Shoes	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Bright Tomorrow	4	Shoes	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Safe Passage	4	Shoes	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Dripping Droplets	4	Shoes	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Ripple Effect	4	Shoes	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Seaside Siesta	4	Shoes	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Unending Dance	4	Shoes	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Graceful Steps	4	Shoes	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Lightseeking Concerto	4	Shoes	Symphony of Strings	Romance	Insights of the Heart of Infinity.	Sweet	\N
Gentle Ripples	4	Shoes	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Airborne Steps	4	Shoes	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Blooming Cycles	4	Shoes	\N	Retro	Insights of the Heart of Infinity.	Fresh	\N
White Clouds	4	Shoes	\N	Simple	A classic clothing piece from Marques Boutique.	Cool	\N
Nostalgic Breeze	4	Hair Accessory	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Twinkling Refractions	4	Hair Accessory	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Thoughts of Spring	4	Hair Accessory	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Wind's Caress	4	Hair Accessory	Floral Memory	Retro	Insights of the Heart of Infinity.	Fresh	\N
Light Spirals	4	Hair Accessory	Floral Memory: Gleam	Retro	Insights of the Heart of Infinity.	Fresh	\N
Hopeful Knot	4	Hair Accessory	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Blossoming Posture	4	Hair Accessory	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
A New Dawn	4	Hair Accessory	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Sea of Dreams	4	Hair Accessory	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Starsail Jelly	4	Hair Accessory	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Intermission	4	Hair Accessory	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Sweet Nectar	4	Hair Accessory	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Guiding Star	4	Hair Accessory	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Blossom Verses	4	Hair Accessory	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Gala Crystal	4	Hair Accessory	\N	Royal	Rare treasures scattered in chests found all around the world.	Elegant	\N
Sparkling Reverie	4	Headwear	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Rhymes Echo	4	Headwear	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Azure Ripples	4	Headwear	Bye-Bye Dust	Playful	Insights of the Heart of Infinity.	Sweet	\N
Leisurely Moments	4	Headwear	Bye-Bye Dust: Kitty	Playful	Insights of the Heart of Infinity.	Sweet	\N
Blank Beginnings	4	Headwear	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Starry Dream	4	Headwear	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Harvest's Blessing	4	Headwear	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Floral Tribute	4	Headwear	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Cradle of Wish	4	Headwear	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Subtle Fragrance	4	Headwear	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Cheerful Fisher	4	Headwear	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Immersed in Fantasy	4	Headwear	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Cooling Breeze	4	Headwear	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Sleepless Night	4	Headwear	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Vibrant Note	4	Headwear	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Night's Conductor	4	Headwear	Symphony of Strings	Romance	Insights of the Heart of Infinity.	Sweet	\N
Drifting Sharkfin	4	Headwear	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Crowning Spring	4	Headwear	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Twilight's Veil	4	Earrings	Floral Memory	Retro	Insights of the Heart of Infinity.	Fresh	\N
Flower Memory	4	Earrings	Floral Memory: Gleam	Retro	Insights of the Heart of Infinity.	Fresh	\N
Painted Scenery	4	Earrings	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Painting the Past	4	Earrings	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Emergency Response	4	Earrings	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Maximum Power	4	Earrings	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Wishbird Return	4	Earrings	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Moonlit Branch	4	Earrings	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Weaving Spring	4	Earrings	Rebirth Wish	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
First Light of Dawn	4	Earrings	Rebirth Wish: Blooming	Retro	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Sweet	\N
Tiny Bites	4	Earrings	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Scaled Password	4	Earrings	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Bibcoon Pompoms	4	Earrings	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Fluffy Puff	4	Earrings	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Trailing Melody	4	Earrings	Symphony of Strings	Romance	Insights of the Heart of Infinity.	Sweet	\N
Resurrected Shine	4	Earrings	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Gleaming Wilderness	4	Earrings	\N	Romance	World travel mementos.	Fresh	\N
Wish Bottle Earrings	4	Earrings	\N	Fantasy	A unique creation made by an independent designer.	Elegant	\N
Gentle Touch	4	Bracelet	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Dewy Bubbles	4	Bracelet	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Languid Windmill	4	Bracelet	Hometown Breeze	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Breeze Melody	4	Bracelet	Hometown Breeze: Hopeful	Pastoral	A gift from the Cadenceborn to those who offer the Dew of Inspiration.	Fresh	\N
Unfulfilled Wish	4	Bracelet	Sweet Jazz Nights	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Bibcoon's Masterpiece	4	Bracelet	Sweet Jazz Nights: Waltz	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Flowing Ripple	4	Choker	Bubbly Voyage	Summer	Insights of the Heart of Infinity.	Sweet	\N
Emerald Flow	4	Choker	Bubbly Voyage: Spring	Summer	Insights of the Heart of Infinity.	Sweet	\N
Choo-Choo Whistle	3	Headwear	\N	Uniform	World travel mementos.	Cool	\N
Past Fragrance	4	Choker	Floral Memory	Retro	Insights of the Heart of Infinity.	Fresh	\N
Hidden in Flowers	4	Choker	Floral Memory: Gleam	Retro	Insights of the Heart of Infinity.	Fresh	\N
Cool Touch	4	Gloves	Bye-Bye Dust	Playful	Insights of the Heart of Infinity.	Sweet	\N
Purring Messenger	4	Gloves	Bye-Bye Dust: Kitty	Playful	Insights of the Heart of Infinity.	Sweet	\N
Lingering Memory	4	Gloves	Floral Memory	Retro	Insights of the Heart of Infinity.	Fresh	\N
Remembrance of Flowers	4	Gloves	Floral Memory: Gleam	Retro	Insights of the Heart of Infinity.	Fresh	\N
Precise Maneuver	4	Gloves	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Smooth Current	4	Gloves	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Splashy Gloves	4	Gloves	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Shadow of the Stars	4	Gloves	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Shallow Sea Swim	4	Gloves	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Midnight Nocturne	4	Gloves	Symphony of Strings	Romance	Insights of the Heart of Infinity.	Sweet	\N
Deep Sea Adventure	4	Gloves	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Monsoon Messenger	4	Gloves	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Fingerless Gloves	4	Gloves	\N	Adventure	Rare treasures scattered in chests found all around the world.	Cool	\N
Twin Moons	4	Gloves	\N	Uniform	A classic clothing piece from Marques Boutique.	Cool	\N
Risk Prevention	4	Face Decoration	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Sweet Guardian	4	Face Decoration	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Glimpse of Sunset	4	Face Decoration	\N	Trendy	A classic clothing piece from Marques Boutique.	Cool	\N
Field Posy	4	Chest Accessory	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Power Supply	4	Chest Accessory	Fully Charged	Uniform	Insights of the Heart of Infinity.	Cool	\N
Best Partner	4	Chest Accessory	Fully Charged: Refreshing	Uniform	Insights of the Heart of Infinity.	Cool	\N
Summer Voyage	4	Pendant	Shark Mirage: Summer	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Whispering Breeze	4	Pendant	Tidal Shark Mirage	Playful	Resonance from the Distant Sea	Cool	Distant Sea
Windswept Plume	4	Pendant	Wind of Purity	Romance	Insights of the Heart of Infinity.	Elegant	\N
Golden Daylight	4	Backpiece	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Floral Dreamscape	4	Backpiece	Flowing Colors	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Starry Poetry	4	Backpiece	Flowing Colors: Dreamy	Playful	Resonance from the Distant Sea	Fresh	Butterfly Dream
Fishing Bliss	4	Backpiece	Rippling Serenity	Simple	Insights of the Heart of Infinity.	Cool	\N
Bountiful Harvest	4	Backpiece	Rippling Serenity: Dream	Simple	Insights of the Heart of Infinity.	Cool	\N
Corridor of Time	3	Hair	A Beautiful Day	Retro	Proof of styling prowess.	Elegant	\N
Clear Vision	3	Hair	Afternoon Shine	Adventure	Insights of the Heart of Infinity.	Sweet	\N
Dawn's Radiance	3	Hair	Carnival Ode	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Relaxed Workflow	3	Hair	Refined Grace	Intellectual	Proof of styling prowess.	Cool	\N
Pink Star Wish	3	Hair	Searching for Dreams	Cute	Proof of styling prowess.	Sexy	\N
Thousand Symphonies	3	Hair	Symphony of Strings	Romance	Insights of the Heart of Infinity.	Sweet	\N
An Easy Start	3	Hair	\N	Simple	A classic clothing piece from Marques Boutique.	Cool	\N
Autumn's Melody	3	Hair	\N	Pastoral	A classic clothing piece from Marques Boutique.	Sweet	\N
Azure Sand	3	Hair	\N	Adventure	A classic clothing piece from Marques Boutique.	Fresh	\N
Born Pink	3	Hair	\N	Cute	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Chiming Breeze	3	Hair	\N	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Five More Minutes	3	Hair	\N	Home	A classic clothing piece from Marques Boutique.	Sweet	\N
Inky Braid	3	Hair	\N	Trendy	Resonance from the Distant Sea	Fresh	Distant Sea
Mini Fishball	3	Hair	\N	Fashion	A reward from an adventure.	Fresh	\N
Misty Clouds	3	Hair	\N	Intellectual	An unexpected surprise from the Surprise-O-Matic.	Elegant	\N
Nostalgic Blossom	3	Hair	\N	Pastoral	A piece of journey anecdote.	Fresh	\N
Peachy Puffs	3	Hair	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Pink 'n' Curly	3	Hair	\N	Romance	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Playful Spades	3	Hair	\N	Uniform	Resonance from the Distant Sea	Elegant	Distant Sea
Quick Ponytail	3	Hair	\N	Simple	A piece of journey anecdote.	Cool	\N
Sunrise Runner	3	Hair	\N	Summer	Resonance from the Distant Sea	Sweet	Distant Sea
Dreamlike Stars	3	Dress	Searching for Dreams	Cute	Proof of styling prowess.	Sweet	\N
Confession Lace	3	Dress	\N	Romance	Rare treasures scattered in chests found all around the world.	Elegant	\N
Fragrant Reverie	3	Dress	\N	Pastoral	Rare treasures scattered in chests found all around the world.	Fresh	\N
Mature Aftertaste	3	Dress	\N	Intellectual	Resonance from the Distant Sea	Elegant	Distant Sea
Natural Color	3	Dress	\N	Simple	A piece of journey anecdote.	Fresh	\N
Peachy Fellowship	3	Dress	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Perfect Start	3	Dress	\N	Cute	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Snownight Letter	3	Dress	\N	Romance	A classic clothing piece from Marques Boutique.	Sexy	\N
Spring Qipao	3	Dress	\N	Intellectual	Rare treasures scattered in chests found all around the world.	Fresh	\N
Starry Vigil	3	Dress	\N	Romance	Rare treasures scattered in chests found all around the world.	Sweet	\N
Work-Life Balance	3	Outerwear	Refined Grace	Intellectual	Proof of styling prowess.	Cool	\N
Gentle Starshine	3	Outerwear	Searching for Dreams	Cute	Proof of styling prowess.	Sexy	\N
First Day Jogging	3	Outerwear	\N	Summer	Resonance from the Distant Sea	Sweet	Distant Sea
Floral Love	3	Outerwear	\N	Pastoral	A unique creation made by an independent designer.	Fresh	\N
Golden Elegance	3	Outerwear	\N	Intellectual	A classic clothing piece from Marques Boutique.	Elegant	\N
Handsome Silhouette	3	Outerwear	\N	Intellectual	A classic clothing piece from Marques Boutique.	Elegant	\N
Midsummer Shade	3	Outerwear	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Red Checkered Vest	3	Outerwear	\N	Uniform	Resonance from the Distant Sea	Elegant	Distant Sea
Rich Hot Chocolate	3	Outerwear	\N	Cute	A classic clothing piece from Marques Boutique.	Elegant	\N
Sky Monarch Catcher	3	Outerwear	\N	Warm	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Classroom Hours	3	Top	A Beautiful Day	Retro	Proof of styling prowess.	Elegant	\N
Striped Celebration	3	Top	Carnival Ode	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Majestic Stance	3	Top	Guard's Resolve	Uniform	A reward from an adventure.	Cool	\N
Clear Mind	3	Top	Refined Grace	Intellectual	Proof of styling prowess.	Cool	\N
Academy Tribute	3	Top	\N	Retro	Rare treasures scattered in chests found all around the world.	Cool	\N
Crybaby Vest	3	Top	\N	\N	A unique creation made by an independent designer.	Cool	\N
Cutie Dragon	3	Top	\N	Simple	Rare treasures scattered in chests found all around the world.	Fresh	\N
Distant Gaze	3	Top	\N	Romance	Rare treasures scattered in chests found all around the world.	Fresh	\N
Dreamland Marathon	3	Top	\N	Home	A classic clothing piece from Marques Boutique.	Sweet	\N
Expedition Souvenir	3	Top	\N	Warm	A piece of journey anecdote.	Fresh	\N
Fleeting Oath	3	Top	\N	Intellectual	Rare treasures scattered in chests found all around the world.	Cool	\N
Floral Rhythm	3	Top	\N	Summer	An unexpected surprise from the Surprise-O-Matic.	Fresh	\N
Golden Handprint	3	Top	\N	Uniform	A unique creation made by an independent designer.	Cool	\N
Hundred Daisies	3	Top	\N	Romance	A piece of journey anecdote.	Sexy	\N
Light Travel	3	Top	\N	Summer	Rare treasures scattered in chests found all around the world.	Fresh	\N
Mark of Life	3	Top	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Noir Creed 01	3	Top	\N	\N	A unique creation made by an independent designer.	Cool	\N
Orange Rebel	3	Top	\N	Summer	A classic clothing piece from Marques Boutique.	Sexy	\N
Quick Warm-up	3	Top	\N	Summer	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Rebellious Dream	3	Top	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Refreshing Greenery	3	Top	\N	Summer	Rare treasures scattered in chests found all around the world.	Fresh	\N
Riverside Run	3	Top	\N	Adventure	Rare treasures scattered in chests found all around the world.	Cool	\N
Scalding Tears	3	Top	\N	Simple	A unique creation made by an independent designer.	Fresh	\N
Steaming Skewers	3	Top	\N	Home	A unique creation made by an independent designer.	Sweet	\N
Sunny Floral Blouse	3	Top	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Fresh	\N
Sweet Pink	3	Top	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Verdant Freedom	3	Top	\N	Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Well-Organized	3	Top	\N	Trendy	Rare treasures scattered in chests found all around the world.	Sexy	\N
Wisteria's Longing	3	Top	\N	\N	A classic clothing piece from Marques Boutique.	Sweet	\N
Immersive Study	3	Bottom	A Beautiful Day	Retro	Proof of styling prowess.	Elegant	\N
Free Will	3	Bottom	Carnival Ode	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Problem-Solver	3	Bottom	Guard's Resolve	Uniform	A reward from an adventure.	Cool	\N
With Efficiency	3	Bottom	Refined Grace	Intellectual	Proof of styling prowess.	Cool	\N
Azure Viola	3	Bottom	\N	Simple	A unique creation made by an independent designer.	Sweet	\N
Bouncy Blue	3	Bottom	\N	Adventure	Rare treasures scattered in chests found all around the world.	Cool	\N
Brown Orange Plaid	3	Bottom	\N	Simple	A unique creation made by an independent designer.	Sweet	\N
Cyan Mist	3	Bottom	\N	Linlang	Resonance from the Distant Sea	Sexy	Distant Sea
Dark Blue Fantasy	3	Bottom	\N	Simple	A unique creation made by an independent designer.	Sweet	\N
Deep Blue Companion	3	Bottom	\N	Fashion	Resonance from the Distant Sea	Cool	Distant Sea
Deeply Engraved	3	Bottom	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Elegant Hibiscus	3	Bottom	\N	Pastoral	A classic clothing piece from Marques Boutique.	Sweet	\N
Fishy Fantasy	3	Bottom	\N	Pastoral	World travel mementos.	Fresh	\N
Foliage Musings	3	Bottom	\N	Simple	Rare treasures scattered in chests found all around the world.	Fresh	\N
Gang Rules	3	Bottom	\N	Retro	Rare treasures scattered in chests found all around the world.	Cool	\N
Late Slumber	3	Bottom	\N	Home	A classic clothing piece from Marques Boutique.	Sweet	\N
Noir Creed 02	3	Bottom	\N	\N	A unique creation made by an independent designer.	Cool	\N
Operation Summer	3	Bottom	\N	Summer	Resonance from the Distant Sea	Fresh	Distant Sea
Patchwork Pants	3	Bottom	\N	Retro	Rare treasures scattered in chests found all around the world.	Elegant	\N
Pink Branches	3	Bottom	\N	Simple	A unique creation made by an independent designer.	Sweet	\N
Plain Flowers	3	Bottom	\N	Simple	A unique creation made by an independent designer.	Sweet	\N
Powder Blue	3	Bottom	\N	Romance	An unexpected surprise from the Surprise-O-Matic.	Fresh	\N
Rosy Dance Skirt	3	Bottom	\N	Fantasy	Rare treasures scattered in chests found all around the world.	Elegant	\N
Shorts of Faith	3	Bottom	\N	Retro	Rare treasures scattered in chests found all around the world.	Cool	\N
Single Strap Blues	3	Bottom	\N	Trendy	A unique creation made by an independent designer.	Sweet	\N
Spinning Mood	3	Bottom	\N	Fantasy	Rare treasures scattered in chests found all around the world.	Elegant	\N
Swift Leap	3	Bottom	\N	Summer	Rare treasures scattered in chests found all around the world.	Cool	\N
Tree Shade	3	Bottom	\N	\N	Rare treasures scattered in chests found all around the world.	Fresh	\N
Unruly Plaid	3	Bottom	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Wishful Pact	3	Bottom	\N	Romance	A classic clothing piece from Marques Boutique.	Elegant	\N
Midday Nap	3	Socks	A Beautiful Day	Retro	Proof of styling prowess.	Elegant	\N
Dreamy Starlight	3	Socks	Searching for Dreams	Cute	Proof of styling prowess.	Sexy	\N
Diving Teaser	3	Socks	\N	Fashion	Resonance from the Distant Sea	Cool	Distant Sea
Dreamy Blossom	3	Socks	\N	Trendy	World travel mementos.	Fresh	\N
Dreamy Hope	3	Socks	\N	Cute	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Enchanting Crimson	3	Socks	\N	Intellectual	Rare treasures scattered in chests found all around the world.	Sexy	\N
Floral Squash House	3	Socks	\N	Pastoral	A unique creation made by an independent designer.	Fresh	\N
Frosted Sprinkles	3	Socks	\N	Simple	An unexpected surprise from the Surprise-O-Matic.	Fresh	\N
Fun Stripes	3	Socks	\N	Simple	Rare treasures scattered in chests found all around the world.	Cool	\N
Lavender Stripes	3	Socks	\N	Cute	Resonance from the Distant Sea	Sexy	Distant Sea
Low-Key Trail	3	Socks	\N	Simple	Rare treasures scattered in chests found all around the world.	Cool	\N
Melted Cream	3	Socks	\N	Cute	Resonance from the Distant Sea	Sweet	Distant Sea
Midnight Bloom	3	Socks	\N	Fashion	A classic clothing piece from Marques Boutique.	Sexy	\N
Peachfall Page	3	Socks	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Radiant Heat	3	Socks	\N	Summer	Resonance from the Distant Sea	Fresh	Distant Sea
Rouge and Verdant	3	Socks	\N	Retro	A classic clothing piece from Marques Boutique.	Sweet	\N
Save the Longstocking	3	Socks	\N	Fashion	A classic clothing piece from Marques Boutique.	Sexy	\N
Sweet Dreams	3	Socks	\N	Home	A classic clothing piece from Marques Boutique.	Sweet	\N
Ultra-Vibrant Stripes	3	Socks	\N	Summer	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
White Floral Net	3	Socks	\N	Fashion	Resonance from the Distant Sea	Fresh	Distant Sea
White Whirlwind	3	Socks	\N	Simple	Rare treasures scattered in chests found all around the world.	Cool	\N
Heartfelt Tribute	3	Shoes	A Beautiful Day	Retro	Proof of styling prowess.	Elegant	\N
Into Midnight	3	Shoes	Carnival Ode	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Steady Stride	3	Shoes	Guard's Resolve	Uniform	A reward from an adventure.	Cool	\N
Easy Steps	3	Shoes	Refined Grace	Intellectual	Proof of styling prowess.	Cool	\N
Star of Dreams	3	Shoes	Searching for Dreams	Cute	Proof of styling prowess.	Sexy	\N
At Night	3	Shoes	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Candy Waltz	3	Shoes	\N	Simple	Resonance from the Distant Sea	Sweet	Distant Sea
Classic Curves	3	Shoes	\N	Intellectual	Resonance from the Distant Sea	Sexy	Distant Sea
Cocoa Fairytale	3	Shoes	\N	Pastoral	A classic clothing piece from Marques Boutique.	Fresh	\N
Competition	3	Shoes	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Cool Sprint	3	Shoes	\N	Simple	Rare treasures scattered in chests found all around the world.	Cool	\N
Emerald Whirl	3	Shoes	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Fairytale Friend	3	Shoes	\N	Romance	Resonance from the Distant Sea	Elegant	Distant Sea
Floral Stroll	3	Shoes	\N	Pastoral	A classic clothing piece from Marques Boutique.	Fresh	\N
Footsteps of Love	3	Shoes	\N	Intellectual	A unique creation made by an independent designer.	Fresh	\N
Light Steps	3	Shoes	\N	Romance	An unexpected surprise from the Surprise-O-Matic.	Fresh	\N
Longing Footsteps	3	Shoes	\N	Retro	Rare treasures scattered in chests found all around the world.	Cool	\N
One More Minute	3	Shoes	\N	Home	A classic clothing piece from Marques Boutique.	Sweet	\N
Peachy Steps	3	Shoes	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Peep-Toe Mystery	3	Shoes	\N	Intellectual	A classic clothing piece from Marques Boutique.	Sexy	\N
Plaid Impression	3	Shoes	\N	Fashion	A classic clothing piece from Marques Boutique.	Elegant	\N
Race Against Time	3	Shoes	\N	Summer	Resonance from the Distant Sea	Sweet	Distant Sea
Reshaped Plaid	3	Shoes	\N	Fashion	World travel mementos.	Cool	\N
Stroll and Leisure	3	Shoes	\N	Adventure	Rare treasures scattered in chests found all around the world.	Fresh	\N
Summer Branches	3	Shoes	\N	Intellectual	A classic clothing piece from Marques Boutique.	Elegant	\N
Traveler's Shoes	3	Shoes	\N	Adventure	Rare treasures scattered in chests found all around the world.	Cool	\N
Windchaser	3	Shoes	\N	Adventure	Rare treasures scattered in chests found all around the world.	Cool	\N
Zestful Kicks	3	Shoes	\N	Cute	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Morning Greetings	3	Hair Accessory	A Beautiful Day	Retro	Proof of styling prowess.	Elegant	\N
Crochet Butterfly	3	Hair Accessory	\N	Cute	A unique creation made by an independent designer.	Sweet	\N
Knitted Butterflies	3	Hair Accessory	\N	Cute	A unique creation made by an independent designer.	Sweet	\N
Modern Trends	3	Hair Accessory	\N	Cute	A classic clothing piece from Marques Boutique.	Sweet	\N
Peachy Oath	3	Hair Accessory	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Pearly Dots	3	Hair Accessory	\N	Simple	World travel mementos.	Fresh	\N
Rebounding Deep Breath	3	Hair Accessory	\N	Summer	Resonance from the Distant Sea	Cool	Distant Sea
Star Seeker	3	Hair Accessory	\N	Fantasy	Resonance from the Distant Sea	Sexy	Distant Sea
Starlit Companions	3	Hair Accessory	\N	Summer	World travel mementos.	Sweet	\N
Sunny Windchime	3	Hair Accessory	\N	Summer	Resonance from the Distant Sea	Fresh	Distant Sea
Surprise Invitation	3	Hair Accessory	\N	Romance	A piece of journey anecdote.	Fresh	\N
Woven Dreams	3	Hair Accessory	\N	Pastoral	Resonance from the Distant Sea	Fresh	Distant Sea
Dark Night Sky	3	Headwear	Carnival Ode	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Abyssal Gaze	3	Headwear	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Adventure's Hat	3	Headwear	\N	Adventure	World travel mementos.	Cool	\N
Blossom's Wish	3	Headwear	\N	Formal	Rare treasures scattered in chests found all around the world.	Fresh	\N
Breeze-Kissed Blooms	3	Headwear	\N	Pastoral	A piece of journey anecdote.	Fresh	\N
Cool Shade	3	Headwear	\N	Pastoral	Rare treasures scattered in chests found all around the world.	Fresh	\N
Gentle Sunshine	3	Headwear	\N	Summer	A piece of journey anecdote.	Sweet	\N
Guardian's Pact	3	Headwear	\N	Uniform	A classic clothing piece from Marques Boutique.	Cool	\N
Heavy Eyelids	3	Headwear	\N	Home	A piece of journey anecdote.	Sweet	\N
Kitty Fluff	3	Headwear	\N	Playful	A reward from an adventure.	Fresh	\N
Mist Piercer	3	Headwear	\N	Uniform	A unique creation made by an independent designer.	Cool	\N
Peace with Birds	3	Headwear	\N	Simple	A piece of journey anecdote.	Fresh	\N
Shaky Branch	3	Headwear	\N	Summer	Rare treasures scattered in chests found all around the world.	Fresh	\N
Starlit Night	3	Headwear	\N	Fairy	A piece of journey anecdote.	Sweet	\N
Sunset Finale	3	Headwear	\N	Romance	An unexpected surprise from the Surprise-O-Matic.	Elegant	\N
Winding Branches	3	Headwear	\N	Pastoral	Rare treasures scattered in chests found all around the world.	Fresh	\N
Stockpile Audit	3	Earrings	Refined Grace	Intellectual	Proof of styling prowess.	Cool	\N
Cinders	3	Earrings	\N	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Daisy Reminiscence	3	Earrings	\N	Simple	World travel mementos.	Sweet	\N
Droopy Banner	3	Earrings	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Flashing Alert	3	Earrings	\N	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Floral Whispers	3	Earrings	\N	Pastoral	World travel mementos.	Fresh	\N
Purple Whisper	3	Earrings	\N	Pastoral	A unique creation made by an independent designer.	Sweet	\N
Surprise Box	3	Earrings	\N	Playful	Rare treasures scattered in chests found all around the world.	Sweet	\N
Tangy Dreams	3	Earrings	\N	Playful	Rare treasures scattered in chests found all around the world.	Sweet	\N
Connected Agate	3	Neckwear	Carnival Ode	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Fallen Star	3	Neckwear	Searching for Dreams	Cute	Proof of styling prowess.	Sexy	\N
Budding Sprout	3	Neckwear	\N	Royal	Rare treasures scattered in chests found all around the world.	Elegant	\N
Dark Silverbloom	3	Neckwear	\N	Intellectual	A classic clothing piece from Marques Boutique.	Elegant	\N
Guardian Pendant	3	Neckwear	\N	Simple	Resonance from the Distant Sea	Elegant	Distant Sea
Pure Leaves	3	Neckwear	\N	Pastoral	World travel mementos.	Fresh	\N
Wish Bottle Necklace	3	Neckwear	\N	Fantasy	A unique creation made by an independent designer.	Fresh	\N
Diligent Agenda	3	Bracelet	Refined Grace	Intellectual	Proof of styling prowess.	Cool	\N
Blessing Nebula	3	Bracelet	\N	Fashion	Resonance from the Distant Sea	Sweet	Distant Sea
Fleeting Snowfall	3	Bracelet	\N	Romance	An unexpected surprise from the Surprise-O-Matic.	Elegant	\N
Forgotten Hair Tie	3	Bracelet	\N	Home	A classic clothing piece from Marques Boutique.	Sweet	\N
Lavenfringe Chains	3	Bracelet	\N	Romance	A unique creation made by an independent designer.	Sweet	\N
Orange Sun	3	Bracelet	\N	Summer	Rare treasures scattered in chests found all around the world.	Fresh	\N
Peachy Nostalgia	3	Bracelet	\N	Cute	An unexpected surprise from the Surprise-O-Matic.	Sweet	\N
Ripened Squash	3	Bracelet	\N	Intellectual	A unique creation made by an independent designer.	Fresh	\N
Skilled Hunter	3	Bracelet	\N	Fashion	World travel mementos.	Cool	\N
Zephyr Bracelet	3	Bracelet	\N	Romance	World travel mementos.	Elegant	\N
First Impression	3	Choker	\N	Cute	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Fluttering Heart	3	Choker	\N	Fashion	Resonance from the Distant Sea	Cool	Distant Sea
Heartfelt Words	3	Choker	\N	Pastoral	Resonance from the Distant Sea	Sweet	Distant Sea
Night's Soul	3	Choker	\N	Trendy	Rare treasures scattered in chests found all around the world.	Cool	\N
Rebellious Will	3	Choker	\N	Trendy	A classic clothing piece from Marques Boutique.	Cool	\N
Silent Whispers	3	Choker	\N	Fashion	An unexpected surprise from the Surprise-O-Matic.	Sexy	\N
Thorough Investigation	3	Gloves	Guard's Resolve	Uniform	A reward from an adventure.	Cool	\N
Delicate Leaves	3	Gloves	\N	Adventure	Rare treasures scattered in chests found all around the world.	Fresh	\N
Sincere Greetings	3	Gloves	\N	Formal	Rare treasures scattered in chests found all around the world.	Sexy	\N
Through the Mist	3	Face Decoration	\N	Fashion	A unique creation made by an independent designer.	Cool	\N
Trusted Protection	3	Face Decoration	\N	Adventure	Resonance from the Distant Sea	Cool	Distant Sea
Unnamed Medal	3	Chest Accessory	Carnival Ode	Fashion	Rare treasures scattered in chests found all around the world.	Cool	\N
Glorious Calling	3	Chest Accessory	Guard's Resolve	Uniform	A reward from an adventure.	Cool	\N
Galaxy's Desire	3	Chest Accessory	\N	Fashion	World travel mementos.	Cool	\N
Blue Flower Dye	3	Pendant	\N	Summer	Resonance from the Distant Sea	Sweet	Distant Sea
Loaded with Hope	3	Backpiece	\N	Cute	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Vibrant Spirit	2	Hair	Guard's Resolve	Uniform	A reward from an adventure.	Cool	\N
Silverplume	2	Hair	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Straight-A Student	2	Hair	\N	\N	A classic clothing piece from Marques Boutique.	Elegant	\N
Sunset Dance	2	Hair	\N	\N	A classic clothing piece from Marques Boutique.	Sexy	\N
Ten-Second Bun	2	Hair	\N	\N	A classic clothing piece from Marques Boutique.	Sweet	\N
Enchanting Night	2	Dress	\N	\N	A classic clothing piece from Marques Boutique.	Sexy	\N
Serene Green	2	Dress	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Woolfruit Growth	2	Outerwear	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Dream Walker	2	Top	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Ethereal Lace	2	Top	\N	\N	A classic clothing piece from Marques Boutique.	Sweet	\N
Past Vines	2	Top	\N	\N	A classic clothing piece from Marques Boutique.	Sweet	\N
Starting Mood	2	Top	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Summer Blackstar	2	Top	\N	\N	A classic clothing piece from Marques Boutique.	Sexy	\N
Green Slim-Fit Pants	2	Bottom	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Hoppy Berries	2	Bottom	\N	\N	A classic clothing piece from Marques Boutique.	Sweet	\N
Lively Youth	2	Bottom	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Midsummer Print	2	Bottom	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Shutters	2	Bottom	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Sleek Pants	2	Bottom	\N	\N	A classic clothing piece from Marques Boutique.	Elegant	\N
Down-to-Earth	2	Socks	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Everlasting Lace	2	Socks	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Fearless Night	2	Socks	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Free Spirit	2	Socks	\N	\N	A classic clothing piece from Marques Boutique.	Sexy	\N
Monochrome Stripes	2	Socks	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
White Tights	2	Socks	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Bejeweled Sandals	2	Shoes	\N	\N	One of the initial items acquired upon arrival in Miraland.	Sweet	\N
Comfortable Flats	2	Shoes	\N	\N	A classic clothing piece from Marques Boutique.	Elegant	\N
Daily Exercise	2	Shoes	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Skybound Heels	2	Shoes	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Zappy Sweetheart	2	Shoes	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Floral Hoops	2	Hair Accessory	\N	\N	A classic clothing piece from Marques Boutique.	Elegant	\N
Starlit Diadem	2	Hair Accessory	\N	\N	One of the initial items acquired upon arrival in Miraland.	Elegant	\N
Starry Hairband	2	Hair Accessory	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Bestseller's Crown	2	Headwear	\N	\N	A classic clothing piece from Marques Boutique.	Cool	\N
Superstar Vibes	2	Headwear	\N	\N	One of the initial items acquired upon arrival in Miraland.	Sexy	\N
Serene Bloom	2	Earrings	\N	\N	A classic clothing piece from Marques Boutique.	Fresh	\N
Wings of Longing	2	Earrings	\N	\N	A classic clothing piece from Marques Boutique.	Sweet	\N
Cherished Moment	2	Neckwear	\N	\N	A classic clothing piece from Marques Boutique.	Elegant	\N
Lucky Knot	2	Bracelet	\N	\N	A piece of journey anecdote.	Elegant	\N
Pink Pearls	2	Bracelet	\N	\N	A classic clothing piece from Marques Boutique.	Sweet	\N
Snowflake Bracelet	2	Bracelet	\N	\N	A classic clothing piece from Marques Boutique.	Elegant	\N
\.


--
-- Data for Name: level_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.level_details ("Name", "Rarity", "Slot", "Outfit", "Level", "Elegant", "Fresh", "Sweet", "Sexy", "Cool", "Blings", "Threads", "Bubbles", "Style") FROM stdin;
Floral Dreamscape	4	Backpiece	Flowing Colors	0	13	107	52	15	15	0	0	0	Fresh
Floral Dreamscape	4	Backpiece	Flowing Colors	1	0	134	65	19	19	410	5	12	Fresh
Floral Dreamscape	4	Backpiece	Flowing Colors	2	21	166	81	24	24	1220	16	36	Fresh
Floral Dreamscape	4	Backpiece	Flowing Colors	3	25	204	99	29	29	2440	32	72	Fresh
Floral Dreamscape	4	Backpiece	Flowing Colors	4	30	247	120	35	35	3980	53	120	Fresh
Floral Dreamscape	4	Backpiece	Flowing Colors	5	36	295	143	42	42	5800	77	177	Fresh
Fishing Bliss	4	Backpiece	Rippling Serenity	0	14	15	43	9	84	0	0	0	Cool
Fishing Bliss	4	Backpiece	Rippling Serenity	1	18	19	54	12	105	410	5	12	Cool
Fishing Bliss	4	Backpiece	Rippling Serenity	2	22	24	67	14	131	1220	16	36	Cool
Fishing Bliss	4	Backpiece	Rippling Serenity	3	27	29	82	18	160	2440	32	72	Cool
Fishing Bliss	4	Backpiece	Rippling Serenity	4	33	35	99	21	194	3980	53	120	Cool
Fishing Bliss	4	Backpiece	Rippling Serenity	5	39	42	19	25	231	5800	77	177	Cool
Golden Daylight	4	Backpiece	Afternoon Shine	0	0	13	83	15	42	0	0	0	Sweet
Golden Daylight	4	Backpiece	Afternoon Shine	1	14	0	104	19	53	410	5	12	Sweet
Golden Daylight	4	Backpiece	Afternoon Shine	2	18	21	129	24	66	1220	16	36	Sweet
Golden Daylight	4	Backpiece	Afternoon Shine	3	21	25	158	29	80	2440	32	72	Sweet
Golden Daylight	4	Backpiece	Afternoon Shine	4	26	30	191	35	97	3980	53	120	Sweet
Golden Daylight	4	Backpiece	Afternoon Shine	5	31	36	229	42	116	5800	77	177	Sweet
Loaded with Hope	3	Backpiece	\N	0	0	38	78	14	10	0	0	0	Sweet
Loaded with Hope	3	Backpiece	\N	1	14	48	98	18	13	140	2	6	Sweet
Loaded with Hope	3	Backpiece	\N	2	18	59	121	22	16	410	6	18	Sweet
Loaded with Hope	3	Backpiece	\N	3	21	73	149	27	19	820	11	36	Sweet
Loaded with Hope	3	Backpiece	\N	4	26	88	180	33	23	1330	18	60	Sweet
Loaded with Hope	3	Backpiece	\N	5	31	105	215	39	28	1940	26	88	Sweet
Verdant Dance	4	Bottom	\N	0	181	62	38	351	43	0	0	0	Sexy
Verdant Dance	4	Bottom	\N	1	227	78	48	439	54	1350	18	40	Sexy
Verdant Dance	4	Bottom	\N	2	281	0	59	545	67	4050	54	120	Sexy
Verdant Dance	4	Bottom	\N	3	344	118	73	667	82	8100	108	240	Sexy
Verdant Dance	4	Bottom	\N	4	417	143	88	808	99	13230	176	400	Sexy
Verdant Dance	4	Bottom	\N	5	498	171	105	966	119	19310	257	592	Sexy
Stained Palette	4	Bottom	Flowing Colors	0	51	337	174	51	61	0	0	0	Fresh
Stained Palette	4	Bottom	Flowing Colors	1	64	422	218	64	77	1350	18	40	Fresh
Stained Palette	4	Bottom	Flowing Colors	2	80	523	270	80	95	4050	54	120	Fresh
Stained Palette	4	Bottom	Flowing Colors	3	0	641	331	0	116	8100	108	240	Fresh
Stained Palette	4	Bottom	Flowing Colors	4	118	776	401	118	141	13230	176	400	Fresh
Stained Palette	4	Bottom	Flowing Colors	5	141	927	479	141	168	19310	257	592	Fresh
Refreshing Droplet	4	Bottom	\N	0	145	49	287	27	41	0	0	0	Sweet
Refreshing Droplet	4	Bottom	\N	1	182	62	359	34	52	1350	18	40	Sweet
Refreshing Droplet	4	Bottom	\N	2	225	76	445	42	64	4050	54	120	Sweet
Refreshing Droplet	4	Bottom	\N	3	276	94	546	52	78	8100	108	240	Sweet
Refreshing Droplet	4	Bottom	\N	4	334	113	661	63	95	13230	176	400	Sweet
Refreshing Droplet	4	Bottom	\N	5	399	135	790	75	113	19310	257	592	Sweet
Riding the Breeze	4	Bottom	Tidal Shark Mirage	0	59	170	44	53	349	0	0	0	Cool
Riding the Breeze	4	Bottom	Tidal Shark Mirage	1	74	213	55	67	437	1350	18	40	Cool
Riding the Breeze	4	Bottom	Tidal Shark Mirage	2	92	264	69	83	0	4050	54	120	Fresh
Riding the Breeze	4	Bottom	Tidal Shark Mirage	3	13	323	84	101	664	8100	108	240	Cool
Riding the Breeze	4	Bottom	Tidal Shark Mirage	4	136	391	102	122	803	13230	176	400	Cool
Riding the Breeze	4	Bottom	Tidal Shark Mirage	5	163	468	121	146	960	19310	257	592	Cool
Sunny Agenda	4	Bottom	Afternoon Shine	0	52	32	351	61	178	0	0	0	Sweet
Sunny Agenda	4	Bottom	Afternoon Shine	1	65	40	439	77	223	1350	18	40	Sweet
Sunny Agenda	4	Bottom	Afternoon Shine	2	81	50	545	95	276	4050	54	120	Sweet
Sunny Agenda	4	Bottom	Afternoon Shine	3	99	61	667	116	339	8100	108	240	Sweet
Sunny Agenda	4	Bottom	Afternoon Shine	4	120	74	808	141	410	13230	176	400	Sweet
Sunny Agenda	4	Bottom	Afternoon Shine	5	143	88	966	168	490	19310	257	592	Sweet
Babbling Brook	4	Bottom	Rippling Serenity	0	50	63	0	49	336	0	0	0	Cool
Babbling Brook	4	Bottom	Rippling Serenity	1	63	79	222	62	420	1350	18	40	Cool
Babbling Brook	4	Bottom	Rippling Serenity	2	78	98	275	76	521	4050	54	120	Cool
Babbling Brook	4	Bottom	Rippling Serenity	3	95	120	337	94	639	8100	108	240	Cool
Babbling Brook	4	Bottom	Rippling Serenity	4	0	145	408	113	773	13230	176	400	Cool
Babbling Brook	4	Bottom	Rippling Serenity	5	138	174	487	135	924	19310	257	592	Cool
Immersive Study	3	Bottom	A Beautiful Day	0	256	46	133	38	27	0	0	0	Elegant
Immersive Study	3	Bottom	A Beautiful Day	1	320	58	167	48	34	450	6	20	Elegant
Immersive Study	3	Bottom	A Beautiful Day	2	397	72	207	59	42	1350	18	60	Elegant
Immersive Study	3	Bottom	A Beautiful Day	3	487	88	253	73	52	2700	36	120	Elegant
Immersive Study	3	Bottom	A Beautiful Day	4	589	106	306	88	63	4410	59	200	Elegant
Immersive Study	3	Bottom	A Beautiful Day	5	704	127	366	105	0	6440	86	296	Elegant
Bouncy Blue	3	Bottom	\N	0	25	136	43	35	261	0	0	0	Cool
Bouncy Blue	3	Bottom	\N	1	32	170	54	44	327	450	6	20	Cool
Bouncy Blue	3	Bottom	\N	2	39	211	67	55	405	1350	18	60	Cool
Bouncy Blue	3	Bottom	\N	3	48	259	82	67	496	2700	36	120	Cool
Bouncy Blue	3	Bottom	\N	4	58	313	99	81	601	4410	59	200	Cool
Bouncy Blue	3	Bottom	\N	5	69	374	19	0	718	6440	86	296	Cool
Unruly Plaid	3	Bottom	\N	0	28	39	39	127	267	0	0	0	Cool
Unruly Plaid	3	Bottom	\N	1	35	49	49	159	334	450	6	20	Cool
Unruly Plaid	3	Bottom	\N	2	44	61	61	197	414	1350	18	60	Cool
Unruly Plaid	3	Bottom	\N	3	54	75	75	242	508	2700	36	120	Cool
Unruly Plaid	3	Bottom	\N	4	65	90	90	293	615	4410	59	200	Cool
Unruly Plaid	3	Bottom	\N	5	77	108	108	350	735	6440	86	296	Cool
Deeply Engraved	3	Bottom	\N	0	33	32	48	131	256	0	0	0	Cool
Deeply Engraved	3	Bottom	\N	1	42	40	60	164	320	450	6	20	Cool
Deeply Engraved	3	Bottom	\N	2	52	50	75	204	397	1350	18	60	Cool
Deeply Engraved	3	Bottom	\N	3	63	61	92	249	487	2700	36	120	Cool
Deeply Engraved	3	Bottom	\N	4	76	74	0	302	589	4410	59	200	Cool
Deeply Engraved	3	Bottom	\N	5	91	88	132	361	704	6440	86	296	Cool
Free Will	3	Bottom	Carnival Ode	0	34	26	42	132	266	0	0	0	Cool
Free Will	3	Bottom	Carnival Ode	1	43	33	53	165	333	450	6	20	Cool
Free Will	3	Bottom	Carnival Ode	2	53	41	66	205	413	1350	18	60	Cool
Free Will	3	Bottom	Carnival Ode	3	65	50	80	251	506	2700	36	120	Cool
Free Will	3	Bottom	Carnival Ode	4	79	60	0	304	612	4410	59	200	Cool
Free Will	3	Bottom	Carnival Ode	5	94	72	116	363	732	6440	86	296	Cool
Pink Branches	3	Bottom	\N	0	24	35	257	49	136	0	0	0	Sweet
Pink Branches	3	Bottom	\N	1	30	44	322	62	170	450	6	20	Sweet
Pink Branches	3	Bottom	\N	2	38	55	399	76	211	1350	18	60	Sweet
Pink Branches	3	Bottom	\N	3	46	67	489	94	259	2700	36	120	Sweet
Pink Branches	3	Bottom	\N	4	56	81	592	113	313	4410	59	200	Sweet
Pink Branches	3	Bottom	\N	5	66	0	707	135	374	6440	86	296	Sweet
Azure Viola	3	Bottom	\N	0	29	35	263	43	130	0	0	0	Sweet
Azure Viola	3	Bottom	\N	1	37	44	329	54	163	450	6	20	Sweet
Azure Viola	3	Bottom	\N	2	45	55	408	67	202	1350	18	60	Sweet
Azure Viola	3	Bottom	\N	3	56	67	500	82	247	2700	36	120	Sweet
Azure Viola	3	Bottom	\N	4	67	81	605	99	299	4410	59	200	Sweet
Azure Viola	3	Bottom	\N	5	80	0	724	19	358	6440	86	296	Sweet
Plain Flowers	3	Bottom	\N	0	48	47	252	31	122	0	0	0	Sweet
Plain Flowers	3	Bottom	\N	1	60	59	315	39	153	450	6	20	Sweet
Plain Flowers	3	Bottom	\N	2	75	73	391	49	190	1350	18	60	Sweet
Plain Flowers	3	Bottom	\N	3	92	90	479	59	232	2700	36	120	Sweet
Plain Flowers	3	Bottom	\N	4	0	109	580	72	281	4410	59	200	Sweet
Plain Flowers	3	Bottom	\N	5	132	130	693	86	336	6440	86	296	Sweet
Brown Orange Plaid	3	Bottom	\N	0	46	34	262	29	128	0	0	0	Sweet
Brown Orange Plaid	3	Bottom	\N	1	58	43	328	37	160	450	6	20	Sweet
Brown Orange Plaid	3	Bottom	\N	2	72	53	407	45	199	1350	18	60	Sweet
Brown Orange Plaid	3	Bottom	\N	3	88	65	498	56	244	2700	36	120	Sweet
Brown Orange Plaid	3	Bottom	\N	4	106	79	603	67	295	4410	59	200	Sweet
Brown Orange Plaid	3	Bottom	\N	5	127	94	721	80	352	6440	86	296	Sweet
Dark Blue Fantasy	3	Bottom	\N	0	39	35	266	26	135	0	0	0	Sweet
Dark Blue Fantasy	3	Bottom	\N	1	49	44	333	33	169	450	6	20	Sweet
Dark Blue Fantasy	3	Bottom	\N	2	61	55	413	41	210	1350	18	60	Sweet
Dark Blue Fantasy	3	Bottom	\N	3	75	67	506	50	257	2700	36	120	Sweet
Dark Blue Fantasy	3	Bottom	\N	4	90	81	612	60	311	4410	59	200	Sweet
Dark Blue Fantasy	3	Bottom	\N	5	108	0	732	72	372	6440	86	296	Sweet
Spinning Mood	3	Bottom	\N	0	277	28	135	31	29	0	0	0	Elegant
Spinning Mood	3	Bottom	\N	1	347	35	169	39	37	450	6	20	Elegant
Spinning Mood	3	Bottom	\N	2	430	44	210	49	45	1350	18	60	Elegant
Spinning Mood	3	Bottom	\N	3	527	54	257	59	56	2700	36	120	Elegant
Spinning Mood	3	Bottom	\N	4	638	65	311	72	67	4410	59	200	Elegant
Spinning Mood	3	Bottom	\N	5	762	77	372	86	80	6440	86	296	Elegant
Foliage Musings	3	Bottom	\N	0	28	259	134	35	43	0	0	0	Fresh
Foliage Musings	3	Bottom	\N	1	35	324	168	44	54	450	6	20	Fresh
Foliage Musings	3	Bottom	\N	2	44	402	208	55	67	1350	18	60	Fresh
Foliage Musings	3	Bottom	\N	3	54	493	255	67	82	2700	36	120	Fresh
Foliage Musings	3	Bottom	\N	4	65	596	309	81	99	4410	59	200	Fresh
Foliage Musings	3	Bottom	\N	5	77	713	369	0	119	6440	86	296	Fresh
Rosy Dance Skirt	3	Bottom	\N	0	260	34	129	42	35	0	0	0	Elegant
Rosy Dance Skirt	3	Bottom	\N	1	325	43	162	53	44	450	6	20	Elegant
Rosy Dance Skirt	3	Bottom	\N	2	403	53	200	66	55	1350	18	60	Elegant
Rosy Dance Skirt	3	Bottom	\N	3	494	65	246	80	67	2700	36	120	Elegant
Rosy Dance Skirt	3	Bottom	\N	4	598	79	297	0	81	4410	59	200	Elegant
Rosy Dance Skirt	3	Bottom	\N	5	75	94	355	116	0	6440	86	296	Sweet
Shorts of Faith	3	Bottom	\N	0	32	132	42	39	255	0	0	0	Cool
Shorts of Faith	3	Bottom	\N	1	40	165	53	49	319	450	6	20	Cool
Shorts of Faith	3	Bottom	\N	2	50	205	66	61	396	1350	18	60	Cool
Shorts of Faith	3	Bottom	\N	3	61	251	80	75	485	2700	36	120	Cool
Shorts of Faith	3	Bottom	\N	4	74	304	0	90	587	4410	59	200	Cool
Shorts of Faith	3	Bottom	\N	5	88	363	116	108	702	6440	86	296	Cool
Gang Rules	3	Bottom	\N	0	130	43	36	33	258	0	0	0	Cool
Gang Rules	3	Bottom	\N	1	163	54	45	42	323	450	6	20	Cool
Gang Rules	3	Bottom	\N	2	202	67	56	52	400	1350	18	60	Cool
Gang Rules	3	Bottom	\N	3	247	82	69	63	491	2700	36	120	Cool
Gang Rules	3	Bottom	\N	4	299	99	83	76	594	4410	59	200	Cool
Gang Rules	3	Bottom	\N	5	358	19	99	91	710	6440	86	296	Cool
Patchwork Pants	3	Bottom	\N	0	262	28	126	44	40	0	0	0	Elegant
Patchwork Pants	3	Bottom	\N	1	328	35	158	55	50	450	6	20	Elegant
Patchwork Pants	3	Bottom	\N	2	407	44	196	69	62	1350	18	60	Elegant
Patchwork Pants	3	Bottom	\N	3	498	54	240	84	76	2700	36	120	Elegant
Patchwork Pants	3	Bottom	\N	4	603	65	290	102	92	4410	59	200	Elegant
Patchwork Pants	3	Bottom	\N	5	721	77	347	121	110	6440	86	296	Elegant
Fishy Fantasy	3	Bottom	\N	0	130	257	40	47	27	0	0	0	Fresh
Fishy Fantasy	3	Bottom	\N	1	163	322	50	59	34	450	6	20	Fresh
Fishy Fantasy	3	Bottom	\N	2	202	399	62	73	42	1350	18	60	Fresh
Fishy Fantasy	3	Bottom	\N	3	247	489	76	90	52	2700	36	120	Fresh
Fishy Fantasy	3	Bottom	\N	4	299	592	92	109	63	4410	59	200	Fresh
Fishy Fantasy	3	Bottom	\N	5	358	707	110	130	75	6440	86	296	Fresh
Wishful Pact	3	Bottom	\N	0	270	30	135	40	26	0	0	0	Elegant
Wishful Pact	3	Bottom	\N	1	338	38	169	50	33	450	6	20	Elegant
Wishful Pact	3	Bottom	\N	2	419	47	210	62	41	1350	18	60	Elegant
Wishful Pact	3	Bottom	\N	3	513	57	257	76	50	2700	36	120	Elegant
Wishful Pact	3	Bottom	\N	4	621	69	311	92	60	4410	59	200	Elegant
Wishful Pact	3	Bottom	\N	5	743	83	372	110	72	6440	86	296	Elegant
Noir Creed 02	3	Bottom	\N	0	43	46	26	127	258	0	0	0	Cool
Noir Creed 02	3	Bottom	\N	1	54	58	33	159	323	450	6	20	Cool
Noir Creed 02	3	Bottom	\N	2	67	72	41	197	400	1350	18	60	Cool
Noir Creed 02	3	Bottom	\N	3	82	88	50	242	491	2700	36	120	Cool
Noir Creed 02	3	Bottom	\N	4	99	106	60	293	594	4410	59	200	Cool
Noir Creed 02	3	Bottom	\N	5	119	127	72	350	710	6440	86	296	Cool
Powder Blue	3	Bottom	\N	0	45	262	138	28	27	0	0	0	Fresh
Powder Blue	3	Bottom	\N	1	57	328	173	35	34	450	6	20	Fresh
Powder Blue	3	Bottom	\N	2	70	407	214	44	42	1350	18	60	Fresh
Powder Blue	3	Bottom	\N	3	86	498	263	54	52	2700	36	120	Fresh
Powder Blue	3	Bottom	\N	4	104	603	318	65	63	4410	59	200	Fresh
Powder Blue	3	Bottom	\N	5	124	721	380	77	75	6440	86	296	Fresh
Elegant Hibiscus	3	Bottom	\N	0	36	122	255	39	47	0	0	0	Sweet
Elegant Hibiscus	3	Bottom	\N	1	45	153	319	49	59	450	6	20	Sweet
Elegant Hibiscus	3	Bottom	\N	2	56	190	396	61	73	1350	18	60	Sweet
Elegant Hibiscus	3	Bottom	\N	3	69	232	485	75	90	2700	36	120	Sweet
Elegant Hibiscus	3	Bottom	\N	4	83	281	587	90	109	4410	59	200	Sweet
Elegant Hibiscus	3	Bottom	\N	5	99	336	702	108	130	6440	86	296	Sweet
Cyan Mist	3	Bottom	\N	0	40	29	135	256	40	0	0	0	Sexy
Cyan Mist	3	Bottom	\N	1	50	37	169	320	50	450	6	20	Sexy
Cyan Mist	3	Bottom	\N	2	62	45	210	397	62	1350	18	60	Sexy
Cyan Mist	3	Bottom	\N	3	76	56	257	487	76	2700	36	120	Sexy
Cyan Mist	3	Bottom	\N	4	92	67	311	589	92	4410	59	200	Sexy
Cyan Mist	3	Bottom	\N	5	110	80	372	704	110	6440	86	296	Sexy
Tree Shade	3	Bottom	\N	0	125	256	46	40	32	0	0	0	Fresh
Tree Shade	3	Bottom	\N	1	157	320	58	50	40	450	6	20	Fresh
Tree Shade	3	Bottom	\N	2	194	397	72	62	50	1350	18	60	Fresh
Tree Shade	3	Bottom	\N	3	238	487	88	76	61	2700	36	120	Fresh
Tree Shade	3	Bottom	\N	4	288	589	106	92	74	4410	59	200	Fresh
Tree Shade	3	Bottom	\N	5	344	704	127	110	88	6440	86	296	Fresh
Single Strap Blues	3	Bottom	\N	0	44	46	247	40	123	0	0	0	Sweet
Single Strap Blues	3	Bottom	\N	1	55	58	309	50	154	450	6	20	Sweet
Single Strap Blues	3	Bottom	\N	2	69	72	383	62	191	1350	18	60	Sweet
Single Strap Blues	3	Bottom	\N	3	84	88	470	76	234	2700	36	120	Sweet
Single Strap Blues	3	Bottom	\N	4	102	106	569	92	283	4410	59	200	Sweet
Single Strap Blues	3	Bottom	\N	5	121	127	680	110	339	6440	86	296	Sweet
Deep Blue Companion	3	Bottom	\N	0	33	130	25	42	271	0	0	0	Cool
Deep Blue Companion	3	Bottom	\N	1	42	163	32	53	339	450	6	20	Cool
Deep Blue Companion	3	Bottom	\N	2	52	202	39	66	421	1350	18	60	Cool
Deep Blue Companion	3	Bottom	\N	3	63	247	48	80	515	2700	36	120	Cool
Deep Blue Companion	3	Bottom	\N	4	76	299	58	0	624	4410	59	200	Cool
Deep Blue Companion	3	Bottom	\N	5	91	358	69	116	746	6440	86	296	Cool
Problem-Solver	3	Bottom	Guard's Resolve	0	48	136	24	28	263	0	0	0	Cool
Problem-Solver	3	Bottom	Guard's Resolve	1	60	170	30	35	329	450	6	20	Cool
Problem-Solver	3	Bottom	Guard's Resolve	2	75	211	38	44	408	1350	18	60	Cool
Problem-Solver	3	Bottom	Guard's Resolve	3	92	259	46	54	500	2700	36	120	Cool
Problem-Solver	3	Bottom	Guard's Resolve	4	0	313	56	65	605	4410	59	200	Cool
Problem-Solver	3	Bottom	Guard's Resolve	5	132	374	66	77	724	6440	86	296	Cool
Operation Summer	3	Bottom	\N	0	40	247	45	41	127	0	0	0	Fresh
Operation Summer	3	Bottom	\N	1	50	309	57	52	159	450	6	20	Fresh
Operation Summer	3	Bottom	\N	2	62	383	70	64	197	1350	18	60	Fresh
Operation Summer	3	Bottom	\N	3	76	470	86	78	242	2700	36	120	Fresh
Operation Summer	3	Bottom	\N	4	92	569	104	95	293	4410	59	200	Fresh
Operation Summer	3	Bottom	\N	5	110	680	124	113	350	6440	86	296	Fresh
Swift Leap	3	Bottom	\N	0	50	31	129	30	260	0	0	0	Cool
Swift Leap	3	Bottom	\N	1	63	39	162	38	325	450	6	20	Cool
Swift Leap	3	Bottom	\N	2	78	49	200	47	403	1350	18	60	Cool
Swift Leap	3	Bottom	\N	3	95	59	246	57	494	2700	36	120	Cool
Swift Leap	3	Bottom	\N	4	0	72	297	69	598	4410	59	200	Cool
Swift Leap	3	Bottom	\N	5	138	86	355	83	715	6440	86	296	Cool
With Efficiency	3	Bottom	Refined Grace	0	48	50	41	34	328	0	0	0	Cool
With Efficiency	3	Bottom	Refined Grace	1	60	63	52	43	410	450	6	20	Cool
With Efficiency	3	Bottom	Refined Grace	2	75	78	64	53	509	1350	18	60	Cool
With Efficiency	3	Bottom	Refined Grace	3	92	95	78	65	624	2700	36	120	Cool
With Efficiency	3	Bottom	Refined Grace	4	0	0	95	79	755	4410	59	200	Cool
With Efficiency	3	Bottom	Refined Grace	5	132	138	113	94	902	6440	86	296	Cool
Late Slumber	3	Bottom	\N	0	39	130	246	45	39	0	0	0	Sweet
Late Slumber	3	Bottom	\N	1	49	163	308	57	49	450	6	20	Sweet
Late Slumber	3	Bottom	\N	2	61	202	382	70	61	1350	18	60	Sweet
Late Slumber	3	Bottom	\N	3	75	247	468	86	75	2700	36	120	Sweet
Late Slumber	3	Bottom	\N	4	90	299	566	104	90	4410	59	200	Sweet
Late Slumber	3	Bottom	\N	5	108	358	677	124	108	6440	86	296	Sweet
Shutters	2	Bottom	\N	0	76	14	22	29	159	0	0	0	Cool
Shutters	2	Bottom	\N	1	95	18	28	37	199	270	4	12	Cool
Shutters	2	Bottom	\N	2	118	22	35	45	247	810	11	36	Cool
Shutters	2	Bottom	\N	3	145	27	42	56	303	1620	22	72	Cool
Shutters	2	Bottom	\N	4	175	33	51	67	366	2650	36	120	Cool
Shutters	2	Bottom	\N	5	209	39	61	80	438	3870	52	177	Cool
Green Slim-Fit Pants	2	Bottom	\N	0	28	24	24	74	149	0	0	0	Cool
Green Slim-Fit Pants	2	Bottom	\N	1	35	30	30	93	187	270	4	12	Cool
Green Slim-Fit Pants	2	Bottom	\N	2	44	38	38	0	231	810	11	36	Cool
Green Slim-Fit Pants	2	Bottom	\N	3	54	46	46	141	284	1620	22	72	Cool
Green Slim-Fit Pants	2	Bottom	\N	4	65	56	56	171	343	2650	36	120	Cool
Green Slim-Fit Pants	2	Bottom	\N	5	77	66	66	204	410	3870	52	177	Cool
Hoppy Berries	2	Bottom	\N	0	19	75	155	23	28	0	0	0	Sweet
Hoppy Berries	2	Bottom	\N	1	24	94	194	29	35	270	4	12	Sweet
Hoppy Berries	2	Bottom	\N	2	30	0	241	36	44	810	11	36	Sweet
Hoppy Berries	2	Bottom	\N	3	37	143	295	44	54	1620	22	72	Sweet
Hoppy Berries	2	Bottom	\N	4	44	173	357	53	65	2650	36	120	Sweet
Hoppy Berries	2	Bottom	\N	5	53	207	427	64	77	3870	52	177	Sweet
Sleek Pants	2	Bottom	\N	0	155	0	18	81	29	0	0	0	Elegant
Sleek Pants	2	Bottom	\N	1	194	22	23	102	37	270	4	12	Elegant
Sleek Pants	2	Bottom	\N	2	241	27	28	126	45	810	11	36	Elegant
Sleek Pants	2	Bottom	\N	3	295	33	35	154	56	1620	22	72	Elegant
Sleek Pants	2	Bottom	\N	4	357	40	42	187	67	2650	36	120	Elegant
Sleek Pants	2	Bottom	\N	5	427	47	50	223	80	3870	52	177	Elegant
Midsummer Print	2	Bottom	\N	0	81	156	16	25	22	0	0	0	Fresh
Midsummer Print	2	Bottom	\N	1	102	195	20	32	28	270	4	12	Fresh
Midsummer Print	2	Bottom	\N	2	126	242	25	39	35	810	11	36	Fresh
Midsummer Print	2	Bottom	\N	3	154	297	31	48	42	1620	22	72	Fresh
Midsummer Print	2	Bottom	\N	4	187	359	37	58	51	2650	36	120	Fresh
Midsummer Print	2	Bottom	\N	5	223	429	44	69	61	3870	52	177	Fresh
Lively Youth	2	Bottom	\N	0	23	150	28	23	77	0	0	0	Fresh
Lively Youth	2	Bottom	\N	1	29	188	35	29	0	270	4	12	Fresh
Lively Youth	2	Bottom	\N	2	36	233	44	36	120	810	11	36	Fresh
Lively Youth	2	Bottom	\N	3	44	285	54	44	147	1620	22	72	Fresh
Lively Youth	2	Bottom	\N	4	53	345	65	53	178	2650	36	120	Fresh
Lively Youth	2	Bottom	\N	5	64	413	77	64	212	3870	52	177	Fresh
Ripened Squash	3	Bracelet	\N	0	10	80	9	10	41	0	0	0	Fresh
Ripened Squash	3	Bracelet	\N	1	13	100	0	13	52	140	2	6	Fresh
Ripened Squash	3	Bracelet	\N	2	16	124	14	16	64	410	6	18	Fresh
Ripened Squash	3	Bracelet	\N	3	19	152	18	19	78	820	11	36	Fresh
Ripened Squash	3	Bracelet	\N	4	23	184	21	23	95	1330	18	60	Fresh
Ripened Squash	3	Bracelet	\N	5	28	220	25	28	113	1940	26	88	Fresh
Lavenfringe Chains	3	Bracelet	\N	0	8	40	83	9	10	0	0	0	Sweet
Lavenfringe Chains	3	Bracelet	\N	1	10	50	104	12	13	140	2	6	Sweet
Lavenfringe Chains	3	Bracelet	\N	2	13	62	129	14	16	410	6	18	Sweet
Lavenfringe Chains	3	Bracelet	\N	3	16	76	158	18	19	820	11	36	Sweet
Lavenfringe Chains	3	Bracelet	\N	4	19	92	191	21	23	1330	18	60	Sweet
Lavenfringe Chains	3	Bracelet	\N	5	22	110	229	25	28	1940	26	88	Sweet
Orange Sun	3	Bracelet	\N	0	10	77	39	10	13	0	0	0	Fresh
Orange Sun	3	Bracelet	\N	1	13	0	49	13	0	140	2	6	Sweet
Orange Sun	3	Bracelet	\N	2	16	120	61	16	21	410	6	18	Fresh
Orange Sun	3	Bracelet	\N	3	19	147	75	19	25	820	11	36	Fresh
Orange Sun	3	Bracelet	\N	4	23	178	90	23	30	1330	18	60	Fresh
Orange Sun	3	Bracelet	\N	5	28	212	108	28	36	1940	26	88	Fresh
Blessing Nebula	3	Bracelet	\N	0	7	0	79	39	13	0	0	0	Sweet
Blessing Nebula	3	Bracelet	\N	1	9	15	99	49	0	140	2	6	Sweet
Blessing Nebula	3	Bracelet	\N	2	0	19	123	61	21	410	6	18	Sweet
Blessing Nebula	3	Bracelet	\N	3	14	23	151	75	25	820	11	36	Sweet
Blessing Nebula	3	Bracelet	\N	4	0	28	182	90	30	1330	18	60	Sweet
Blessing Nebula	3	Bracelet	\N	5	20	33	218	108	36	1940	26	88	Sweet
Lucky Knot	2	Bracelet	\N	0	47	7	23	6	7	0	0	0	Elegant
Lucky Knot	2	Bracelet	\N	1	59	9	29	8	9	80	1	3	Elegant
Lucky Knot	2	Bracelet	\N	2	73	0	36	10	0	240	3	10	Elegant
Lucky Knot	2	Bracelet	\N	3	90	14	44	12	14	480	6	20	Elegant
Lucky Knot	2	Bracelet	\N	4	109	0	53	14	7	790	10	34	Elegant
Lucky Knot	2	Bracelet	\N	5	130	20	64	0	20	1150	15	50	Elegant
Zephyr Bracelet	3	Bracelet	\N	0	80	39	10	12	9	0	0	0	Elegant
Zephyr Bracelet	3	Bracelet	\N	1	100	49	13	15	12	140	2	6	Elegant
Zephyr Bracelet	3	Bracelet	\N	2	124	61	16	19	14	410	6	18	Elegant
Zephyr Bracelet	3	Bracelet	\N	3	152	75	19	23	18	820	11	36	Elegant
Zephyr Bracelet	3	Bracelet	\N	4	184	90	23	28	21	1330	18	60	Elegant
Zephyr Bracelet	3	Bracelet	\N	5	220	108	28	33	25	1940	26	88	Elegant
Skilled Hunter	3	Bracelet	\N	0	0	0	9	38	80	0	0	0	Cool
Skilled Hunter	3	Bracelet	\N	1	14	15	0	48	100	140	2	6	Cool
Skilled Hunter	3	Bracelet	\N	2	18	19	14	59	124	410	6	18	Cool
Skilled Hunter	3	Bracelet	\N	3	21	23	18	73	152	820	11	36	Cool
Skilled Hunter	3	Bracelet	\N	4	26	28	21	88	184	1330	18	60	Cool
Skilled Hunter	3	Bracelet	\N	5	31	33	25	105	220	1940	26	88	Cool
Diligent Agenda	3	Bracelet	Refined Grace	0	15	14	16	16	90	0	0	0	Cool
Diligent Agenda	3	Bracelet	Refined Grace	1	19	18	20	20	113	140	2	6	Cool
Diligent Agenda	3	Bracelet	Refined Grace	2	24	22	25	25	140	410	6	18	Cool
Diligent Agenda	3	Bracelet	Refined Grace	3	29	27	31	31	171	820	11	36	Cool
Diligent Agenda	3	Bracelet	Refined Grace	4	35	33	37	37	207	1330	18	60	Cool
Diligent Agenda	3	Bracelet	Refined Grace	5	42	39	44	44	248	1940	26	88	Cool
Distant Twinkle	5	Bracelet	Blossoming Stars	0	67	142	14	13	19	0	0	0	Fresh
Distant Twinkle	5	Bracelet	Blossoming Stars	1	84	178	18	0	24	680	9	19	Fresh
Distant Twinkle	5	Bracelet	Blossoming Stars	2	104	221	22	21	30	2030	27	57	Fresh
Distant Twinkle	5	Bracelet	Blossoming Stars	3	128	270	27	25	37	4060	54	114	Fresh
Distant Twinkle	5	Bracelet	Blossoming Stars	4	155	327	33	30	44	6630	88	190	Fresh
Distant Twinkle	5	Bracelet	Blossoming Stars	5	185	391	39	36	53	9670	129	282	Fresh
Fleeting Snowfall	3	Bracelet	\N	0	77	14	8	39	12	0	0	0	Elegant
Fleeting Snowfall	3	Bracelet	\N	1	0	18	10	49	15	140	2	6	Sexy
Fleeting Snowfall	3	Bracelet	\N	2	120	22	13	61	19	410	6	18	Elegant
Fleeting Snowfall	3	Bracelet	\N	3	147	27	16	75	23	820	11	36	Elegant
Fleeting Snowfall	3	Bracelet	\N	4	178	33	19	90	28	1330	18	60	Elegant
Fleeting Snowfall	3	Bracelet	\N	5	212	39	22	108	33	1940	26	88	Elegant
Peachy Nostalgia	3	Bracelet	\N	0	0	40	75	0	13	0	0	0	Sweet
Peachy Nostalgia	3	Bracelet	\N	1	14	50	94	14	0	140	2	6	Sweet
Peachy Nostalgia	3	Bracelet	\N	2	18	62	0	18	21	410	6	18	Fresh
Peachy Nostalgia	3	Bracelet	\N	3	21	76	143	21	25	820	11	36	Sweet
Peachy Nostalgia	3	Bracelet	\N	4	26	92	173	26	30	1330	18	60	Sweet
Peachy Nostalgia	3	Bracelet	\N	5	31	110	207	31	36	1940	26	88	Sweet
Snowflake Bracelet	2	Bracelet	\N	0	47	7	24	6	6	0	0	0	Elegant
Snowflake Bracelet	2	Bracelet	\N	1	59	9	30	8	8	80	1	3	Elegant
Snowflake Bracelet	2	Bracelet	\N	2	73	0	38	10	10	240	3	10	Elegant
Snowflake Bracelet	2	Bracelet	\N	3	90	14	46	12	12	480	6	20	Elegant
Snowflake Bracelet	2	Bracelet	\N	4	109	0	56	14	14	790	10	34	Elegant
Snowflake Bracelet	2	Bracelet	\N	5	130	20	66	0	17	1150	15	50	Elegant
Pink Pearls	2	Bracelet	\N	0	5	5	48	9	24	0	0	0	Sweet
Pink Pearls	2	Bracelet	\N	1	7	7	60	12	30	80	1	3	Sweet
Pink Pearls	2	Bracelet	\N	2	8	8	75	14	38	240	3	10	Sweet
Pink Pearls	2	Bracelet	\N	3	10	10	92	18	46	480	6	20	Sweet
Pink Pearls	2	Bracelet	\N	4	0	0	0	21	56	790	10	34	Cool
Pink Pearls	2	Bracelet	\N	5	14	14	132	25	66	1150	15	50	Sweet
Forgotten Hair Tie	3	Bracelet	\N	0	13	39	75	0	12	0	0	0	Sweet
Forgotten Hair Tie	3	Bracelet	\N	1	0	49	94	14	15	140	2	6	Sweet
Forgotten Hair Tie	3	Bracelet	\N	2	21	61	0	18	19	410	6	18	Fresh
Forgotten Hair Tie	3	Bracelet	\N	3	25	75	143	21	23	820	11	36	Sweet
Forgotten Hair Tie	3	Bracelet	\N	4	30	90	173	26	28	1330	18	60	Sweet
Forgotten Hair Tie	3	Bracelet	\N	5	36	108	207	31	33	1940	26	88	Sweet
Languid Windmill	4	Bracelet	Hometown Breeze	0	14	108	52	0	18	0	0	0	Fresh
Languid Windmill	4	Bracelet	Hometown Breeze	1	18	135	65	14	23	410	5	12	Fresh
Languid Windmill	4	Bracelet	Hometown Breeze	2	22	168	81	18	28	1220	16	36	Fresh
Languid Windmill	4	Bracelet	Hometown Breeze	3	27	206	99	21	35	2440	32	72	Fresh
Languid Windmill	4	Bracelet	Hometown Breeze	4	33	249	120	26	42	3980	53	120	Fresh
Languid Windmill	4	Bracelet	Hometown Breeze	5	39	297	143	31	50	5800	77	177	Fresh
Unfulfilled Wish	4	Bracelet	Sweet Jazz Nights	0	51	0	108	13	19	0	0	0	Sweet
Unfulfilled Wish	4	Bracelet	Sweet Jazz Nights	1	64	14	135	0	24	410	5	12	Sweet
Unfulfilled Wish	4	Bracelet	Sweet Jazz Nights	2	80	18	168	21	30	1220	16	36	Sweet
Unfulfilled Wish	4	Bracelet	Sweet Jazz Nights	3	0	21	206	25	37	2440	32	72	Sweet
Unfulfilled Wish	4	Bracelet	Sweet Jazz Nights	4	118	26	249	30	44	3980	53	120	Sweet
Unfulfilled Wish	4	Bracelet	Sweet Jazz Nights	5	141	31	297	36	53	5800	77	177	Sweet
Gentle Touch	4	Bracelet	Bubbly Voyage	0	15	43	86	10	11	0	0	0	Sweet
Gentle Touch	4	Bracelet	Bubbly Voyage	1	19	54	108	13	14	410	5	12	Sweet
Gentle Touch	4	Bracelet	Bubbly Voyage	2	24	67	134	16	18	1220	16	36	Sweet
Gentle Touch	4	Bracelet	Bubbly Voyage	3	29	82	164	19	21	2440	32	72	Sweet
Gentle Touch	4	Bracelet	Bubbly Voyage	4	35	99	198	23	26	3980	53	120	Sweet
Gentle Touch	4	Bracelet	Bubbly Voyage	5	42	19	237	28	31	5800	77	177	Sweet
Wishful Honors	5	Chest Accessory	\N	0	129	22	65	20	18	0	0	0	Elegant
Wishful Honors	5	Chest Accessory	\N	1	162	28	82	25	23	680	9	19	Elegant
Wishful Honors	5	Chest Accessory	\N	2	200	35	101	31	28	2030	27	57	Elegant
Wishful Honors	5	Chest Accessory	\N	3	246	42	124	38	35	4060	54	114	Elegant
Wishful Honors	5	Chest Accessory	\N	4	297	51	150	46	42	6630	88	190	Elegant
Wishful Honors	5	Chest Accessory	\N	5	355	61	179	55	50	9670	129	282	Elegant
Galaxy's Desire	3	Chest Accessory	\N	0	39	0	9	14	77	0	0	0	Cool
Galaxy's Desire	3	Chest Accessory	\N	1	49	15	0	18	97	140	2	6	Cool
Galaxy's Desire	3	Chest Accessory	\N	2	61	19	14	22	120	410	6	18	Cool
Galaxy's Desire	3	Chest Accessory	\N	3	75	23	18	27	147	820	11	36	Cool
Galaxy's Desire	3	Chest Accessory	\N	4	90	28	21	33	178	1330	18	60	Cool
Galaxy's Desire	3	Chest Accessory	\N	5	108	33	25	39	212	1940	26	88	Cool
Unnamed Medal	3	Chest Accessory	Carnival Ode	0	13	14	12	36	75	0	0	0	Cool
Unnamed Medal	3	Chest Accessory	Carnival Ode	1	0	18	15	45	94	140	2	6	Cool
Unnamed Medal	3	Chest Accessory	Carnival Ode	2	21	22	19	56	0	410	6	18	Sexy
Unnamed Medal	3	Chest Accessory	Carnival Ode	3	25	27	23	69	143	820	11	36	Cool
Unnamed Medal	3	Chest Accessory	Carnival Ode	4	30	33	28	83	173	1330	18	60	Cool
Unnamed Medal	3	Chest Accessory	Carnival Ode	5	36	39	33	99	207	1940	26	88	Cool
Glorious Calling	3	Chest Accessory	Guard's Resolve	0	10	36	13	14	76	0	0	0	Cool
Glorious Calling	3	Chest Accessory	Guard's Resolve	1	13	45	0	18	95	140	2	6	Cool
Glorious Calling	3	Chest Accessory	Guard's Resolve	2	16	56	21	22	118	410	6	18	Cool
Glorious Calling	3	Chest Accessory	Guard's Resolve	3	19	69	25	27	145	820	11	36	Cool
Glorious Calling	3	Chest Accessory	Guard's Resolve	4	23	83	30	33	175	1330	18	60	Cool
Glorious Calling	3	Chest Accessory	Guard's Resolve	5	28	99	36	39	209	1940	26	88	Cool
Power Supply	4	Chest Accessory	Fully Charged	0	13	41	15	13	82	0	0	0	Cool
Power Supply	4	Chest Accessory	Fully Charged	1	0	52	19	0	103	410	5	12	Cool
Power Supply	4	Chest Accessory	Fully Charged	2	21	64	24	21	128	1220	16	36	Cool
Power Supply	4	Chest Accessory	Fully Charged	3	25	78	29	25	156	2440	32	72	Cool
Power Supply	4	Chest Accessory	Fully Charged	4	30	95	35	30	189	3980	53	120	Cool
Power Supply	4	Chest Accessory	Fully Charged	5	36	113	42	36	226	5800	77	177	Cool
Field Posy	4	Chest Accessory	Afternoon Shine	0	14	15	84	10	42	0	0	0	Sweet
Field Posy	4	Chest Accessory	Afternoon Shine	1	18	19	105	13	53	410	5	12	Sweet
Field Posy	4	Chest Accessory	Afternoon Shine	2	22	24	131	16	66	1220	16	36	Sweet
Field Posy	4	Chest Accessory	Afternoon Shine	3	27	29	160	19	80	2440	32	72	Sweet
Field Posy	4	Chest Accessory	Afternoon Shine	4	33	35	194	23	97	3980	53	120	Sweet
Field Posy	4	Chest Accessory	Afternoon Shine	5	39	42	231	28	116	5800	77	177	Sweet
Night's Soul	3	Choker	\N	0	14	9	8	39	80	0	0	0	Cool
Night's Soul	3	Choker	\N	1	18	0	10	49	100	140	2	6	Cool
Night's Soul	3	Choker	\N	2	22	14	13	61	124	410	6	18	Cool
Night's Soul	3	Choker	\N	3	27	18	16	75	152	820	11	36	Cool
Night's Soul	3	Choker	\N	4	33	21	19	90	184	1330	18	60	Cool
Night's Soul	3	Choker	\N	5	39	25	22	108	220	1940	26	88	Cool
Heartfelt Words	3	Choker	\N	0	8	10	79	13	39	0	0	0	Sweet
Heartfelt Words	3	Choker	\N	1	10	13	99	0	49	140	2	6	Sweet
Heartfelt Words	3	Choker	\N	2	13	16	123	21	61	410	6	18	Sweet
Heartfelt Words	3	Choker	\N	3	16	19	151	25	75	820	11	36	Sweet
Heartfelt Words	3	Choker	\N	4	19	23	182	30	90	1330	18	60	Sweet
Heartfelt Words	3	Choker	\N	5	22	28	218	36	108	1940	26	88	Sweet
Fluttering Heart	3	Choker	\N	0	9	9	8	41	83	0	0	0	Cool
Fluttering Heart	3	Choker	\N	1	0	0	10	52	104	140	2	6	Cool
Fluttering Heart	3	Choker	\N	2	14	14	13	64	129	410	6	18	Cool
Fluttering Heart	3	Choker	\N	3	18	18	16	78	158	820	11	36	Cool
Fluttering Heart	3	Choker	\N	4	21	21	19	95	191	1330	18	60	Cool
Fluttering Heart	3	Choker	\N	5	25	25	22	113	229	1940	26	88	Cool
Swan Sonata	5	Choker	Fairytale Swan	0	138	14	18	65	20	0	0	0	Elegant
Swan Sonata	5	Choker	Fairytale Swan	1	173	18	23	82	25	680	9	19	Elegant
Swan Sonata	5	Choker	Fairytale Swan	2	214	22	28	101	31	2030	27	57	Elegant
Swan Sonata	5	Choker	Fairytale Swan	3	263	27	35	124	38	4060	54	114	Elegant
Swan Sonata	5	Choker	Fairytale Swan	4	318	33	42	150	46	6630	88	190	Elegant
Swan Sonata	5	Choker	Fairytale Swan	5	380	39	50	179	55	9670	129	282	Elegant
Sealing Cocoon	5	Choker	Flutter Storm	0	67	24	13	131	20	0	0	0	Sexy
Sealing Cocoon	5	Choker	Flutter Storm	1	84	30	0	164	25	680	9	19	Sexy
Sealing Cocoon	5	Choker	Flutter Storm	2	104	38	21	204	31	2030	27	57	Sexy
Sealing Cocoon	5	Choker	Flutter Storm	3	128	46	25	249	38	4060	54	114	Sexy
Sealing Cocoon	5	Choker	Flutter Storm	4	155	56	30	302	46	6630	88	190	Sexy
Sealing Cocoon	5	Choker	Flutter Storm	5	185	66	36	361	55	9670	129	282	Sexy
Silent Whispers	3	Choker	\N	0	39	13	14	77	8	0	0	0	Sexy
Silent Whispers	3	Choker	\N	1	49	0	18	0	10	140	2	6	Elegant
Silent Whispers	3	Choker	\N	2	61	21	22	120	13	410	6	18	Sexy
Silent Whispers	3	Choker	\N	3	75	25	27	147	16	820	11	36	Sexy
Silent Whispers	3	Choker	\N	4	90	30	33	178	19	1330	18	60	Sexy
Silent Whispers	3	Choker	\N	5	108	36	39	212	22	1940	26	88	Sexy
Rebellious Will	3	Choker	\N	0	7	14	12	40	77	0	0	0	Cool
Rebellious Will	3	Choker	\N	1	9	18	15	50	97	140	2	6	Cool
Rebellious Will	3	Choker	\N	2	0	22	19	62	120	410	6	18	Cool
Rebellious Will	3	Choker	\N	3	14	27	23	76	147	820	11	36	Cool
Rebellious Will	3	Choker	\N	4	0	33	28	92	178	1330	18	60	Cool
Rebellious Will	3	Choker	\N	5	20	39	33	110	212	1940	26	88	Cool
Past Fragrance	4	Choker	Floral Memory	0	40	85	0	14	15	0	0	0	Fresh
Past Fragrance	4	Choker	Floral Memory	1	50	107	14	18	19	410	5	12	Fresh
Past Fragrance	4	Choker	Floral Memory	2	62	132	18	22	24	1220	16	36	Fresh
Past Fragrance	4	Choker	Floral Memory	3	76	162	21	27	29	2440	32	72	Fresh
Past Fragrance	4	Choker	Floral Memory	4	92	196	26	33	35	3980	53	120	Fresh
Past Fragrance	4	Choker	Floral Memory	5	110	234	31	39	42	5800	77	177	Fresh
Flowing Ripple	4	Choker	Bubbly Voyage	0	8	44	87	0	15	0	0	0	Sweet
Flowing Ripple	4	Choker	Bubbly Voyage	1	10	55	109	14	19	410	5	12	Sweet
Flowing Ripple	4	Choker	Bubbly Voyage	2	13	69	135	18	24	1220	16	36	Sweet
Flowing Ripple	4	Choker	Bubbly Voyage	3	16	84	166	21	29	2440	32	72	Sweet
Flowing Ripple	4	Choker	Bubbly Voyage	4	19	102	201	26	35	3980	53	120	Sweet
Flowing Ripple	4	Choker	Bubbly Voyage	5	22	121	240	31	42	5800	77	177	Sweet
First Impression	3	Choker	\N	0	0	39	79	8	12	0	0	0	Sweet
First Impression	3	Choker	\N	1	15	49	99	10	15	140	2	6	Sweet
First Impression	3	Choker	\N	2	19	61	123	13	19	410	6	18	Sweet
First Impression	3	Choker	\N	3	23	75	151	16	23	820	11	36	Sweet
First Impression	3	Choker	\N	4	28	90	182	19	28	1330	18	60	Sweet
First Impression	3	Choker	\N	5	33	108	218	22	33	1940	26	88	Sweet
Fluttering Wishes	5	Dress	\N	0	831	441	154	0	160	0	0	0	Elegant
Fluttering Wishes	5	Dress	\N	1	1039	552	193	144	200	4500	60	128	Elegant
Fluttering Wishes	5	Dress	\N	2	1289	684	239	179	248	13500	180	384	Elegant
Fluttering Wishes	5	Dress	\N	3	1579	838	293	219	304	27000	360	768	Elegant
Fluttering Wishes	5	Dress	\N	4	1912	0	355	265	368	44100	588	1280	Elegant
Fluttering Wishes	5	Dress	\N	5	2286	1213	424	317	440	64350	858	1894	Elegant
Starry Vigil	3	Dress	\N	0	285	51	553	52	59	0	0	0	Sweet
Starry Vigil	3	Dress	\N	1	357	64	692	65	74	900	12	40	Sweet
Starry Vigil	3	Dress	\N	2	442	80	858	81	92	2700	36	120	Sweet
Starry Vigil	3	Dress	\N	3	542	0	1051	99	113	5400	72	240	Sweet
Starry Vigil	3	Dress	\N	4	656	118	1272	120	136	8820	118	400	Sweet
Starry Vigil	3	Dress	\N	5	784	141	1521	143	163	12870	172	592	Sweet
Confession Lace	3	Dress	\N	0	502	76	260	90	71	0	0	0	Elegant
Confession Lace	3	Dress	\N	1	628	95	325	113	89	900	12	40	Elegant
Confession Lace	3	Dress	\N	2	779	118	403	140	0	2700	36	120	Elegant
Confession Lace	3	Dress	\N	3	954	145	494	171	135	5400	72	240	Elegant
Confession Lace	3	Dress	\N	4	0	175	598	207	164	8820	118	400	Sweet
Confession Lace	3	Dress	\N	5	1381	209	715	248	196	12870	172	592	Elegant
Spring Qipao	3	Dress	\N	0	83	499	95	247	76	0	0	0	Fresh
Spring Qipao	3	Dress	\N	1	104	624	19	309	95	900	12	40	Fresh
Spring Qipao	3	Dress	\N	2	129	774	148	383	118	2700	36	120	Fresh
Spring Qipao	3	Dress	\N	3	158	949	181	470	145	5400	72	240	Fresh
Spring Qipao	3	Dress	\N	4	191	1148	219	569	175	8820	118	400	Fresh
Spring Qipao	3	Dress	\N	5	229	1373	262	680	209	12870	172	592	Fresh
Fragrant Reverie	3	Dress	\N	0	273	533	94	51	49	0	0	0	Fresh
Fragrant Reverie	3	Dress	\N	1	342	667	118	64	62	900	12	40	Fresh
Fragrant Reverie	3	Dress	\N	2	424	827	146	80	76	2700	36	120	Fresh
Fragrant Reverie	3	Dress	\N	3	519	1013	179	0	94	5400	72	240	Fresh
Fragrant Reverie	3	Dress	\N	4	628	1226	217	118	113	8820	118	400	Fresh
Fragrant Reverie	3	Dress	\N	5	751	1466	259	141	135	12870	172	592	Fresh
Mature Aftertaste	3	Dress	\N	0	531	55	81	282	52	0	0	0	Elegant
Mature Aftertaste	3	Dress	\N	1	664	69	102	353	65	900	12	40	Elegant
Mature Aftertaste	3	Dress	\N	2	824	86	126	438	81	2700	36	120	Elegant
Mature Aftertaste	3	Dress	\N	3	1009	105	154	536	99	5400	72	240	Elegant
Mature Aftertaste	3	Dress	\N	4	1222	127	187	649	120	8820	118	400	Elegant
Mature Aftertaste	3	Dress	\N	5	1461	152	223	776	143	12870	172	592	Elegant
Natural Color	3	Dress	\N	0	263	521	59	71	86	0	0	0	Fresh
Natural Color	3	Dress	\N	1	329	652	74	89	108	900	12	40	Fresh
Natural Color	3	Dress	\N	2	408	808	92	0	134	2700	36	120	Fresh
Natural Color	3	Dress	\N	3	500	990	113	135	164	5400	72	240	Fresh
Natural Color	3	Dress	\N	4	605	1199	136	164	198	8820	118	400	Fresh
Natural Color	3	Dress	\N	5	724	1433	163	196	237	12870	172	592	Fresh
Dreamlike Stars	3	Dress	Searching for Dreams	0	60	50	286	0	53	0	0	0	Sweet
Dreamlike Stars	3	Dress	Searching for Dreams	1	75	63	358	689	67	900	12	40	Sexy
Dreamlike Stars	3	Dress	Searching for Dreams	2	93	78	444	855	83	2700	36	120	Sexy
Dreamlike Stars	3	Dress	Searching for Dreams	3	4	95	544	1047	101	5400	72	240	Sexy
Dreamlike Stars	3	Dress	Searching for Dreams	4	138	0	658	1268	122	8820	118	400	Sexy
Dreamlike Stars	3	Dress	Searching for Dreams	5	165	138	787	1516	146	12870	172	592	Sexy
Blooming Grace	5	Dress	Fairytale Swan	0	915	86	146	452	101	0	0	0	Elegant
Blooming Grace	5	Dress	Fairytale Swan	1	1144	108	183	565	127	4500	60	128	Elegant
Blooming Grace	5	Dress	Fairytale Swan	2	1419	134	227	701	157	13500	180	384	Elegant
Blooming Grace	5	Dress	Fairytale Swan	3	1739	164	278	859	192	27000	360	768	Elegant
Blooming Grace	5	Dress	Fairytale Swan	4	2105	198	336	1040	233	44100	588	1280	Elegant
Blooming Grace	5	Dress	Fairytale Swan	5	2517	237	402	1243	278	64350	858	1894	Elegant
Starry Splendor	5	Dress	Blossoming Stars	0	436	890	19	164	91	0	0	0	Fresh
Starry Splendor	5	Dress	Blossoming Stars	1	545	0	149	205	4	4500	60	128	Elegant
Starry Splendor	5	Dress	Blossoming Stars	2	676	1380	185	255	142	13500	180	384	Fresh
Starry Splendor	5	Dress	Blossoming Stars	3	829	1691	227	312	173	27000	360	768	Fresh
Starry Splendor	5	Dress	Blossoming Stars	4	1003	2047	274	378	210	44100	588	1280	Fresh
Starry Splendor	5	Dress	Blossoming Stars	5	1199	2448	328	451	251	64350	858	1894	Fresh
Fluttering Twist	5	Dress	Flutter Storm	0	457	98	95	913	137	0	0	0	Sexy
Fluttering Twist	5	Dress	Flutter Storm	1	572	123	19	1142	172	4500	60	128	Sexy
Fluttering Twist	5	Dress	Flutter Storm	2	709	152	148	1416	213	13500	180	384	Sexy
Fluttering Twist	5	Dress	Flutter Storm	3	869	187	181	1735	261	27000	360	768	Sexy
Fluttering Twist	5	Dress	Flutter Storm	4	1052	226	219	2100	316	44100	588	1280	Sexy
Fluttering Twist	5	Dress	Flutter Storm	5	1257	270	262	2511	377	64350	858	1894	Sexy
Peachy Fellowship	3	Dress	\N	0	56	255	522	93	74	0	0	0	Sweet
Peachy Fellowship	3	Dress	\N	1	70	319	653	0	93	900	12	40	Sweet
Peachy Fellowship	3	Dress	\N	2	87	396	810	145	0	2700	36	120	Sweet
Peachy Fellowship	3	Dress	\N	3	107	485	992	0	141	5400	72	240	Sweet
Peachy Fellowship	3	Dress	\N	4	129	587	1201	214	171	8820	118	400	Sweet
Peachy Fellowship	3	Dress	\N	5	154	702	1436	256	204	12870	172	592	Sweet
Snownight Letter	3	Dress	\N	0	261	87	85	503	65	0	0	0	Sexy
Snownight Letter	3	Dress	\N	1	327	109	107	629	82	900	12	40	Sexy
Snownight Letter	3	Dress	\N	2	405	135	132	780	101	2700	36	120	Sexy
Snownight Letter	3	Dress	\N	3	496	166	162	956	124	5400	72	240	Sexy
Snownight Letter	3	Dress	\N	4	601	201	196	1157	150	8820	118	400	Sexy
Snownight Letter	3	Dress	\N	5	718	240	234	1384	179	12870	172	592	Sexy
Enchanting Night	2	Dress	\N	0	42	56	54	389	58	0	0	0	Sexy
Enchanting Night	2	Dress	\N	1	53	70	68	487	73	540	7	24	Sexy
Enchanting Night	2	Dress	\N	2	66	87	84	603	90	1620	21	72	Sexy
Enchanting Night	2	Dress	\N	3	80	107	103	740	0	3240	43	144	Sexy
Enchanting Night	2	Dress	\N	4	0	129	125	895	134	5290	70	240	Sexy
Enchanting Night	2	Dress	\N	5	116	154	149	1070	160	7720	102	355	Sexy
Serene Green	2	Dress	\N	0	162	41	31	50	316	0	0	0	Cool
Serene Green	2	Dress	\N	1	203	52	39	63	395	540	7	24	Cool
Serene Green	2	Dress	\N	2	252	64	49	78	490	1620	21	72	Cool
Serene Green	2	Dress	\N	3	308	78	59	95	601	3240	43	144	Cool
Serene Green	2	Dress	\N	4	373	95	72	0	727	5290	70	240	Cool
Serene Green	2	Dress	\N	5	446	113	86	138	869	7720	102	355	Cool
Melodic Heart	4	Dress	Symphony of Strings	0	306	56	576	55	106	0	0	0	Sweet
Melodic Heart	4	Dress	Symphony of Strings	1	383	70	720	69	133	2700	36	80	Sweet
Melodic Heart	4	Dress	Symphony of Strings	2	475	87	893	86	165	8100	108	240	Sweet
Melodic Heart	4	Dress	Symphony of Strings	3	582	107	1095	105	202	16200	216	480	Sweet
Melodic Heart	4	Dress	Symphony of Strings	4	704	129	1325	127	244	26460	353	800	Sweet
Melodic Heart	4	Dress	Symphony of Strings	5	842	154	1584	152	292	38610	515	1184	Sweet
Sky Fall	4	Dress	Floral Memory	0	284	561	80	89	87	0	0	0	Fresh
Sky Fall	4	Dress	Floral Memory	1	355	702	100	0	109	2700	36	80	Fresh
Sky Fall	4	Dress	Floral Memory	2	441	870	124	138	135	8100	108	240	Fresh
Sky Fall	4	Dress	Floral Memory	3	540	1066	152	170	166	16200	216	480	Fresh
Sky Fall	4	Dress	Floral Memory	4	654	1291	184	205	201	26460	353	800	Fresh
Sky Fall	4	Dress	Floral Memory	5	781	1543	220	245	240	38610	515	1184	Fresh
Song of Harvest	4	Dress	Hometown Breeze	0	113	715	341	73	108	0	0	0	Fresh
Song of Harvest	4	Dress	Hometown Breeze	1	142	894	427	92	135	2700	36	80	Fresh
Song of Harvest	4	Dress	Hometown Breeze	2	176	1109	529	4	168	8100	108	240	Fresh
Song of Harvest	4	Dress	Hometown Breeze	3	215	1359	648	139	206	16200	216	480	Fresh
Song of Harvest	4	Dress	Hometown Breeze	4	260	1645	785	168	249	26460	353	800	Fresh
Song of Harvest	4	Dress	Hometown Breeze	5	311	1967	938	201	297	38610	515	1184	Fresh
Paper Crane's Flight	4	Dress	Rebirth Wish	0	357	108	77	76	92	0	0	0	Elegant
Paper Crane's Flight	4	Dress	Rebirth Wish	1	447	135	897	95	0	2700	36	80	Sweet
Paper Crane's Flight	4	Dress	Rebirth Wish	2	554	168	0	118	143	8100	108	240	Elegant
Paper Crane's Flight	4	Dress	Rebirth Wish	3	679	206	1363	145	175	16200	216	480	Sweet
Paper Crane's Flight	4	Dress	Rebirth Wish	4	822	249	1650	175	212	26460	353	800	Sweet
Paper Crane's Flight	4	Dress	Rebirth Wish	5	982	297	1972	209	253	38610	515	1184	Sweet
Chuckle Trainee	4	Dress	Sweet Jazz Nights	0	350	0	711	76	98	0	0	0	Sweet
Chuckle Trainee	4	Dress	Sweet Jazz Nights	1	438	144	889	95	123	2700	36	80	Sweet
Chuckle Trainee	4	Dress	Sweet Jazz Nights	2	543	179	1103	118	152	8100	108	240	Sweet
Chuckle Trainee	4	Dress	Sweet Jazz Nights	3	665	219	1351	145	187	16200	216	480	Sweet
Chuckle Trainee	4	Dress	Sweet Jazz Nights	4	805	265	1636	175	226	26460	353	800	Sweet
Chuckle Trainee	4	Dress	Sweet Jazz Nights	5	963	317	1956	209	270	38610	515	1184	Sweet
Circuit Connection	4	Dress	Fully Charged	0	88	290	67	104	551	0	0	0	Cool
Circuit Connection	4	Dress	Fully Charged	1	110	363	84	130	689	2700	36	80	Cool
Circuit Connection	4	Dress	Fully Charged	2	137	450	104	162	855	8100	108	240	Cool
Circuit Connection	4	Dress	Fully Charged	3	168	551	128	198	1047	16200	216	480	Cool
Circuit Connection	4	Dress	Fully Charged	4	203	667	155	240	1268	26460	353	800	Cool
Circuit Connection	4	Dress	Fully Charged	5	242	798	185	286	1516	38610	515	1184	Cool
Pure Melody	4	Dress	Wind of Purity	0	566	278	70	105	82	0	0	0	Elegant
Pure Melody	4	Dress	Wind of Purity	1	708	348	88	132	103	2700	36	80	Elegant
Pure Melody	4	Dress	Wind of Purity	2	878	41	109	163	128	8100	108	240	Elegant
Pure Melody	4	Dress	Wind of Purity	3	1076	529	133	200	156	16200	216	480	Elegant
Pure Melody	4	Dress	Wind of Purity	4	1302	640	161	242	189	26460	353	800	Elegant
Pure Melody	4	Dress	Wind of Purity	5	1557	765	193	289	226	38610	515	1184	Elegant
Whispering Bubbles	4	Dress	Bubbly Voyage	0	79	274	547	99	102	0	0	0	Sweet
Whispering Bubbles	4	Dress	Bubbly Voyage	1	99	343	684	124	128	2700	36	80	Sweet
Whispering Bubbles	4	Dress	Bubbly Voyage	2	123	425	848	154	159	8100	108	240	Sweet
Whispering Bubbles	4	Dress	Bubbly Voyage	3	151	521	1040	189	194	16200	216	480	Sweet
Whispering Bubbles	4	Dress	Bubbly Voyage	4	182	631	1259	228	235	26460	353	800	Sweet
Whispering Bubbles	4	Dress	Bubbly Voyage	5	218	754	1505	273	281	38610	515	1184	Sweet
Perfect Start	3	Dress	\N	0	64	248	507	94	87	0	0	0	Sweet
Perfect Start	3	Dress	\N	1	80	310	634	118	109	900	12	40	Sweet
Perfect Start	3	Dress	\N	2	100	385	786	146	135	2700	36	120	Sweet
Perfect Start	3	Dress	\N	3	122	472	964	179	166	5400	72	240	Sweet
Perfect Start	3	Dress	\N	4	148	571	1167	217	201	8820	118	400	Sweet
Perfect Start	3	Dress	\N	5	176	682	1395	259	240	12870	172	592	Sweet
Purple Whisper	3	Earrings	\N	0	13	39	78	7	12	0	0	0	Sweet
Purple Whisper	3	Earrings	\N	1	0	49	98	9	15	140	2	6	Sweet
Purple Whisper	3	Earrings	\N	2	21	61	121	0	19	410	6	18	Sweet
Purple Whisper	3	Earrings	\N	3	25	75	149	14	23	820	11	36	Sweet
Purple Whisper	3	Earrings	\N	4	30	90	180	0	28	1330	18	60	Sweet
Purple Whisper	3	Earrings	\N	5	36	108	215	20	33	1940	26	88	Sweet
Wish Bottle Earrings	4	Earrings	\N	0	100	51	18	16	7	0	0	0	Elegant
Wish Bottle Earrings	4	Earrings	\N	1	125	64	23	20	22	410	5	12	Elegant
Wish Bottle Earrings	4	Earrings	\N	2	155	80	28	25	27	1220	16	36	Elegant
Wish Bottle Earrings	4	Earrings	\N	3	190	0	35	31	33	2440	32	72	Elegant
Wish Bottle Earrings	4	Earrings	\N	4	230	118	42	37	40	3980	53	120	Elegant
Wish Bottle Earrings	4	Earrings	\N	5	275	141	50	44	47	5800	77	177	Elegant
Surprise Box	3	Earrings	\N	0	13	37	74	13	13	0	0	0	Sweet
Surprise Box	3	Earrings	\N	1	0	47	93	0	0	140	2	6	Sweet
Surprise Box	3	Earrings	\N	2	21	58	0	21	21	410	6	18	Fresh
Surprise Box	3	Earrings	\N	3	25	71	141	25	25	820	11	36	Sweet
Surprise Box	3	Earrings	\N	4	30	86	171	30	30	1330	18	60	Sweet
Surprise Box	3	Earrings	\N	5	36	102	204	36	36	1940	26	88	Sweet
Droopy Banner	3	Earrings	\N	0	13	7	13	39	78	0	0	0	Cool
Droopy Banner	3	Earrings	\N	1	0	9	0	49	98	140	2	6	Cool
Droopy Banner	3	Earrings	\N	2	21	0	21	61	121	410	6	18	Cool
Droopy Banner	3	Earrings	\N	3	25	14	25	75	149	820	11	36	Cool
Droopy Banner	3	Earrings	\N	4	30	0	30	90	180	1330	18	60	Cool
Droopy Banner	3	Earrings	\N	5	36	20	36	108	215	1940	26	88	Cool
Tangy Dreams	3	Earrings	\N	0	38	0	79	9	12	0	0	0	Sweet
Tangy Dreams	3	Earrings	\N	1	48	15	99	12	15	140	2	6	Sweet
Tangy Dreams	3	Earrings	\N	2	59	19	123	14	19	410	6	18	Sweet
Tangy Dreams	3	Earrings	\N	3	73	23	151	18	23	820	11	36	Sweet
Tangy Dreams	3	Earrings	\N	4	88	28	182	21	28	1330	18	60	Sweet
Tangy Dreams	3	Earrings	\N	5	105	33	218	25	33	1940	26	88	Sweet
Flashing Alert	3	Earrings	\N	0	9	39	14	0	77	0	0	0	Cool
Flashing Alert	3	Earrings	\N	1	0	49	18	14	97	140	2	6	Cool
Flashing Alert	3	Earrings	\N	2	14	61	22	18	120	410	6	18	Cool
Flashing Alert	3	Earrings	\N	3	18	75	27	21	147	820	11	36	Cool
Flashing Alert	3	Earrings	\N	4	21	90	33	26	178	1330	18	60	Cool
Flashing Alert	3	Earrings	\N	5	25	108	39	31	212	1940	26	88	Cool
Cinders	3	Earrings	\N	0	10	39	12	0	78	0	0	0	Cool
Cinders	3	Earrings	\N	1	13	49	15	14	98	140	2	6	Cool
Cinders	3	Earrings	\N	2	16	61	19	18	121	410	6	18	Cool
Cinders	3	Earrings	\N	3	19	75	23	21	149	820	11	36	Cool
Cinders	3	Earrings	\N	4	23	90	28	26	180	1330	18	60	Cool
Cinders	3	Earrings	\N	5	28	108	33	31	215	1940	26	88	Cool
Daisy Reminiscence	3	Earrings	\N	0	0	37	77	13	11	0	0	0	Sweet
Daisy Reminiscence	3	Earrings	\N	1	14	47	0	0	14	140	2	6	Fresh
Daisy Reminiscence	3	Earrings	\N	2	18	58	120	21	18	410	6	18	Sweet
Daisy Reminiscence	3	Earrings	\N	3	21	71	147	25	21	820	11	36	Sweet
Daisy Reminiscence	3	Earrings	\N	4	26	86	178	30	26	1330	18	60	Sweet
Daisy Reminiscence	3	Earrings	\N	5	31	102	212	36	31	1940	26	88	Sweet
Gleaming Wilderness	4	Earrings	\N	0	0	107	53	0	15	0	0	0	Fresh
Gleaming Wilderness	4	Earrings	\N	1	14	134	67	22	19	410	5	12	Fresh
Gleaming Wilderness	4	Earrings	\N	2	18	166	83	27	24	1220	16	36	Fresh
Gleaming Wilderness	4	Earrings	\N	3	21	204	101	33	29	2440	32	72	Fresh
Gleaming Wilderness	4	Earrings	\N	4	26	247	122	40	35	3980	53	120	Fresh
Gleaming Wilderness	4	Earrings	\N	5	31	295	146	47	42	5800	77	177	Fresh
Floral Whispers	3	Earrings	\N	0	37	76	14	10	14	0	0	0	Fresh
Floral Whispers	3	Earrings	\N	1	47	95	18	13	18	140	2	6	Fresh
Floral Whispers	3	Earrings	\N	2	58	118	22	16	22	410	6	18	Fresh
Floral Whispers	3	Earrings	\N	3	71	145	27	19	27	820	11	36	Fresh
Floral Whispers	3	Earrings	\N	4	86	175	33	23	33	1330	18	60	Fresh
Floral Whispers	3	Earrings	\N	5	102	209	39	28	39	1940	26	88	Fresh
Stockpile Audit	3	Earrings	Refined Grace	0	16	14	12	0	90	0	0	0	Cool
Stockpile Audit	3	Earrings	Refined Grace	1	20	18	15	22	113	140	2	6	Cool
Stockpile Audit	3	Earrings	Refined Grace	2	25	22	19	27	140	410	6	18	Cool
Stockpile Audit	3	Earrings	Refined Grace	3	31	27	23	33	171	820	11	36	Cool
Stockpile Audit	3	Earrings	Refined Grace	4	37	33	28	40	207	1330	18	60	Cool
Stockpile Audit	3	Earrings	Refined Grace	5	44	39	33	47	248	1940	26	88	Cool
Swaying Ode	5	Earrings	Fairytale Swan	0	133	16	18	67	21	0	0	0	Elegant
Swaying Ode	5	Earrings	Fairytale Swan	1	167	20	23	84	27	680	9	19	Elegant
Swaying Ode	5	Earrings	Fairytale Swan	2	207	25	28	104	33	2030	27	57	Elegant
Swaying Ode	5	Earrings	Fairytale Swan	3	253	31	35	128	40	4060	54	114	Elegant
Swaying Ode	5	Earrings	Fairytale Swan	4	306	37	42	155	49	6630	88	190	Elegant
Swaying Ode	5	Earrings	Fairytale Swan	5	366	44	50	185	58	9670	129	282	Elegant
Astral Petals	5	Earrings	Blossoming Stars	0	63	132	22	20	7	0	0	0	Fresh
Astral Petals	5	Earrings	Blossoming Stars	1	79	165	28	25	22	680	9	19	Fresh
Astral Petals	5	Earrings	Blossoming Stars	2	98	205	35	31	27	2030	27	57	Fresh
Astral Petals	5	Earrings	Blossoming Stars	3	120	251	42	38	33	4060	54	114	Fresh
Astral Petals	5	Earrings	Blossoming Stars	4	145	304	51	46	40	6630	88	190	Fresh
Astral Petals	5	Earrings	Blossoming Stars	5	174	363	61	55	47	9670	129	282	Fresh
Windhowl Tears	5	Earrings	Flutter Storm	0	72	14	19	135	15	0	0	0	Sexy
Windhowl Tears	5	Earrings	Flutter Storm	1	90	18	24	169	19	680	9	19	Sexy
Windhowl Tears	5	Earrings	Flutter Storm	2	0	22	30	210	24	2030	27	57	Sexy
Windhowl Tears	5	Earrings	Flutter Storm	3	137	27	37	257	29	4060	54	114	Sexy
Windhowl Tears	5	Earrings	Flutter Storm	4	166	33	44	311	35	6630	88	190	Sexy
Windhowl Tears	5	Earrings	Flutter Storm	5	198	39	53	372	42	9670	129	282	Sexy
Serene Bloom	2	Earrings	\N	0	6	48	5	8	23	0	0	0	Fresh
Serene Bloom	2	Earrings	\N	1	8	60	7	10	29	80	1	3	Fresh
Serene Bloom	2	Earrings	\N	2	10	75	8	13	36	240	3	10	Fresh
Serene Bloom	2	Earrings	\N	3	0	92	10	16	44	480	6	20	Fresh
Serene Bloom	2	Earrings	\N	4	14	0	0	19	53	790	10	34	Cool
Serene Bloom	2	Earrings	\N	5	0	132	14	22	64	1150	15	50	Fresh
Wings of Longing	2	Earrings	\N	0	7	4	49	24	5	0	0	0	Sweet
Wings of Longing	2	Earrings	\N	1	9	5	62	30	7	80	1	3	Sweet
Wings of Longing	2	Earrings	\N	2	0	7	76	38	8	240	3	10	Sweet
Wings of Longing	2	Earrings	\N	3	14	8	94	46	10	480	6	20	Sweet
Wings of Longing	2	Earrings	\N	4	0	10	113	56	12	790	10	34	Sweet
Wings of Longing	2	Earrings	\N	5	20	0	135	66	14	1150	15	50	Sweet
Trailing Melody	4	Earrings	Symphony of Strings	0	43	0	87	12	12	0	0	0	Sweet
Trailing Melody	4	Earrings	Symphony of Strings	1	54	15	109	15	15	410	5	12	Sweet
Trailing Melody	4	Earrings	Symphony of Strings	2	67	19	135	19	19	1220	16	36	Sweet
Trailing Melody	4	Earrings	Symphony of Strings	3	82	23	166	23	23	2440	32	72	Sweet
Trailing Melody	4	Earrings	Symphony of Strings	4	99	28	201	28	28	3980	53	120	Sweet
Trailing Melody	4	Earrings	Symphony of Strings	5	19	33	240	33	33	5800	77	177	Sweet
Twilight's Veil	4	Earrings	Floral Memory	0	42	86	14	12	11	0	0	0	Fresh
Twilight's Veil	4	Earrings	Floral Memory	1	53	108	18	15	14	410	5	12	Fresh
Twilight's Veil	4	Earrings	Floral Memory	2	66	134	22	19	18	1220	16	36	Fresh
Twilight's Veil	4	Earrings	Floral Memory	3	80	164	27	23	21	2440	32	72	Fresh
Twilight's Veil	4	Earrings	Floral Memory	4	0	198	33	28	26	3980	53	120	Fresh
Twilight's Veil	4	Earrings	Floral Memory	5	116	237	39	33	31	5800	77	177	Fresh
Wishbird Return	4	Earrings	Hometown Breeze	0	0	107	55	0	10	0	0	0	Fresh
Wishbird Return	4	Earrings	Hometown Breeze	1	15	134	69	22	13	410	5	12	Fresh
Wishbird Return	4	Earrings	Hometown Breeze	2	19	166	86	27	16	1220	16	36	Fresh
Wishbird Return	4	Earrings	Hometown Breeze	3	23	204	105	33	19	2440	32	72	Fresh
Wishbird Return	4	Earrings	Hometown Breeze	4	28	247	127	40	23	3980	53	120	Fresh
Wishbird Return	4	Earrings	Hometown Breeze	5	33	295	152	47	28	5800	77	177	Fresh
Weaving Spring	4	Earrings	Rebirth Wish	0	53	19	101	15	15	0	0	0	Sweet
Weaving Spring	4	Earrings	Rebirth Wish	1	67	24	127	19	19	410	5	12	Sweet
Weaving Spring	4	Earrings	Rebirth Wish	2	83	30	157	24	24	1220	16	36	Sweet
Weaving Spring	4	Earrings	Rebirth Wish	3	101	37	192	29	29	2440	32	72	Sweet
Weaving Spring	4	Earrings	Rebirth Wish	4	122	44	233	35	35	3980	53	120	Sweet
Weaving Spring	4	Earrings	Rebirth Wish	5	146	53	278	42	42	5800	77	177	Sweet
Painted Scenery	4	Earrings	Flowing Colors	0	19	106	54	12	11	0	0	0	Fresh
Painted Scenery	4	Earrings	Flowing Colors	1	24	133	68	15	14	410	5	12	Fresh
Painted Scenery	4	Earrings	Flowing Colors	2	30	165	84	19	18	1220	16	36	Fresh
Painted Scenery	4	Earrings	Flowing Colors	3	37	202	103	23	21	2440	32	72	Fresh
Painted Scenery	4	Earrings	Flowing Colors	4	44	244	125	28	26	3980	53	120	Fresh
Painted Scenery	4	Earrings	Flowing Colors	5	53	292	149	33	31	5800	77	177	Fresh
Bibcoon Pompoms	4	Earrings	Sweet Jazz Nights	0	50	0	105	18	13	0	0	0	Sweet
Bibcoon Pompoms	4	Earrings	Sweet Jazz Nights	1	63	22	132	23	0	410	5	12	Sweet
Bibcoon Pompoms	4	Earrings	Sweet Jazz Nights	2	78	27	163	28	21	1220	16	36	Sweet
Bibcoon Pompoms	4	Earrings	Sweet Jazz Nights	3	95	33	200	35	25	2440	32	72	Sweet
Bibcoon Pompoms	4	Earrings	Sweet Jazz Nights	4	0	40	242	42	30	3980	53	120	Sweet
Bibcoon Pompoms	4	Earrings	Sweet Jazz Nights	5	138	47	289	50	36	5800	77	177	Sweet
Emergency Response	4	Earrings	Fully Charged	0	9	45	10	10	90	0	0	0	Cool
Emergency Response	4	Earrings	Fully Charged	1	0	57	13	13	113	410	5	12	Cool
Emergency Response	4	Earrings	Fully Charged	2	14	70	16	16	140	1220	16	36	Cool
Emergency Response	4	Earrings	Fully Charged	3	18	86	19	19	171	2440	32	72	Cool
Emergency Response	4	Earrings	Fully Charged	4	21	104	23	23	207	3980	53	120	Cool
Emergency Response	4	Earrings	Fully Charged	5	25	124	28	28	248	5800	77	177	Cool
Tiny Bites	4	Earrings	Rippling Serenity	0	0	10	43	0	88	0	0	0	Cool
Tiny Bites	4	Earrings	Rippling Serenity	1	15	13	54	14	110	410	5	12	Cool
Tiny Bites	4	Earrings	Rippling Serenity	2	19	16	67	18	137	1220	16	36	Cool
Tiny Bites	4	Earrings	Rippling Serenity	3	23	19	82	21	168	2440	32	72	Cool
Tiny Bites	4	Earrings	Rippling Serenity	4	28	23	99	26	203	3980	53	120	Cool
Tiny Bites	4	Earrings	Rippling Serenity	5	33	28	19	31	242	5800	77	177	Cool
Resurrected Shine	4	Earrings	Wind of Purity	0	87	44	9	9	16	0	0	0	Elegant
Resurrected Shine	4	Earrings	Wind of Purity	1	109	55	0	12	20	410	5	12	Elegant
Resurrected Shine	4	Earrings	Wind of Purity	2	135	69	14	14	25	1220	16	36	Elegant
Resurrected Shine	4	Earrings	Wind of Purity	3	166	84	18	18	31	2440	32	72	Elegant
Resurrected Shine	4	Earrings	Wind of Purity	4	201	102	21	21	37	3980	53	120	Elegant
Resurrected Shine	4	Earrings	Wind of Purity	5	240	121	25	25	44	5800	77	177	Elegant
Through the Mist	3	Face Decoration	\N	0	40	10	9	10	82	0	0	0	Cool
Through the Mist	3	Face Decoration	\N	1	50	13	0	13	103	140	2	6	Cool
Through the Mist	3	Face Decoration	\N	2	62	16	14	16	128	410	6	18	Cool
Through the Mist	3	Face Decoration	\N	3	76	19	18	19	156	820	11	36	Cool
Through the Mist	3	Face Decoration	\N	4	92	23	21	23	189	1330	18	60	Cool
Through the Mist	3	Face Decoration	\N	5	110	28	25	28	226	1940	26	88	Cool
Trusted Protection	3	Face Decoration	\N	0	0	37	10	14	78	0	0	0	Cool
Trusted Protection	3	Face Decoration	\N	1	14	47	13	18	98	140	2	6	Cool
Trusted Protection	3	Face Decoration	\N	2	18	58	16	22	121	410	6	18	Cool
Trusted Protection	3	Face Decoration	\N	3	21	71	19	27	149	820	11	36	Cool
Trusted Protection	3	Face Decoration	\N	4	26	86	23	33	180	1330	18	60	Cool
Trusted Protection	3	Face Decoration	\N	5	31	102	28	39	215	1940	26	88	Cool
Glimpse of Sunset	4	Face Decoration	\N	0	18	19	0	48	101	0	0	0	Cool
Glimpse of Sunset	4	Face Decoration	\N	1	23	24	22	60	127	410	5	12	Cool
Glimpse of Sunset	4	Face Decoration	\N	2	28	30	27	75	157	1220	16	36	Cool
Glimpse of Sunset	4	Face Decoration	\N	3	35	37	33	92	192	2440	32	72	Cool
Glimpse of Sunset	4	Face Decoration	\N	4	42	44	40	0	233	3980	53	120	Cool
Glimpse of Sunset	4	Face Decoration	\N	5	50	53	47	132	278	5800	77	177	Cool
Risk Prevention	4	Face Decoration	Fully Charged	0	9	46	8	12	90	0	0	0	Cool
Risk Prevention	4	Face Decoration	Fully Charged	1	0	58	10	15	113	410	5	12	Cool
Risk Prevention	4	Face Decoration	Fully Charged	2	14	72	13	19	140	1220	16	36	Cool
Risk Prevention	4	Face Decoration	Fully Charged	3	18	88	16	23	171	2440	32	72	Cool
Risk Prevention	4	Face Decoration	Fully Charged	4	21	106	19	28	207	3980	53	120	Cool
Risk Prevention	4	Face Decoration	Fully Charged	5	25	127	22	33	248	5800	77	177	Cool
Delicate Leaves	3	Gloves	\N	0	0	77	10	14	38	0	0	0	Fresh
Delicate Leaves	3	Gloves	\N	1	14	0	13	18	48	140	2	6	Cool
Delicate Leaves	3	Gloves	\N	2	18	120	16	22	59	410	6	18	Fresh
Delicate Leaves	3	Gloves	\N	3	21	147	19	27	73	820	11	36	Fresh
Delicate Leaves	3	Gloves	\N	4	26	178	23	33	88	1330	18	60	Fresh
Delicate Leaves	3	Gloves	\N	5	31	212	28	39	105	1940	26	88	Fresh
Sincere Greetings	3	Gloves	\N	0	39	0	0	77	12	0	0	0	Sexy
Sincere Greetings	3	Gloves	\N	1	49	14	14	0	15	140	2	6	Elegant
Sincere Greetings	3	Gloves	\N	2	61	18	18	120	19	410	6	18	Sexy
Sincere Greetings	3	Gloves	\N	3	75	21	21	147	23	820	11	36	Sexy
Sincere Greetings	3	Gloves	\N	4	90	26	26	178	28	1330	18	60	Sexy
Sincere Greetings	3	Gloves	\N	5	108	31	31	212	33	1940	26	88	Sexy
Fingerless Gloves	4	Gloves	\N	0	16	50	0	15	104	0	0	0	Cool
Fingerless Gloves	4	Gloves	\N	1	20	63	22	19	130	410	5	12	Cool
Fingerless Gloves	4	Gloves	\N	2	25	78	27	24	162	1220	16	36	Cool
Fingerless Gloves	4	Gloves	\N	3	31	95	33	29	198	2440	32	72	Cool
Fingerless Gloves	4	Gloves	\N	4	37	0	40	35	240	3980	53	120	Cool
Fingerless Gloves	4	Gloves	\N	5	44	138	47	42	286	5800	77	177	Cool
Feathered Gleam	5	Gloves	Fairytale Swan	0	128	21	21	61	24	0	0	0	Elegant
Feathered Gleam	5	Gloves	Fairytale Swan	1	160	27	27	77	30	680	9	19	Elegant
Feathered Gleam	5	Gloves	Fairytale Swan	2	199	33	33	95	38	2030	27	57	Elegant
Feathered Gleam	5	Gloves	Fairytale Swan	3	244	40	40	116	46	4060	54	114	Elegant
Feathered Gleam	5	Gloves	Fairytale Swan	4	295	49	49	141	56	6630	88	190	Elegant
Feathered Gleam	5	Gloves	Fairytale Swan	5	352	58	58	168	66	9670	129	282	Elegant
Delicate Wings	5	Gloves	Flutter Storm	0	66	22	18	132	7	0	0	0	Sexy
Delicate Wings	5	Gloves	Flutter Storm	1	83	28	23	165	22	680	9	19	Sexy
Delicate Wings	5	Gloves	Flutter Storm	2	103	35	28	205	27	2030	27	57	Sexy
Delicate Wings	5	Gloves	Flutter Storm	3	126	42	35	251	33	4060	54	114	Sexy
Delicate Wings	5	Gloves	Flutter Storm	4	152	51	42	304	40	6630	88	190	Sexy
Delicate Wings	5	Gloves	Flutter Storm	5	182	61	50	363	47	9670	129	282	Sexy
Thorough Investigation	3	Gloves	Guard's Resolve	0	10	40	0	8	81	0	0	0	Cool
Thorough Investigation	3	Gloves	Guard's Resolve	1	13	50	14	10	102	140	2	6	Cool
Thorough Investigation	3	Gloves	Guard's Resolve	2	16	62	18	13	126	410	6	18	Cool
Thorough Investigation	3	Gloves	Guard's Resolve	3	19	76	21	16	154	820	11	36	Cool
Thorough Investigation	3	Gloves	Guard's Resolve	4	23	92	26	19	187	1330	18	60	Cool
Thorough Investigation	3	Gloves	Guard's Resolve	5	28	110	31	22	223	1940	26	88	Cool
Twin Moons	4	Gloves	\N	0	15	19	12	53	104	0	0	0	Cool
Twin Moons	4	Gloves	\N	1	19	24	15	67	130	410	5	12	Cool
Twin Moons	4	Gloves	\N	2	24	30	19	83	162	1220	16	36	Cool
Twin Moons	4	Gloves	\N	3	29	37	23	101	198	2440	32	72	Cool
Twin Moons	4	Gloves	\N	4	35	44	28	122	240	3980	53	120	Cool
Twin Moons	4	Gloves	\N	5	42	53	33	146	286	5800	77	177	Cool
Midnight Nocturne	4	Gloves	Symphony of Strings	0	46	0	90	10	9	0	0	0	Sweet
Midnight Nocturne	4	Gloves	Symphony of Strings	1	58	14	113	13	12	410	5	12	Sweet
Midnight Nocturne	4	Gloves	Symphony of Strings	2	72	18	140	16	14	1220	16	36	Sweet
Midnight Nocturne	4	Gloves	Symphony of Strings	3	88	21	171	19	18	2440	32	72	Sweet
Midnight Nocturne	4	Gloves	Symphony of Strings	4	106	26	207	23	21	3980	53	120	Sweet
Midnight Nocturne	4	Gloves	Symphony of Strings	5	127	31	248	28	25	5800	77	177	Sweet
Lingering Memory	4	Gloves	Floral Memory	0	44	87	9	16	10	0	0	0	Fresh
Lingering Memory	4	Gloves	Floral Memory	1	55	109	0	20	13	410	5	12	Fresh
Lingering Memory	4	Gloves	Floral Memory	2	69	135	14	25	16	1220	16	36	Fresh
Lingering Memory	4	Gloves	Floral Memory	3	84	166	18	31	19	2440	32	72	Fresh
Lingering Memory	4	Gloves	Floral Memory	4	102	201	21	37	23	3980	53	120	Fresh
Lingering Memory	4	Gloves	Floral Memory	5	121	240	25	44	28	5800	77	177	Fresh
Deep Sea Adventure	4	Gloves	Tidal Shark Mirage	0	0	51	15	13	107	0	0	0	Cool
Deep Sea Adventure	4	Gloves	Tidal Shark Mirage	1	22	64	19	0	134	410	5	12	Cool
Deep Sea Adventure	4	Gloves	Tidal Shark Mirage	2	27	80	24	21	166	1220	16	36	Cool
Deep Sea Adventure	4	Gloves	Tidal Shark Mirage	3	33	0	29	25	204	2440	32	72	Cool
Deep Sea Adventure	4	Gloves	Tidal Shark Mirage	4	40	118	35	30	247	3980	53	120	Cool
Deep Sea Adventure	4	Gloves	Tidal Shark Mirage	5	47	141	42	36	295	5800	77	177	Cool
Precise Maneuver	4	Gloves	Fully Charged	0	13	45	10	10	86	0	0	0	Cool
Precise Maneuver	4	Gloves	Fully Charged	1	0	57	13	13	108	410	5	12	Cool
Precise Maneuver	4	Gloves	Fully Charged	2	21	70	16	16	134	1220	16	36	Cool
Precise Maneuver	4	Gloves	Fully Charged	3	25	86	19	19	164	2440	32	72	Cool
Precise Maneuver	4	Gloves	Fully Charged	4	30	104	23	23	198	3980	53	120	Cool
Precise Maneuver	4	Gloves	Fully Charged	5	36	124	28	28	237	5800	77	177	Cool
Splashy Gloves	4	Gloves	Rippling Serenity	0	0	10	46	9	88	0	0	0	Cool
Splashy Gloves	4	Gloves	Rippling Serenity	1	15	13	58	12	110	410	5	12	Cool
Splashy Gloves	4	Gloves	Rippling Serenity	2	19	16	72	14	137	1220	16	36	Cool
Splashy Gloves	4	Gloves	Rippling Serenity	3	23	19	88	18	168	2440	32	72	Cool
Splashy Gloves	4	Gloves	Rippling Serenity	4	28	23	106	21	203	3980	53	120	Cool
Splashy Gloves	4	Gloves	Rippling Serenity	5	33	28	127	25	242	5800	77	177	Cool
Cool Touch	4	Gloves	Bye-Bye Dust	0	43	9	84	13	16	0	0	0	Sweet
Cool Touch	4	Gloves	Bye-Bye Dust	1	54	0	105	0	20	410	5	12	Sweet
Cool Touch	4	Gloves	Bye-Bye Dust	2	67	14	131	21	25	1220	16	36	Sweet
Cool Touch	4	Gloves	Bye-Bye Dust	3	82	18	160	25	31	2440	32	72	Sweet
Cool Touch	4	Gloves	Bye-Bye Dust	4	99	21	194	30	37	3980	53	120	Sweet
Cool Touch	4	Gloves	Bye-Bye Dust	5	19	25	231	36	44	5800	77	177	Sweet
Monsoon Messenger	4	Gloves	Wind of Purity	0	81	39	15	15	14	0	0	0	Elegant
Monsoon Messenger	4	Gloves	Wind of Purity	1	102	49	19	19	18	410	5	12	Elegant
Monsoon Messenger	4	Gloves	Wind of Purity	2	126	61	24	24	22	1220	16	36	Elegant
Monsoon Messenger	4	Gloves	Wind of Purity	3	154	75	29	29	27	2440	32	72	Elegant
Monsoon Messenger	4	Gloves	Wind of Purity	4	187	90	35	35	33	3980	53	120	Elegant
Monsoon Messenger	4	Gloves	Wind of Purity	5	223	108	42	42	39	5800	77	177	Elegant
Sunrise Runner	3	Hair	\N	0	28	54	312	46	159	0	0	0	Sweet
Sunrise Runner	3	Hair	\N	1	35	68	390	58	199	540	7	25	Sweet
Sunrise Runner	3	Hair	\N	2	44	84	484	72	247	1620	21	75	Sweet
Sunrise Runner	3	Hair	\N	3	54	103	593	88	303	3240	43	150	Sweet
Sunrise Runner	3	Hair	\N	4	65	125	718	106	366	5290	70	250	Sweet
Sunrise Runner	3	Hair	\N	5	77	149	858	127	438	7720	102	370	Sweet
Playful Spades	3	Hair	\N	0	322	32	56	30	160	0	0	0	Elegant
Playful Spades	3	Hair	\N	1	403	40	70	38	200	540	7	25	Elegant
Playful Spades	3	Hair	\N	2	500	50	87	47	248	1620	21	75	Elegant
Playful Spades	3	Hair	\N	3	612	61	107	57	304	3240	43	150	Elegant
Playful Spades	3	Hair	\N	4	0	74	129	69	368	5290	70	250	Cool
Playful Spades	3	Hair	\N	5	886	88	154	83	440	7720	102	370	Elegant
Inky Braid	3	Hair	\N	0	58	360	67	50	66	0	0	0	Fresh
Inky Braid	3	Hair	\N	1	73	450	84	63	83	540	7	25	Fresh
Inky Braid	3	Hair	\N	2	90	558	104	78	103	1620	21	75	Fresh
Inky Braid	3	Hair	\N	3	0	684	128	95	126	3240	43	150	Fresh
Inky Braid	3	Hair	\N	4	134	828	155	115	152	5290	70	250	Fresh
Inky Braid	3	Hair	\N	5	160	990	185	138	182	7720	102	370	Fresh
Chiming Breeze	3	Hair	\N	0	70	61	286	95	88	0	0	0	Sweet
Chiming Breeze	3	Hair	\N	1	88	77	358	119	110	540	7	25	Sweet
Chiming Breeze	3	Hair	\N	2	109	95	444	148	137	1620	21	75	Sweet
Chiming Breeze	3	Hair	\N	3	133	116	544	181	168	3240	43	150	Sweet
Chiming Breeze	3	Hair	\N	4	161	141	658	219	203	5290	70	250	Sweet
Chiming Breeze	3	Hair	\N	5	193	168	787	262	242	7720	102	370	Sweet
Quick Ponytail	3	Hair	\N	0	52	162	34	41	310	0	0	0	Cool
Quick Ponytail	3	Hair	\N	1	65	203	43	52	388	540	7	25	Cool
Quick Ponytail	3	Hair	\N	2	81	252	53	64	481	1620	21	75	Cool
Quick Ponytail	3	Hair	\N	3	99	308	65	78	589	3240	43	150	Cool
Quick Ponytail	3	Hair	\N	4	120	373	79	95	713	5290	70	250	Cool
Quick Ponytail	3	Hair	\N	5	143	446	94	113	853	7720	102	370	Cool
Nostalgic Blossom	3	Hair	\N	0	152	311	53	32	51	0	0	0	Fresh
Nostalgic Blossom	3	Hair	\N	1	190	389	67	40	64	540	7	25	Fresh
Nostalgic Blossom	3	Hair	\N	2	236	483	83	50	80	1620	21	75	Fresh
Nostalgic Blossom	3	Hair	\N	3	289	591	101	61	97	3240	43	150	Fresh
Nostalgic Blossom	3	Hair	\N	4	350	716	122	74	118	5290	70	250	Fresh
Nostalgic Blossom	3	Hair	\N	5	418	856	146	88	141	7720	102	370	Fresh
Corridor of Time	3	Hair	A Beautiful Day	0	327	51	157	34	32	0	0	0	Elegant
Corridor of Time	3	Hair	A Beautiful Day	1	409	64	197	43	40	540	7	25	Elegant
Corridor of Time	3	Hair	A Beautiful Day	2	507	80	244	53	50	1620	21	75	Elegant
Corridor of Time	3	Hair	A Beautiful Day	3	622	0	299	65	61	3240	43	150	Elegant
Corridor of Time	3	Hair	A Beautiful Day	4	753	118	362	79	74	5290	70	250	Elegant
Corridor of Time	3	Hair	A Beautiful Day	5	900	141	432	94	88	7720	102	370	Elegant
Pink Star Wish	3	Hair	Searching for Dreams	0	46	41	154	305	53	0	0	0	Sexy
Pink Star Wish	3	Hair	Searching for Dreams	1	58	52	193	382	67	540	7	25	Sexy
Pink Star Wish	3	Hair	Searching for Dreams	2	72	64	239	473	83	1620	21	75	Sexy
Pink Star Wish	3	Hair	Searching for Dreams	3	88	78	293	580	101	3240	43	150	Sexy
Pink Star Wish	3	Hair	Searching for Dreams	4	106	95	355	702	122	5290	70	250	Sexy
Pink Star Wish	3	Hair	Searching for Dreams	5	127	113	424	839	146	7720	102	370	Sexy
Relaxed Workflow	3	Hair	Refined Grace	0	54	45	69	43	389	0	0	0	Cool
Relaxed Workflow	3	Hair	Refined Grace	1	68	57	87	54	487	540	7	25	Cool
Relaxed Workflow	3	Hair	Refined Grace	2	84	70	107	67	603	1620	21	75	Cool
Relaxed Workflow	3	Hair	Refined Grace	3	103	86	132	82	740	3240	43	150	Cool
Relaxed Workflow	3	Hair	Refined Grace	4	125	104	159	99	895	5290	70	250	Cool
Relaxed Workflow	3	Hair	Refined Grace	5	149	124	190	119	1070	7720	102	370	Cool
Dawn's Radiance	3	Hair	Carnival Ode	0	45	47	42	154	312	0	0	0	Cool
Dawn's Radiance	3	Hair	Carnival Ode	1	57	59	53	193	390	540	7	25	Cool
Dawn's Radiance	3	Hair	Carnival Ode	2	70	73	66	239	484	1620	21	75	Cool
Dawn's Radiance	3	Hair	Carnival Ode	3	86	90	80	293	593	3240	43	150	Cool
Dawn's Radiance	3	Hair	Carnival Ode	4	104	109	0	355	718	5290	70	250	Cool
Dawn's Radiance	3	Hair	Carnival Ode	5	124	130	116	424	858	7720	102	370	Cool
Morning Sunlight	5	Hair	Fairytale Swan	0	0	49	76	261	83	0	0	0	Sexy
Morning Sunlight	5	Hair	Fairytale Swan	1	689	62	95	327	104	2700	36	80	Elegant
Morning Sunlight	5	Hair	Fairytale Swan	2	855	76	118	405	129	8100	108	240	Elegant
Morning Sunlight	5	Hair	Fairytale Swan	3	1047	94	145	496	158	16200	216	480	Elegant
Morning Sunlight	5	Hair	Fairytale Swan	4	1268	113	175	601	191	26460	353	800	Elegant
Morning Sunlight	5	Hair	Fairytale Swan	5	1516	135	209	718	229	38610	515	1184	Elegant
Blooming Pact	5	Hair	Blossoming Stars	0	273	521	77	86	65	0	0	0	Fresh
Blooming Pact	5	Hair	Blossoming Stars	1	342	652	0	108	82	2700	36	80	Fresh
Blooming Pact	5	Hair	Blossoming Stars	2	424	808	120	134	101	8100	108	240	Fresh
Blooming Pact	5	Hair	Blossoming Stars	3	519	990	147	164	124	16200	216	480	Fresh
Blooming Pact	5	Hair	Blossoming Stars	4	628	1199	178	198	150	26460	353	800	Fresh
Blooming Pact	5	Hair	Blossoming Stars	5	751	1433	212	237	179	38610	515	1184	Fresh
Fluttermist Isle	5	Hair	Flutter Storm	0	256	86	86	524	68	0	0	0	Sexy
Fluttermist Isle	5	Hair	Flutter Storm	1	320	108	108	655	0	2700	36	80	Sexy
Fluttermist Isle	5	Hair	Flutter Storm	2	397	134	134	813	106	8100	108	240	Sexy
Fluttermist Isle	5	Hair	Flutter Storm	3	487	164	164	996	130	16200	216	480	Sexy
Fluttermist Isle	5	Hair	Flutter Storm	4	589	198	198	1206	157	26460	353	800	Sexy
Fluttermist Isle	5	Hair	Flutter Storm	5	704	237	237	1441	187	38610	515	1184	Sexy
Vibrant Spirit	2	Hair	Guard's Resolve	0	34	162	57	44	304	0	0	0	Cool
Vibrant Spirit	2	Hair	Guard's Resolve	1	43	203	72	55	380	320	4	15	Cool
Vibrant Spirit	2	Hair	Guard's Resolve	2	53	252	89	69	472	970	13	45	Cool
Vibrant Spirit	2	Hair	Guard's Resolve	3	65	308	109	84	578	1940	26	90	Cool
Vibrant Spirit	2	Hair	Guard's Resolve	4	79	373	132	102	700	3170	42	150	Cool
Vibrant Spirit	2	Hair	Guard's Resolve	5	94	446	157	121	836	4630	61	222	Cool
Mature Short Hair	4	Hair	\N	0	39	73	215	427	55	0	0	0	Sexy
Mature Short Hair	4	Hair	\N	1	49	92	269	534	69	1620	22	50	Sexy
Mature Short Hair	4	Hair	\N	2	61	4	334	662	86	4860	65	150	Sexy
Mature Short Hair	4	Hair	\N	3	75	139	409	812	105	9720	130	300	Sexy
Mature Short Hair	4	Hair	\N	4	90	168	495	983	127	15880	212	500	Sexy
Mature Short Hair	4	Hair	\N	5	108	201	592	1175	152	23170	309	740	Sexy
Misty Clouds	3	Hair	\N	0	313	34	156	45	53	0	0	0	Elegant
Misty Clouds	3	Hair	\N	1	392	43	195	57	67	540	7	25	Elegant
Misty Clouds	3	Hair	\N	2	486	53	242	70	83	1620	21	75	Elegant
Misty Clouds	3	Hair	\N	3	595	65	297	86	101	3240	43	150	Elegant
Misty Clouds	3	Hair	\N	4	720	79	359	104	122	5290	70	250	Elegant
Misty Clouds	3	Hair	\N	5	861	94	429	124	146	7720	102	370	Elegant
Peachy Puffs	3	Hair	\N	0	46	163	310	29	52	0	0	0	Sweet
Peachy Puffs	3	Hair	\N	1	58	204	388	37	65	540	7	25	Sweet
Peachy Puffs	3	Hair	\N	2	72	253	481	45	81	1620	21	75	Sweet
Peachy Puffs	3	Hair	\N	3	88	310	589	56	99	3240	43	150	Sweet
Peachy Puffs	3	Hair	\N	4	106	375	713	67	120	5290	70	250	Sweet
Peachy Puffs	3	Hair	\N	5	127	449	853	80	143	7720	102	370	Sweet
Mini Fishball	3	Hair	\N	0	37	322	44	30	168	0	0	0	Fresh
Mini Fishball	3	Hair	\N	1	47	403	55	38	210	540	7	25	Fresh
Mini Fishball	3	Hair	\N	2	58	500	69	47	261	1620	21	75	Fresh
Mini Fishball	3	Hair	\N	3	71	612	84	57	320	3240	43	150	Fresh
Mini Fishball	3	Hair	\N	4	86	0	102	69	387	5290	70	250	Cool
Mini Fishball	3	Hair	\N	5	102	886	121	83	462	7720	102	370	Fresh
An Easy Start	3	Hair	\N	0	50	48	62	60	380	0	0	0	Cool
An Easy Start	3	Hair	\N	1	63	60	78	75	475	540	7	25	Cool
An Easy Start	3	Hair	\N	2	78	75	0	93	589	1620	21	75	Cool
An Easy Start	3	Hair	\N	3	95	92	118	4	722	3240	43	150	Cool
An Easy Start	3	Hair	\N	4	0	0	143	138	874	5290	70	250	Cool
An Easy Start	3	Hair	\N	5	138	132	171	165	1045	7720	102	370	Cool
Sunset Dance	2	Hair	\N	0	30	23	27	236	44	0	0	0	Sexy
Sunset Dance	2	Hair	\N	1	38	29	34	295	55	320	4	15	Sexy
Sunset Dance	2	Hair	\N	2	47	36	42	366	69	970	13	45	Sexy
Sunset Dance	2	Hair	\N	3	57	44	52	449	84	1940	26	90	Sexy
Sunset Dance	2	Hair	\N	4	69	53	63	543	102	3170	42	150	Sexy
Sunset Dance	2	Hair	\N	5	83	64	75	649	121	4630	61	222	Sexy
Silverplume	2	Hair	\N	0	20	194	20	28	98	0	0	0	Fresh
Silverplume	2	Hair	\N	1	25	243	25	35	123	320	4	15	Fresh
Silverplume	2	Hair	\N	2	31	301	31	44	152	970	13	45	Fresh
Silverplume	2	Hair	\N	3	38	369	38	54	187	1940	26	90	Fresh
Silverplume	2	Hair	\N	4	46	447	46	65	226	3170	42	150	Fresh
Silverplume	2	Hair	\N	5	55	534	55	77	270	4630	61	222	Fresh
Autumn's Melody	3	Hair	\N	0	53	45	399	40	64	0	0	0	Sweet
Autumn's Melody	3	Hair	\N	1	67	57	499	50	80	540	7	25	Sweet
Autumn's Melody	3	Hair	\N	2	83	70	619	62	100	1620	21	75	Sweet
Autumn's Melody	3	Hair	\N	3	101	86	759	76	122	3240	43	150	Sweet
Autumn's Melody	3	Hair	\N	4	122	104	918	92	148	5290	70	250	Sweet
Autumn's Melody	3	Hair	\N	5	146	124	1098	110	176	7720	102	370	Sweet
Ten-Second Bun	2	Hair	\N	0	31	24	192	20	93	0	0	0	Sweet
Ten-Second Bun	2	Hair	\N	1	39	30	240	25	117	320	4	15	Sweet
Ten-Second Bun	2	Hair	\N	2	49	38	298	31	145	970	13	45	Sweet
Ten-Second Bun	2	Hair	\N	3	59	46	365	38	177	1940	26	90	Sweet
Ten-Second Bun	2	Hair	\N	4	72	56	442	46	214	3170	42	150	Sweet
Ten-Second Bun	2	Hair	\N	5	86	66	528	55	256	4630	61	222	Sweet
Straight-A Student	2	Hair	\N	0	193	94	21	32	20	0	0	0	Elegant
Straight-A Student	2	Hair	\N	1	242	118	27	40	25	320	4	15	Elegant
Straight-A Student	2	Hair	\N	2	300	146	33	50	31	970	13	45	Elegant
Straight-A Student	2	Hair	\N	3	367	179	40	61	38	1940	26	90	Elegant
Straight-A Student	2	Hair	\N	4	444	217	49	74	46	3170	42	150	Elegant
Straight-A Student	2	Hair	\N	5	531	259	58	88	55	4630	61	222	Elegant
Azure Sand	3	Hair	\N	0	49	311	154	43	43	0	0	0	Fresh
Azure Sand	3	Hair	\N	1	62	389	193	54	54	540	7	25	Fresh
Azure Sand	3	Hair	\N	2	76	483	239	67	67	1620	21	75	Fresh
Azure Sand	3	Hair	\N	3	94	591	293	82	82	3240	43	150	Fresh
Azure Sand	3	Hair	\N	4	113	716	355	99	99	5290	70	250	Fresh
Azure Sand	3	Hair	\N	5	135	856	424	119	119	7720	102	370	Fresh
Five More Minutes	3	Hair	\N	0	39	163	317	42	38	0	0	0	Sweet
Five More Minutes	3	Hair	\N	1	49	204	397	53	48	540	7	25	Sweet
Five More Minutes	3	Hair	\N	2	61	253	492	66	59	1620	21	75	Sweet
Five More Minutes	3	Hair	\N	3	75	310	603	80	73	3240	43	150	Sweet
Five More Minutes	3	Hair	\N	4	90	375	730	0	88	5290	70	250	Sweet
Five More Minutes	3	Hair	\N	5	108	449	872	116	105	7720	102	370	Sweet
Thousand Symphonies	3	Hair	Symphony of Strings	0	183	50	347	46	35	0	0	0	Sweet
Thousand Symphonies	3	Hair	Symphony of Strings	1	229	63	434	58	44	540	7	25	Sweet
Thousand Symphonies	3	Hair	Symphony of Strings	2	284	78	538	72	55	1620	21	75	Sweet
Thousand Symphonies	3	Hair	Symphony of Strings	3	348	95	660	88	67	3240	43	150	Sweet
Thousand Symphonies	3	Hair	Symphony of Strings	4	421	115	799	106	81	5290	70	250	Sweet
Thousand Symphonies	3	Hair	Symphony of Strings	5	504	138	955	127	97	7720	102	370	Sweet
Distant Memory	4	Hair	Floral Memory	0	181	343	47	47	43	0	0	0	Fresh
Distant Memory	4	Hair	Floral Memory	1	227	429	59	59	54	1620	22	50	Fresh
Distant Memory	4	Hair	Floral Memory	2	281	532	73	73	67	4860	65	150	Fresh
Distant Memory	4	Hair	Floral Memory	3	344	652	90	90	82	9720	130	300	Fresh
Distant Memory	4	Hair	Floral Memory	4	417	789	109	109	99	15880	212	500	Fresh
Distant Memory	4	Hair	Floral Memory	5	498	944	130	130	119	23170	309	740	Fresh
Windswept Wheat	4	Hair	Hometown Breeze	0	59	402	209	64	77	0	0	0	Fresh
Windswept Wheat	4	Hair	Hometown Breeze	1	74	503	262	80	0	1620	22	50	Fresh
Windswept Wheat	4	Hair	Hometown Breeze	2	92	624	324	100	120	4860	65	150	Fresh
Windswept Wheat	4	Hair	Hometown Breeze	3	113	764	398	122	147	9720	130	300	Fresh
Windswept Wheat	4	Hair	Hometown Breeze	4	136	925	481	148	178	15880	212	500	Fresh
Windswept Wheat	4	Hair	Hometown Breeze	5	163	1106	575	176	212	23170	309	740	Fresh
Tomorrow's Vows	4	Hair	Rebirth Wish	0	215	50	426	78	40	0	0	0	Sweet
Tomorrow's Vows	4	Hair	Rebirth Wish	1	269	63	533	98	50	1620	22	50	Sweet
Tomorrow's Vows	4	Hair	Rebirth Wish	2	334	78	661	121	62	4860	65	150	Sweet
Tomorrow's Vows	4	Hair	Rebirth Wish	3	409	95	810	149	76	9720	130	300	Sweet
Tomorrow's Vows	4	Hair	Rebirth Wish	4	495	0	980	180	92	15880	212	500	Sweet
Tomorrow's Vows	4	Hair	Rebirth Wish	5	592	138	0	215	110	23170	309	740	Elegant
Painting Blossoms	4	Hair	Flowing Colors	0	73	425	224	45	44	0	0	0	Fresh
Painting Blossoms	4	Hair	Flowing Colors	1	92	532	280	57	55	1620	22	50	Fresh
Painting Blossoms	4	Hair	Flowing Colors	2	4	659	348	70	69	4860	65	150	Fresh
Painting Blossoms	4	Hair	Flowing Colors	3	139	808	426	86	84	9720	130	300	Fresh
Painting Blossoms	4	Hair	Flowing Colors	4	168	978	516	104	102	15880	212	500	Fresh
Painting Blossoms	4	Hair	Flowing Colors	5	201	1169	616	124	121	23170	309	740	Fresh
Dancing Waves	4	Hair	\N	0	43	205	77	74	41	0	0	0	Fresh
Dancing Waves	4	Hair	\N	1	54	257	0	93	514	1620	22	50	Cool
Dancing Waves	4	Hair	\N	2	67	318	120	115	638	4860	65	150	Cool
Dancing Waves	4	Hair	\N	3	82	390	147	141	781	9720	130	300	Cool
Dancing Waves	4	Hair	\N	4	99	472	178	171	946	15880	212	500	Cool
Dancing Waves	4	Hair	\N	5	19	564	212	204	1131	23170	309	740	Cool
Mellifluous Melody	4	Hair	Sweet Jazz Nights	0	211	54	433	50	61	0	0	0	Sweet
Mellifluous Melody	4	Hair	Sweet Jazz Nights	1	264	68	542	63	77	1620	22	50	Sweet
Mellifluous Melody	4	Hair	Sweet Jazz Nights	2	328	84	672	78	95	4860	65	150	Sweet
Mellifluous Melody	4	Hair	Sweet Jazz Nights	3	401	103	823	95	116	9720	130	300	Sweet
Mellifluous Melody	4	Hair	Sweet Jazz Nights	4	486	125	996	115	141	15880	212	500	Sweet
Mellifluous Melody	4	Hair	Sweet Jazz Nights	5	581	149	1191	138	168	23170	309	740	Sweet
Troubleshooter	4	Hair	Fully Charged	0	45	172	58	44	340	0	0	0	Cool
Troubleshooter	4	Hair	Fully Charged	1	57	215	73	55	425	1620	22	50	Cool
Troubleshooter	4	Hair	Fully Charged	2	70	267	90	69	527	4860	65	150	Cool
Troubleshooter	4	Hair	Fully Charged	3	86	327	0	84	646	9720	130	300	Cool
Troubleshooter	4	Hair	Fully Charged	4	104	396	134	102	782	15880	212	500	Cool
Troubleshooter	4	Hair	Fully Charged	5	124	473	160	121	935	23170	309	740	Cool
Rippling Waves	4	Hair	Rippling Serenity	0	37	46	163	64	350	0	0	0	Cool
Rippling Waves	4	Hair	Rippling Serenity	1	47	58	204	80	438	1620	22	50	Cool
Rippling Waves	4	Hair	Rippling Serenity	2	58	72	253	100	543	4860	65	150	Cool
Rippling Waves	4	Hair	Rippling Serenity	3	71	88	310	122	665	9720	130	300	Cool
Rippling Waves	4	Hair	Rippling Serenity	4	86	106	375	148	805	15880	212	500	Cool
Rippling Waves	4	Hair	Rippling Serenity	5	102	127	449	176	963	23170	309	740	Cool
Clear Vision	3	Hair	Afternoon Shine	0	36	33	362	45	184	0	0	0	Sweet
Clear Vision	3	Hair	Afternoon Shine	1	45	42	453	57	230	540	7	25	Sweet
Clear Vision	3	Hair	Afternoon Shine	2	56	52	562	70	286	1620	21	75	Sweet
Clear Vision	3	Hair	Afternoon Shine	3	69	63	688	86	350	3240	43	150	Sweet
Clear Vision	3	Hair	Afternoon Shine	4	83	76	833	104	424	5290	70	250	Sweet
Clear Vision	3	Hair	Afternoon Shine	5	99	91	996	124	506	7720	102	370	Sweet
Friendly Impression	4	Hair	Bye-Bye Dust	0	170	57	338	52	43	0	0	0	Sweet
Friendly Impression	4	Hair	Bye-Bye Dust	1	213	72	423	65	54	1620	22	50	Sweet
Friendly Impression	4	Hair	Bye-Bye Dust	2	264	89	524	81	67	4860	65	150	Sweet
Friendly Impression	4	Hair	Bye-Bye Dust	3	323	109	643	99	82	9720	130	300	Sweet
Friendly Impression	4	Hair	Bye-Bye Dust	4	391	132	778	120	99	15880	212	500	Sweet
Friendly Impression	4	Hair	Bye-Bye Dust	5	468	157	930	143	119	23170	309	740	Sweet
Spring Whispers	4	Hair	Wind of Purity	0	342	168	62	48	39	0	0	0	Elegant
Spring Whispers	4	Hair	Wind of Purity	1	428	210	78	60	49	1620	22	50	Elegant
Spring Whispers	4	Hair	Wind of Purity	2	531	261	0	75	61	4860	65	150	Elegant
Spring Whispers	4	Hair	Wind of Purity	3	650	320	118	92	75	9720	130	300	Elegant
Spring Whispers	4	Hair	Wind of Purity	4	787	387	143	0	90	15880	212	500	Elegant
Spring Whispers	4	Hair	Wind of Purity	5	941	462	171	132	108	23170	309	740	Elegant
Air Bubbles	4	Hair	Bubbly Voyage	0	37	179	350	53	42	0	0	0	Sweet
Air Bubbles	4	Hair	Bubbly Voyage	1	47	224	438	67	53	1620	22	50	Sweet
Air Bubbles	4	Hair	Bubbly Voyage	2	58	278	543	83	66	4860	65	150	Sweet
Air Bubbles	4	Hair	Bubbly Voyage	3	71	341	665	101	80	9720	130	300	Sweet
Air Bubbles	4	Hair	Bubbly Voyage	4	86	412	805	122	0	15880	212	500	Sweet
Air Bubbles	4	Hair	Bubbly Voyage	5	102	493	963	146	116	23170	309	740	Sweet
Born Pink	3	Hair	\N	0	39	157	316	53	36	0	0	0	Sweet
Born Pink	3	Hair	\N	1	49	197	395	67	45	540	7	25	Sweet
Born Pink	3	Hair	\N	2	61	244	490	83	56	1620	21	75	Sweet
Born Pink	3	Hair	\N	3	75	299	601	101	69	3240	43	150	Sweet
Born Pink	3	Hair	\N	4	90	362	727	122	83	5290	70	250	Sweet
Born Pink	3	Hair	\N	5	108	432	869	146	99	7720	102	370	Sweet
Pink 'n' Curly	3	Hair	\N	0	56	153	313	34	45	0	0	0	Sweet
Pink 'n' Curly	3	Hair	\N	1	70	192	392	43	57	540	7	25	Sweet
Pink 'n' Curly	3	Hair	\N	2	87	238	486	53	70	1620	21	75	Sweet
Pink 'n' Curly	3	Hair	\N	3	107	291	595	65	86	3240	43	150	Sweet
Pink 'n' Curly	3	Hair	\N	4	129	352	720	79	104	5290	70	250	Sweet
Pink 'n' Curly	3	Hair	\N	5	154	421	861	94	124	7720	102	370	Sweet
Crochet Butterfly	3	Hair Accessory	\N	0	8	42	81	9	10	0	0	0	Sweet
Crochet Butterfly	3	Hair Accessory	\N	1	10	53	102	12	13	140	2	6	Sweet
Crochet Butterfly	3	Hair Accessory	\N	2	13	66	126	14	16	410	6	18	Sweet
Crochet Butterfly	3	Hair Accessory	\N	3	16	80	154	18	19	820	11	36	Sweet
Crochet Butterfly	3	Hair Accessory	\N	4	19	0	187	21	23	1330	18	60	Sweet
Crochet Butterfly	3	Hair Accessory	\N	5	22	116	223	25	28	1940	26	88	Sweet
Knitted Butterflies	3	Hair Accessory	\N	0	10	10	83	40	8	0	0	0	Sweet
Knitted Butterflies	3	Hair Accessory	\N	1	13	13	104	50	10	140	2	6	Sweet
Knitted Butterflies	3	Hair Accessory	\N	2	16	16	129	62	13	410	6	18	Sweet
Knitted Butterflies	3	Hair Accessory	\N	3	19	19	158	76	16	820	11	36	Sweet
Knitted Butterflies	3	Hair Accessory	\N	4	23	23	191	92	19	1330	18	60	Sweet
Knitted Butterflies	3	Hair Accessory	\N	5	28	28	229	110	22	1940	26	88	Sweet
Gala Crystal	4	Hair Accessory	\N	0	102	19	0	52	12	0	0	0	Elegant
Gala Crystal	4	Hair Accessory	\N	1	128	24	22	65	15	410	5	12	Elegant
Gala Crystal	4	Hair Accessory	\N	2	159	30	27	81	19	1220	16	36	Elegant
Gala Crystal	4	Hair Accessory	\N	3	194	37	33	99	23	2440	32	72	Elegant
Gala Crystal	4	Hair Accessory	\N	4	235	44	40	120	28	3980	53	120	Elegant
Gala Crystal	4	Hair Accessory	\N	5	281	53	47	143	33	5800	77	177	Elegant
Woven Dreams	3	Hair Accessory	\N	0	39	77	9	12	14	0	0	0	Fresh
Woven Dreams	3	Hair Accessory	\N	1	49	0	0	15	18	140	2	6	Elegant
Woven Dreams	3	Hair Accessory	\N	2	61	120	14	19	22	410	6	18	Fresh
Woven Dreams	3	Hair Accessory	\N	3	75	147	18	23	27	820	11	36	Fresh
Woven Dreams	3	Hair Accessory	\N	4	90	178	21	28	33	1330	18	60	Fresh
Woven Dreams	3	Hair Accessory	\N	5	108	212	25	33	39	1940	26	88	Fresh
Rebounding Deep Breath	3	Hair Accessory	\N	0	14	7	39	13	77	0	0	0	Cool
Rebounding Deep Breath	3	Hair Accessory	\N	1	18	9	49	0	97	140	2	6	Cool
Rebounding Deep Breath	3	Hair Accessory	\N	2	22	0	61	21	120	410	6	18	Cool
Rebounding Deep Breath	3	Hair Accessory	\N	3	27	14	75	25	147	820	11	36	Cool
Rebounding Deep Breath	3	Hair Accessory	\N	4	33	0	90	30	178	1330	18	60	Cool
Rebounding Deep Breath	3	Hair Accessory	\N	5	39	20	108	36	212	1940	26	88	Cool
Sunny Windchime	3	Hair Accessory	\N	0	0	77	13	0	38	0	0	0	Fresh
Sunny Windchime	3	Hair Accessory	\N	1	14	0	0	14	48	140	2	6	Cool
Sunny Windchime	3	Hair Accessory	\N	2	18	120	21	18	59	410	6	18	Fresh
Sunny Windchime	3	Hair Accessory	\N	3	21	147	25	21	73	820	11	36	Fresh
Sunny Windchime	3	Hair Accessory	\N	4	26	178	30	26	88	1330	18	60	Fresh
Sunny Windchime	3	Hair Accessory	\N	5	31	212	36	31	105	1940	26	88	Fresh
Modern Trends	3	Hair Accessory	\N	0	14	15	95	9	18	0	0	0	Sweet
Modern Trends	3	Hair Accessory	\N	1	18	19	19	12	23	140	2	6	Cool
Modern Trends	3	Hair Accessory	\N	2	22	24	148	14	28	410	6	18	Sweet
Modern Trends	3	Hair Accessory	\N	3	27	29	181	18	35	820	11	36	Sweet
Modern Trends	3	Hair Accessory	\N	4	33	35	219	21	42	1330	18	60	Sweet
Modern Trends	3	Hair Accessory	\N	5	39	42	262	25	50	1940	26	88	Sweet
Floral Hoops	2	Hair Accessory	\N	0	49	5	25	5	6	0	0	0	Elegant
Floral Hoops	2	Hair Accessory	\N	1	62	7	32	7	8	80	1	3	Elegant
Floral Hoops	2	Hair Accessory	\N	2	76	8	39	8	10	240	3	10	Elegant
Floral Hoops	2	Hair Accessory	\N	3	94	10	48	10	12	480	6	20	Elegant
Floral Hoops	2	Hair Accessory	\N	4	13	0	58	12	14	790	10	34	Sweet
Floral Hoops	2	Hair Accessory	\N	5	135	14	69	14	7	1150	15	50	Elegant
Starry Hairband	2	Hair Accessory	\N	0	8	6	6	23	47	0	0	0	Cool
Starry Hairband	2	Hair Accessory	\N	1	10	8	8	29	59	80	1	3	Cool
Starry Hairband	2	Hair Accessory	\N	2	13	10	10	36	73	240	3	10	Cool
Starry Hairband	2	Hair Accessory	\N	3	16	0	0	44	90	480	6	20	Cool
Starry Hairband	2	Hair Accessory	\N	4	19	14	14	53	109	790	10	34	Cool
Starry Hairband	2	Hair Accessory	\N	5	22	0	0	64	130	1150	15	50	Cool
Wind's Caress	4	Hair Accessory	Floral Memory	0	43	87	13	12	10	0	0	0	Fresh
Wind's Caress	4	Hair Accessory	Floral Memory	1	54	109	0	15	13	410	5	12	Fresh
Wind's Caress	4	Hair Accessory	Floral Memory	2	67	135	21	19	16	1220	16	36	Fresh
Wind's Caress	4	Hair Accessory	Floral Memory	3	82	166	25	23	19	2440	32	72	Fresh
Wind's Caress	4	Hair Accessory	Floral Memory	4	99	201	30	28	23	3980	53	120	Fresh
Wind's Caress	4	Hair Accessory	Floral Memory	5	19	240	36	33	28	5800	77	177	Fresh
Hopeful Knot	4	Hair Accessory	Hometown Breeze	0	18	105	54	16	10	0	0	0	Fresh
Hopeful Knot	4	Hair Accessory	Hometown Breeze	1	23	132	68	20	13	410	5	12	Fresh
Hopeful Knot	4	Hair Accessory	Hometown Breeze	2	28	163	84	25	16	1220	16	36	Fresh
Hopeful Knot	4	Hair Accessory	Hometown Breeze	3	35	200	103	31	19	2440	32	72	Fresh
Hopeful Knot	4	Hair Accessory	Hometown Breeze	4	42	242	125	37	23	3980	53	120	Fresh
Hopeful Knot	4	Hair Accessory	Hometown Breeze	5	50	289	149	44	28	5800	77	177	Fresh
A New Dawn	4	Hair Accessory	Rebirth Wish	0	50	0	102	16	18	0	0	0	Sweet
A New Dawn	4	Hair Accessory	Rebirth Wish	1	63	22	128	20	23	410	5	12	Sweet
A New Dawn	4	Hair Accessory	Rebirth Wish	2	78	27	159	25	28	1220	16	36	Sweet
A New Dawn	4	Hair Accessory	Rebirth Wish	3	95	33	194	31	35	2440	32	72	Sweet
A New Dawn	4	Hair Accessory	Rebirth Wish	4	0	40	235	37	42	3980	53	120	Sweet
A New Dawn	4	Hair Accessory	Rebirth Wish	5	138	47	281	44	50	5800	77	177	Sweet
Guiding Star	4	Hair Accessory	Tidal Shark Mirage	0	15	52	10	18	108	0	0	0	Cool
Guiding Star	4	Hair Accessory	Tidal Shark Mirage	1	19	65	13	23	135	410	5	12	Cool
Guiding Star	4	Hair Accessory	Tidal Shark Mirage	2	24	81	16	28	168	1220	16	36	Cool
Guiding Star	4	Hair Accessory	Tidal Shark Mirage	3	29	99	19	35	206	2440	32	72	Cool
Guiding Star	4	Hair Accessory	Tidal Shark Mirage	4	35	120	23	42	249	3980	53	120	Cool
Guiding Star	4	Hair Accessory	Tidal Shark Mirage	5	42	143	28	50	297	5800	77	177	Cool
Intermission	4	Hair Accessory	Sweet Jazz Nights	0	53	18	103	18	10	0	0	0	Sweet
Intermission	4	Hair Accessory	Sweet Jazz Nights	1	67	23	129	23	13	410	5	12	Sweet
Intermission	4	Hair Accessory	Sweet Jazz Nights	2	83	28	160	28	16	1220	16	36	Sweet
Intermission	4	Hair Accessory	Sweet Jazz Nights	3	101	35	196	35	19	2440	32	72	Sweet
Intermission	4	Hair Accessory	Sweet Jazz Nights	4	122	42	237	42	23	3980	53	120	Sweet
Intermission	4	Hair Accessory	Sweet Jazz Nights	5	146	50	284	50	28	5800	77	177	Sweet
Starlit Diadem	2	Hair Accessory	\N	0	47	23	5	9	7	0	0	0	Elegant
Starlit Diadem	2	Hair Accessory	\N	1	59	29	7	12	9	80	1	3	Elegant
Starlit Diadem	2	Hair Accessory	\N	2	73	36	8	14	0	240	3	10	Elegant
Starlit Diadem	2	Hair Accessory	\N	3	90	44	10	18	14	480	6	20	Elegant
Starlit Diadem	2	Hair Accessory	\N	4	109	53	0	21	0	790	10	34	Elegant
Starlit Diadem	2	Hair Accessory	\N	5	130	64	14	25	20	1150	15	50	Elegant
Surprise Invitation	3	Hair Accessory	\N	0	0	100	9	16	14	0	0	0	Fresh
Surprise Invitation	3	Hair Accessory	\N	1	14	125	12	20	18	140	2	6	Fresh
Surprise Invitation	3	Hair Accessory	\N	2	18	155	14	25	22	410	6	18	Fresh
Surprise Invitation	3	Hair Accessory	\N	3	21	190	18	31	27	820	11	36	Fresh
Surprise Invitation	3	Hair Accessory	\N	4	26	230	21	37	33	1330	18	60	Fresh
Surprise Invitation	3	Hair Accessory	\N	5	31	275	25	44	39	1940	26	88	Fresh
Pearly Dots	3	Hair Accessory	\N	0	25	47	5	6	7	0	0	0	Fresh
Pearly Dots	3	Hair Accessory	\N	1	32	59	7	8	9	140	2	6	Fresh
Pearly Dots	3	Hair Accessory	\N	2	39	73	8	10	11	410	6	18	Fresh
Pearly Dots	3	Hair Accessory	\N	3	48	90	10	12	14	820	11	36	Fresh
Pearly Dots	3	Hair Accessory	\N	4	58	109	0	14	0	1330	18	60	Fresh
Pearly Dots	3	Hair Accessory	\N	5	69	130	14	0	20	1940	26	88	Fresh
Starlit Companions	3	Hair Accessory	\N	0	9	39	80	14	8	0	0	0	Sweet
Starlit Companions	3	Hair Accessory	\N	1	0	49	100	18	10	140	2	6	Sweet
Starlit Companions	3	Hair Accessory	\N	2	14	61	124	22	13	410	6	18	Sweet
Starlit Companions	3	Hair Accessory	\N	3	18	75	152	27	16	820	11	36	Sweet
Starlit Companions	3	Hair Accessory	\N	4	21	90	184	33	19	1330	18	60	Sweet
Starlit Companions	3	Hair Accessory	\N	5	25	108	220	39	22	1940	26	88	Sweet
Morning Greetings	3	Hair Accessory	A Beautiful Day	0	76	13	36	12	12	0	0	0	Elegant
Morning Greetings	3	Hair Accessory	A Beautiful Day	1	95	0	45	15	15	140	2	6	Elegant
Morning Greetings	3	Hair Accessory	A Beautiful Day	2	118	21	56	19	19	410	6	18	Elegant
Morning Greetings	3	Hair Accessory	A Beautiful Day	3	145	25	69	23	23	820	11	36	Elegant
Morning Greetings	3	Hair Accessory	A Beautiful Day	4	175	30	83	28	28	1330	18	60	Elegant
Morning Greetings	3	Hair Accessory	A Beautiful Day	5	209	36	99	33	33	1940	26	88	Elegant
Starlit Dreams	5	Hair Accessory	Blossoming Stars	0	66	130	18	18	23	0	0	0	Fresh
Starlit Dreams	5	Hair Accessory	Blossoming Stars	1	83	163	23	23	29	680	9	19	Fresh
Starlit Dreams	5	Hair Accessory	Blossoming Stars	2	103	202	28	28	36	2030	27	57	Fresh
Starlit Dreams	5	Hair Accessory	Blossoming Stars	3	126	247	35	35	44	4060	54	114	Fresh
Starlit Dreams	5	Hair Accessory	Blossoming Stars	4	152	299	42	42	53	6630	88	190	Fresh
Starlit Dreams	5	Hair Accessory	Blossoming Stars	5	182	358	50	50	64	9670	129	282	Fresh
Peachy Oath	3	Hair Accessory	\N	0	8	39	79	0	14	0	0	0	Sweet
Peachy Oath	3	Hair Accessory	\N	1	10	49	99	14	18	140	2	6	Sweet
Peachy Oath	3	Hair Accessory	\N	2	13	61	123	18	22	410	6	18	Sweet
Peachy Oath	3	Hair Accessory	\N	3	16	75	151	21	27	820	11	36	Sweet
Peachy Oath	3	Hair Accessory	\N	4	19	90	182	26	33	1330	18	60	Sweet
Peachy Oath	3	Hair Accessory	\N	5	22	108	218	31	39	1940	26	88	Sweet
Nostalgic Breeze	4	Hair Accessory	Afternoon Shine	0	14	10	86	15	41	0	0	0	Sweet
Nostalgic Breeze	4	Hair Accessory	Afternoon Shine	1	18	13	108	19	52	410	5	12	Sweet
Nostalgic Breeze	4	Hair Accessory	Afternoon Shine	2	22	16	134	24	64	1220	16	36	Sweet
Nostalgic Breeze	4	Hair Accessory	Afternoon Shine	3	27	19	164	29	78	2440	32	72	Sweet
Nostalgic Breeze	4	Hair Accessory	Afternoon Shine	4	33	23	198	35	95	3980	53	120	Sweet
Nostalgic Breeze	4	Hair Accessory	Afternoon Shine	5	39	28	237	42	113	5800	77	177	Sweet
Star Seeker	3	Hair Accessory	\N	0	0	9	38	79	13	0	0	0	Sexy
Star Seeker	3	Hair Accessory	\N	1	14	0	48	99	7	140	2	6	Sexy
Star Seeker	3	Hair Accessory	\N	2	18	14	59	123	21	410	6	18	Sexy
Star Seeker	3	Hair Accessory	\N	3	21	18	73	151	25	820	11	36	Sexy
Star Seeker	3	Hair Accessory	\N	4	26	21	88	182	30	1330	18	60	Sexy
Star Seeker	3	Hair Accessory	\N	5	31	25	105	218	36	1940	26	88	Sexy
Blossom Verses	4	Hair Accessory	Wind of Purity	0	86	45	0	8	14	0	0	0	Elegant
Blossom Verses	4	Hair Accessory	Wind of Purity	1	108	57	14	10	18	410	5	12	Elegant
Blossom Verses	4	Hair Accessory	Wind of Purity	2	134	70	18	13	22	1220	16	36	Elegant
Blossom Verses	4	Hair Accessory	Wind of Purity	3	164	86	21	16	27	2440	32	72	Elegant
Blossom Verses	4	Hair Accessory	Wind of Purity	4	198	104	26	19	33	3980	53	120	Elegant
Blossom Verses	4	Hair Accessory	Wind of Purity	5	237	124	31	22	39	5800	77	177	Elegant
Twinkling Refractions	4	Hair Accessory	Bubbly Voyage	0	10	44	84	14	14	0	0	0	Sweet
Twinkling Refractions	4	Hair Accessory	Bubbly Voyage	1	13	55	105	18	18	410	5	12	Sweet
Twinkling Refractions	4	Hair Accessory	Bubbly Voyage	2	16	69	131	22	22	1220	16	36	Sweet
Twinkling Refractions	4	Hair Accessory	Bubbly Voyage	3	19	84	160	27	27	2440	32	72	Sweet
Twinkling Refractions	4	Hair Accessory	Bubbly Voyage	4	23	102	194	33	33	3980	53	120	Sweet
Twinkling Refractions	4	Hair Accessory	Bubbly Voyage	5	28	121	231	39	39	5800	77	177	Sweet
Eternal Blossoms	5	Handheld	\N	0	132	14	68	25	15	0	0	0	Elegant
Eternal Blossoms	5	Handheld	\N	1	165	18	85	32	19	680	9	19	Elegant
Eternal Blossoms	5	Handheld	\N	2	205	22	106	39	24	2030	27	57	Elegant
Eternal Blossoms	5	Handheld	\N	3	251	27	130	48	29	4060	54	114	Elegant
Eternal Blossoms	5	Handheld	\N	4	304	33	157	58	35	6630	88	190	Elegant
Eternal Blossoms	5	Handheld	\N	5	363	39	187	69	42	9670	129	282	Elegant
Eternal Harmony	5	Headwear	\N	0	134	15	65	18	24	0	0	0	Elegant
Eternal Harmony	5	Headwear	\N	1	168	19	82	23	30	680	9	19	Elegant
Eternal Harmony	5	Headwear	\N	2	208	24	101	28	38	2030	27	57	Elegant
Eternal Harmony	5	Headwear	\N	3	255	29	124	35	46	4060	54	114	Elegant
Eternal Harmony	5	Headwear	\N	4	309	35	150	42	56	6630	88	190	Elegant
Eternal Harmony	5	Headwear	\N	5	369	42	179	50	66	9670	129	282	Elegant
Mist Piercer	3	Headwear	\N	0	12	0	14	36	76	0	0	0	Cool
Mist Piercer	3	Headwear	\N	1	15	15	18	45	95	140	2	6	Cool
Mist Piercer	3	Headwear	\N	2	19	19	22	56	118	410	6	18	Cool
Mist Piercer	3	Headwear	\N	3	23	23	27	69	145	820	11	36	Cool
Mist Piercer	3	Headwear	\N	4	28	28	33	83	175	1330	18	60	Cool
Mist Piercer	3	Headwear	\N	5	33	33	39	99	209	1940	26	88	Cool
Winding Branches	3	Headwear	\N	0	0	77	39	15	8	0	0	0	Fresh
Winding Branches	3	Headwear	\N	1	14	0	49	19	10	140	2	6	Sweet
Winding Branches	3	Headwear	\N	2	18	120	61	24	13	410	6	18	Fresh
Winding Branches	3	Headwear	\N	3	21	147	75	29	16	820	11	36	Fresh
Winding Branches	3	Headwear	\N	4	26	178	90	35	19	1330	18	60	Fresh
Winding Branches	3	Headwear	\N	5	31	212	108	42	22	1940	26	88	Fresh
Abyssal Gaze	3	Headwear	\N	0	10	14	0	15	94	0	0	0	Cool
Abyssal Gaze	3	Headwear	\N	1	13	18	22	19	118	140	2	6	Cool
Abyssal Gaze	3	Headwear	\N	2	16	22	27	24	146	410	6	18	Cool
Abyssal Gaze	3	Headwear	\N	3	19	27	33	29	179	820	11	36	Cool
Abyssal Gaze	3	Headwear	\N	4	23	33	40	35	217	1330	18	60	Cool
Abyssal Gaze	3	Headwear	\N	5	28	39	47	42	259	1940	26	88	Cool
Shaky Branch	3	Headwear	\N	0	0	80	40	10	9	0	0	0	Fresh
Shaky Branch	3	Headwear	\N	1	15	100	50	13	12	140	2	6	Fresh
Shaky Branch	3	Headwear	\N	2	19	124	62	16	14	410	6	18	Fresh
Shaky Branch	3	Headwear	\N	3	23	152	76	19	18	820	11	36	Fresh
Shaky Branch	3	Headwear	\N	4	28	184	92	23	21	1330	18	60	Fresh
Shaky Branch	3	Headwear	\N	5	33	220	110	28	25	1940	26	88	Fresh
Cool Shade	3	Headwear	\N	0	24	68	12	23	23	0	0	0	Fresh
Cool Shade	3	Headwear	\N	1	30	85	15	29	29	140	2	6	Fresh
Cool Shade	3	Headwear	\N	2	38	106	19	36	36	410	6	18	Fresh
Cool Shade	3	Headwear	\N	3	46	130	23	44	44	820	11	36	Fresh
Cool Shade	3	Headwear	\N	4	56	157	28	53	53	1330	18	60	Fresh
Cool Shade	3	Headwear	\N	5	66	187	33	64	64	1940	26	88	Fresh
Blossom's Wish	3	Headwear	\N	0	42	80	8	9	11	0	0	0	Fresh
Blossom's Wish	3	Headwear	\N	1	53	100	10	12	14	140	2	6	Fresh
Blossom's Wish	3	Headwear	\N	2	66	124	13	14	18	410	6	18	Fresh
Blossom's Wish	3	Headwear	\N	3	80	152	16	18	21	820	11	36	Fresh
Blossom's Wish	3	Headwear	\N	4	0	184	19	21	26	1330	18	60	Fresh
Blossom's Wish	3	Headwear	\N	5	116	220	22	25	31	1940	26	88	Fresh
Gentle Sunshine	3	Headwear	\N	0	14	13	76	9	38	0	0	0	Sweet
Gentle Sunshine	3	Headwear	\N	1	18	0	95	12	48	140	2	6	Sweet
Gentle Sunshine	3	Headwear	\N	2	22	21	118	14	59	410	6	18	Sweet
Gentle Sunshine	3	Headwear	\N	3	27	25	145	18	73	820	11	36	Sweet
Gentle Sunshine	3	Headwear	\N	4	33	30	175	21	88	1330	18	60	Sweet
Gentle Sunshine	3	Headwear	\N	5	39	36	209	25	105	1940	26	88	Sweet
Choo-Choo Whistle	3	Headwear	\N	0	0	39	14	0	75	0	0	0	Cool
Choo-Choo Whistle	3	Headwear	\N	1	14	49	18	14	94	140	2	6	Cool
Choo-Choo Whistle	3	Headwear	\N	2	18	61	22	18	0	410	6	18	Fresh
Choo-Choo Whistle	3	Headwear	\N	3	21	75	27	21	143	820	11	36	Cool
Choo-Choo Whistle	3	Headwear	\N	4	26	90	33	26	173	1330	18	60	Cool
Choo-Choo Whistle	3	Headwear	\N	5	31	108	39	31	207	1940	26	88	Cool
Adventure's Hat	3	Headwear	\N	0	13	39	13	10	75	0	0	0	Cool
Adventure's Hat	3	Headwear	\N	1	0	49	0	13	94	140	2	6	Cool
Adventure's Hat	3	Headwear	\N	2	21	61	21	16	0	410	6	18	Fresh
Adventure's Hat	3	Headwear	\N	3	25	75	25	19	143	820	11	36	Cool
Adventure's Hat	3	Headwear	\N	4	30	90	30	23	173	1330	18	60	Cool
Adventure's Hat	3	Headwear	\N	5	36	108	36	28	207	1940	26	88	Cool
Dark Night Sky	3	Headwear	Carnival Ode	0	0	13	10	39	77	0	0	0	Cool
Dark Night Sky	3	Headwear	Carnival Ode	1	14	0	13	49	97	140	2	6	Cool
Dark Night Sky	3	Headwear	Carnival Ode	2	18	21	16	61	120	410	6	18	Cool
Dark Night Sky	3	Headwear	Carnival Ode	3	21	25	19	75	147	820	11	36	Cool
Dark Night Sky	3	Headwear	Carnival Ode	4	26	30	23	90	178	1330	18	60	Cool
Dark Night Sky	3	Headwear	Carnival Ode	5	31	36	28	108	212	1940	26	88	Cool
Fluttering Feathers	5	Headwear	Fairytale Swan	0	131	24	23	62	15	0	0	0	Elegant
Fluttering Feathers	5	Headwear	Fairytale Swan	1	164	30	29	78	19	680	9	19	Elegant
Fluttering Feathers	5	Headwear	Fairytale Swan	2	204	38	36	0	24	2030	27	57	Elegant
Fluttering Feathers	5	Headwear	Fairytale Swan	3	249	46	44	118	29	4060	54	114	Elegant
Fluttering Feathers	5	Headwear	Fairytale Swan	4	302	56	53	143	35	6630	88	190	Elegant
Fluttering Feathers	5	Headwear	Fairytale Swan	5	361	66	64	171	42	9670	129	282	Elegant
Bloom Together	5	Headwear	Blossoming Stars	0	67	131	24	16	7	0	0	0	Fresh
Bloom Together	5	Headwear	Blossoming Stars	1	84	164	30	20	22	680	9	19	Fresh
Bloom Together	5	Headwear	Blossoming Stars	2	104	204	38	25	27	2030	27	57	Fresh
Bloom Together	5	Headwear	Blossoming Stars	3	128	249	46	31	33	4060	54	114	Fresh
Bloom Together	5	Headwear	Blossoming Stars	4	155	302	56	37	40	6630	88	190	Fresh
Bloom Together	5	Headwear	Blossoming Stars	5	185	361	66	44	47	9670	129	282	Fresh
Frigid Branches	5	Headwear	Flutter Storm	0	66	0	15	139	18	0	0	0	Sexy
Frigid Branches	5	Headwear	Flutter Storm	1	83	22	19	174	23	680	9	19	Sexy
Frigid Branches	5	Headwear	Flutter Storm	2	103	27	24	216	28	2030	27	57	Sexy
Frigid Branches	5	Headwear	Flutter Storm	3	126	33	29	265	35	4060	54	114	Sexy
Frigid Branches	5	Headwear	Flutter Storm	4	152	40	35	320	42	6630	88	190	Sexy
Frigid Branches	5	Headwear	Flutter Storm	5	182	47	42	383	50	9670	129	282	Sexy
Sunset Finale	3	Headwear	\N	0	81	13	7	9	41	0	0	0	Elegant
Sunset Finale	3	Headwear	\N	1	102	0	9	12	52	140	2	6	Elegant
Sunset Finale	3	Headwear	\N	2	126	21	0	14	64	410	6	18	Elegant
Sunset Finale	3	Headwear	\N	3	154	25	14	18	78	820	11	36	Elegant
Sunset Finale	3	Headwear	\N	4	187	30	0	21	95	1330	18	60	Elegant
Sunset Finale	3	Headwear	\N	5	223	36	20	25	113	1940	26	88	Elegant
Guardian's Pact	3	Headwear	\N	0	19	19	16	19	78	0	0	0	Cool
Guardian's Pact	3	Headwear	\N	1	24	24	20	24	98	140	2	6	Cool
Guardian's Pact	3	Headwear	\N	2	30	30	25	30	121	410	6	18	Cool
Guardian's Pact	3	Headwear	\N	3	37	37	31	37	149	820	11	36	Cool
Guardian's Pact	3	Headwear	\N	4	44	44	37	44	180	1330	18	60	Cool
Guardian's Pact	3	Headwear	\N	5	53	53	44	53	215	1940	26	88	Cool
Bestseller's Crown	2	Headwear	\N	0	9	10	8	6	58	0	0	0	Cool
Bestseller's Crown	2	Headwear	\N	1	0	13	10	8	73	80	1	3	Cool
Bestseller's Crown	2	Headwear	\N	2	14	16	13	10	90	240	3	10	Cool
Bestseller's Crown	2	Headwear	\N	3	18	19	16	12	0	480	6	20	Fresh
Bestseller's Crown	2	Headwear	\N	4	21	23	19	14	134	790	10	34	Cool
Bestseller's Crown	2	Headwear	\N	5	25	28	22	0	160	1150	15	50	Cool
Night's Conductor	4	Headwear	Symphony of Strings	0	45	0	86	10	13	0	0	0	Sweet
Night's Conductor	4	Headwear	Symphony of Strings	1	57	14	108	13	0	410	5	12	Sweet
Night's Conductor	4	Headwear	Symphony of Strings	2	70	18	134	16	21	1220	16	36	Sweet
Night's Conductor	4	Headwear	Symphony of Strings	3	86	21	164	19	25	2440	32	72	Sweet
Night's Conductor	4	Headwear	Symphony of Strings	4	104	26	198	23	30	3980	53	120	Sweet
Night's Conductor	4	Headwear	Symphony of Strings	5	124	31	237	28	36	5800	77	177	Sweet
Harvest's Blessing	4	Headwear	Hometown Breeze	0	16	103	49	18	16	0	0	0	Fresh
Harvest's Blessing	4	Headwear	Hometown Breeze	1	20	129	62	23	20	410	5	12	Fresh
Harvest's Blessing	4	Headwear	Hometown Breeze	2	25	160	76	28	25	1220	16	36	Fresh
Harvest's Blessing	4	Headwear	Hometown Breeze	3	31	196	94	35	31	2440	32	72	Fresh
Harvest's Blessing	4	Headwear	Hometown Breeze	4	37	237	113	42	37	3980	53	120	Fresh
Harvest's Blessing	4	Headwear	Hometown Breeze	5	44	284	135	50	44	5800	77	177	Fresh
Cradle of Wish	4	Headwear	Rebirth Wish	0	52	18	107	10	15	0	0	0	Sweet
Cradle of Wish	4	Headwear	Rebirth Wish	1	65	23	134	13	19	410	5	12	Sweet
Cradle of Wish	4	Headwear	Rebirth Wish	2	81	28	166	16	24	1220	16	36	Sweet
Cradle of Wish	4	Headwear	Rebirth Wish	3	99	35	204	19	29	2440	32	72	Sweet
Cradle of Wish	4	Headwear	Rebirth Wish	4	120	42	247	23	35	3980	53	120	Sweet
Cradle of Wish	4	Headwear	Rebirth Wish	5	143	50	295	28	42	5800	77	177	Sweet
Blank Beginnings	4	Headwear	Flowing Colors	0	14	103	53	16	7	0	0	0	Fresh
Blank Beginnings	4	Headwear	Flowing Colors	1	18	129	67	20	22	410	5	12	Fresh
Blank Beginnings	4	Headwear	Flowing Colors	2	22	160	83	25	27	1220	16	36	Fresh
Blank Beginnings	4	Headwear	Flowing Colors	3	27	196	101	31	33	2440	32	72	Fresh
Blank Beginnings	4	Headwear	Flowing Colors	4	33	237	122	37	40	3980	53	120	Fresh
Blank Beginnings	4	Headwear	Flowing Colors	5	39	284	146	44	47	5800	77	177	Fresh
Drifting Sharkfin	4	Headwear	Tidal Shark Mirage	0	16	53	16	18	100	0	0	0	Cool
Drifting Sharkfin	4	Headwear	Tidal Shark Mirage	1	20	67	20	23	125	410	5	12	Cool
Drifting Sharkfin	4	Headwear	Tidal Shark Mirage	2	25	83	25	28	155	1220	16	36	Cool
Drifting Sharkfin	4	Headwear	Tidal Shark Mirage	3	31	101	31	35	190	2440	32	72	Cool
Drifting Sharkfin	4	Headwear	Tidal Shark Mirage	4	37	122	37	42	230	3980	53	120	Cool
Drifting Sharkfin	4	Headwear	Tidal Shark Mirage	5	44	146	44	50	275	5800	77	177	Cool
Crowning Spring	4	Headwear	Wind of Purity	0	82	43	15	13	12	0	0	0	Elegant
Crowning Spring	4	Headwear	Wind of Purity	1	103	54	19	0	15	410	5	12	Elegant
Crowning Spring	4	Headwear	Wind of Purity	2	128	67	24	21	19	1220	16	36	Elegant
Crowning Spring	4	Headwear	Wind of Purity	3	156	82	29	25	23	2440	32	72	Elegant
Crowning Spring	4	Headwear	Wind of Purity	4	189	99	35	30	28	3980	53	120	Elegant
Crowning Spring	4	Headwear	Wind of Purity	5	226	19	42	36	33	5800	77	177	Elegant
Sparkling Reverie	4	Headwear	Bubbly Voyage	0	13	43	83	14	12	0	0	0	Sweet
Sparkling Reverie	4	Headwear	Bubbly Voyage	1	0	54	104	18	15	410	5	12	Sweet
Sparkling Reverie	4	Headwear	Bubbly Voyage	2	21	67	129	22	19	1220	16	36	Sweet
Sparkling Reverie	4	Headwear	Bubbly Voyage	3	25	82	158	27	23	2440	32	72	Sweet
Sparkling Reverie	4	Headwear	Bubbly Voyage	4	30	99	191	33	28	3980	53	120	Sweet
Sparkling Reverie	4	Headwear	Bubbly Voyage	5	36	19	229	39	33	5800	77	177	Sweet
Superstar Vibes	2	Headwear	\N	0	8	8	6	46	22	0	0	0	Sexy
Superstar Vibes	2	Headwear	\N	1	10	10	8	58	28	80	1	3	Sexy
Superstar Vibes	2	Headwear	\N	2	13	13	10	72	35	240	3	10	Sexy
Superstar Vibes	2	Headwear	\N	3	16	16	0	88	42	480	6	20	Sexy
Superstar Vibes	2	Headwear	\N	4	19	19	14	106	51	790	10	34	Sexy
Superstar Vibes	2	Headwear	\N	5	22	22	0	127	61	1150	15	50	Sexy
Heavy Eyelids	3	Headwear	\N	0	13	39	76	14	8	0	0	0	Sweet
Heavy Eyelids	3	Headwear	\N	1	0	49	95	18	10	140	2	6	Sweet
Heavy Eyelids	3	Headwear	\N	2	21	61	118	22	13	410	6	18	Sweet
Heavy Eyelids	3	Headwear	\N	3	25	75	145	27	16	820	11	36	Sweet
Heavy Eyelids	3	Headwear	\N	4	30	90	175	33	19	1330	18	60	Sweet
Heavy Eyelids	3	Headwear	\N	5	36	108	209	39	22	1940	26	88	Sweet
Kitty Fluff	3	Headwear	\N	2	10	76	39	13	11	410	6	18	Fresh
Kitty Fluff	3	Headwear	\N	3	19	145	75	25	21	820	11	36	Fresh
Kitty Fluff	3	Headwear	\N	4	23	175	90	30	26	1330	18	60	Fresh
Kitty Fluff	3	Headwear	\N	5	28	209	108	36	31	1940	26	88	Fresh
Peace with Birds	3	Headwear	\N	0	0	77	13	0	38	0	0	0	Fresh
Peace with Birds	3	Headwear	\N	1	14	0	0	14	48	140	2	6	Cool
Peace with Birds	3	Headwear	\N	2	18	120	21	18	59	410	6	18	Fresh
Peace with Birds	3	Headwear	\N	3	21	147	25	21	73	820	11	36	Fresh
Peace with Birds	3	Headwear	\N	4	26	178	30	26	88	1330	18	60	Fresh
Peace with Birds	3	Headwear	\N	5	31	212	36	31	105	1940	26	88	Fresh
Starlit Night	3	Headwear	\N	0	37	14	75	10	14	0	0	0	Sweet
Starlit Night	3	Headwear	\N	1	47	18	94	13	18	140	2	6	Sweet
Starlit Night	3	Headwear	\N	2	58	22	0	16	22	410	6	18	Elegant
Starlit Night	3	Headwear	\N	3	71	27	143	19	27	820	11	36	Sweet
Starlit Night	3	Headwear	\N	4	86	33	173	23	33	1330	18	60	Sweet
Starlit Night	3	Headwear	\N	5	102	39	207	28	39	1940	26	88	Sweet
Breeze-Kissed Blooms	3	Headwear	\N	0	41	79	0	0	8	0	0	0	Fresh
Breeze-Kissed Blooms	3	Headwear	\N	1	52	99	14	14	10	140	2	6	Fresh
Breeze-Kissed Blooms	3	Headwear	\N	2	64	123	18	18	13	410	6	18	Fresh
Breeze-Kissed Blooms	3	Headwear	\N	3	78	151	21	21	16	820	11	36	Fresh
Breeze-Kissed Blooms	3	Headwear	\N	4	95	182	26	26	19	1330	18	60	Fresh
Breeze-Kissed Blooms	3	Headwear	\N	5	113	218	31	31	22	1940	26	88	Fresh
Sleepless Night	4	Headwear	Sweet Jazz Nights	0	53	15	106	19	10	0	0	0	Sweet
Sleepless Night	4	Headwear	Sweet Jazz Nights	1	67	19	133	24	13	410	5	12	Sweet
Sleepless Night	4	Headwear	Sweet Jazz Nights	2	83	24	165	30	16	1220	16	36	Sweet
Sleepless Night	4	Headwear	Sweet Jazz Nights	3	101	29	202	37	19	2440	32	72	Sweet
Sleepless Night	4	Headwear	Sweet Jazz Nights	4	122	35	244	44	23	3980	53	120	Sweet
Sleepless Night	4	Headwear	Sweet Jazz Nights	5	146	42	292	53	28	5800	77	177	Sweet
Cheerful Fisher	4	Headwear	Rippling Serenity	0	13	0	44	10	87	0	0	0	Cool
Cheerful Fisher	4	Headwear	Rippling Serenity	1	0	15	55	13	109	410	5	12	Cool
Cheerful Fisher	4	Headwear	Rippling Serenity	2	21	19	69	16	135	1220	16	36	Cool
Cheerful Fisher	4	Headwear	Rippling Serenity	3	25	23	84	19	166	2440	32	72	Cool
Cheerful Fisher	4	Headwear	Rippling Serenity	4	30	28	102	23	201	3980	53	120	Cool
Cheerful Fisher	4	Headwear	Rippling Serenity	5	36	33	121	28	240	5800	77	177	Cool
Azure Ripples	4	Headwear	Bye-Bye Dust	0	44	10	92	8	11	0	0	0	Sweet
Azure Ripples	4	Headwear	Bye-Bye Dust	1	55	13	0	10	14	410	5	12	Elegant
Azure Ripples	4	Headwear	Bye-Bye Dust	2	69	16	143	13	18	1220	16	36	Sweet
Azure Ripples	4	Headwear	Bye-Bye Dust	3	84	19	175	16	21	2440	32	72	Sweet
Azure Ripples	4	Headwear	Bye-Bye Dust	4	102	23	212	19	26	3980	53	120	Sweet
Azure Ripples	4	Headwear	Bye-Bye Dust	5	121	28	253	22	31	5800	77	177	Sweet
Wish Bottle Necklace	3	Neckwear	\N	0	9	78	38	14	11	0	0	0	Fresh
Wish Bottle Necklace	3	Neckwear	\N	1	0	98	48	18	14	140	2	6	Fresh
Wish Bottle Necklace	3	Neckwear	\N	2	14	121	59	22	18	410	6	18	Fresh
Wish Bottle Necklace	3	Neckwear	\N	3	18	149	73	27	21	820	11	36	Fresh
Wish Bottle Necklace	3	Neckwear	\N	4	21	180	88	33	26	1330	18	60	Fresh
Wish Bottle Necklace	3	Neckwear	\N	5	25	215	105	39	31	1940	26	88	Fresh
Budding Sprout	3	Neckwear	\N	0	78	0	38	13	10	0	0	0	Elegant
Budding Sprout	3	Neckwear	\N	1	98	14	48	0	13	140	2	6	Elegant
Budding Sprout	3	Neckwear	\N	2	121	18	59	21	16	410	6	18	Elegant
Budding Sprout	3	Neckwear	\N	3	149	21	73	25	19	820	11	36	Elegant
Budding Sprout	3	Neckwear	\N	4	180	26	88	30	23	1330	18	60	Elegant
Budding Sprout	3	Neckwear	\N	5	215	31	105	36	28	1940	26	88	Elegant
Guardian Pendant	3	Neckwear	\N	0	77	37	14	10	13	0	0	0	Elegant
Guardian Pendant	3	Neckwear	\N	1	0	47	18	13	0	140	2	6	Fresh
Guardian Pendant	3	Neckwear	\N	2	120	58	22	16	21	410	6	18	Elegant
Guardian Pendant	3	Neckwear	\N	3	147	71	27	19	25	820	11	36	Elegant
Guardian Pendant	3	Neckwear	\N	4	178	86	33	23	30	1330	18	60	Elegant
Guardian Pendant	3	Neckwear	\N	5	212	102	39	28	36	1940	26	88	Elegant
Pure Leaves	3	Neckwear	\N	0	10	76	40	0	13	0	0	0	Fresh
Pure Leaves	3	Neckwear	\N	1	13	95	50	14	0	140	2	6	Fresh
Pure Leaves	3	Neckwear	\N	2	16	118	62	18	21	410	6	18	Fresh
Pure Leaves	3	Neckwear	\N	3	19	145	76	21	25	820	11	36	Fresh
Pure Leaves	3	Neckwear	\N	4	23	175	92	26	30	1330	18	60	Fresh
Pure Leaves	3	Neckwear	\N	5	28	209	110	31	36	1940	26	88	Fresh
Fallen Star	3	Neckwear	Searching for Dreams	0	0	8	40	77	14	0	0	0	Sexy
Fallen Star	3	Neckwear	Searching for Dreams	1	15	10	50	0	18	140	2	6	Sweet
Fallen Star	3	Neckwear	Searching for Dreams	2	19	13	62	120	22	410	6	18	Sexy
Fallen Star	3	Neckwear	Searching for Dreams	3	23	16	76	147	27	820	11	36	Sexy
Fallen Star	3	Neckwear	Searching for Dreams	4	28	19	92	178	33	1330	18	60	Sexy
Fallen Star	3	Neckwear	Searching for Dreams	5	33	22	110	212	39	1940	26	88	Sexy
Connected Agate	3	Neckwear	Carnival Ode	0	0	8	10	39	81	0	0	0	Cool
Connected Agate	3	Neckwear	Carnival Ode	1	15	10	13	49	102	140	2	6	Cool
Connected Agate	3	Neckwear	Carnival Ode	2	19	13	16	61	126	410	6	18	Cool
Connected Agate	3	Neckwear	Carnival Ode	3	23	16	19	75	154	820	11	36	Cool
Connected Agate	3	Neckwear	Carnival Ode	4	28	19	23	90	187	1330	18	60	Cool
Connected Agate	3	Neckwear	Carnival Ode	5	33	22	28	108	223	1940	26	88	Cool
Blossom Promenade	5	Neckwear	Blossoming Stars	0	68	131	19	25	13	0	0	0	Fresh
Blossom Promenade	5	Neckwear	Blossoming Stars	1	85	164	24	32	0	680	9	19	Fresh
Blossom Promenade	5	Neckwear	Blossoming Stars	2	106	204	30	39	21	2030	27	57	Fresh
Blossom Promenade	5	Neckwear	Blossoming Stars	3	130	249	37	48	25	4060	54	114	Fresh
Blossom Promenade	5	Neckwear	Blossoming Stars	4	157	302	44	58	30	6630	88	190	Fresh
Blossom Promenade	5	Neckwear	Blossoming Stars	5	187	361	53	69	36	9670	129	282	Fresh
Silent Perch	5	Neckwear	Flutter Storm	0	62	19	24	128	21	0	0	0	Sexy
Silent Perch	5	Neckwear	Flutter Storm	1	78	24	30	160	27	680	9	19	Sexy
Silent Perch	5	Neckwear	Flutter Storm	2	0	30	38	199	33	2030	27	57	Sexy
Silent Perch	5	Neckwear	Flutter Storm	3	118	37	46	244	40	4060	54	114	Sexy
Silent Perch	5	Neckwear	Flutter Storm	4	143	44	56	295	49	6630	88	190	Sexy
Silent Perch	5	Neckwear	Flutter Storm	5	171	53	66	352	58	9670	129	282	Sexy
Cherished Moment	2	Neckwear	\N	0	51	6	5	24	5	0	0	0	Elegant
Cherished Moment	2	Neckwear	\N	1	64	8	7	30	7	80	1	3	Elegant
Cherished Moment	2	Neckwear	\N	2	80	10	8	38	8	240	3	10	Elegant
Cherished Moment	2	Neckwear	\N	3	0	0	10	46	10	480	6	20	Sexy
Cherished Moment	2	Neckwear	\N	4	118	14	0	56	12	790	10	34	Elegant
Cherished Moment	2	Neckwear	\N	5	141	0	14	66	14	1150	15	50	Elegant
Dark Silverbloom	3	Neckwear	\N	0	77	21	18	14	19	0	0	0	Elegant
Dark Silverbloom	3	Neckwear	\N	1	0	27	23	18	24	140	2	6	Fresh
Dark Silverbloom	3	Neckwear	\N	2	120	33	28	22	30	410	6	18	Elegant
Dark Silverbloom	3	Neckwear	\N	3	147	40	35	27	37	820	11	36	Elegant
Dark Silverbloom	3	Neckwear	\N	4	178	49	42	33	44	1330	18	60	Elegant
Dark Silverbloom	3	Neckwear	\N	5	212	58	50	39	53	1940	26	88	Elegant
Floral Love	3	Outerwear	\N	0	22	137	66	13	12	0	0	0	Fresh
Floral Love	3	Outerwear	\N	1	28	172	83	0	15	230	3	10	Fresh
Floral Love	3	Outerwear	\N	2	35	213	103	21	19	680	9	30	Fresh
Floral Love	3	Outerwear	\N	3	42	261	126	25	23	1360	18	60	Fresh
Floral Love	3	Outerwear	\N	4	51	316	152	30	28	2220	29	100	Fresh
Floral Love	3	Outerwear	\N	5	61	377	182	36	33	3230	43	148	Fresh
Red Checkered Vest	3	Outerwear	\N	0	132	16	13	21	69	0	0	0	Elegant
Red Checkered Vest	3	Outerwear	\N	1	165	20	0	27	87	230	3	10	Elegant
Red Checkered Vest	3	Outerwear	\N	2	205	25	21	33	107	680	9	30	Elegant
Red Checkered Vest	3	Outerwear	\N	3	251	31	25	40	132	1360	18	60	Elegant
Red Checkered Vest	3	Outerwear	\N	4	304	37	30	49	159	2220	29	100	Elegant
Red Checkered Vest	3	Outerwear	\N	5	363	44	36	58	190	3230	43	148	Elegant
First Day Jogging	3	Outerwear	\N	0	15	22	131	21	61	0	0	0	Sweet
First Day Jogging	3	Outerwear	\N	1	19	28	164	27	77	230	3	10	Sweet
First Day Jogging	3	Outerwear	\N	2	24	35	204	33	95	680	9	30	Sweet
First Day Jogging	3	Outerwear	\N	3	29	42	249	40	116	1360	18	60	Sweet
First Day Jogging	3	Outerwear	\N	4	35	51	302	49	141	2220	29	100	Sweet
First Day Jogging	3	Outerwear	\N	5	42	61	361	58	168	3230	43	148	Sweet
Gentle Starshine	3	Outerwear	Searching for Dreams	0	0	21	65	126	20	0	0	0	Sexy
Gentle Starshine	3	Outerwear	Searching for Dreams	1	22	27	82	158	25	230	3	10	Sexy
Gentle Starshine	3	Outerwear	Searching for Dreams	2	27	33	101	196	31	680	9	30	Sexy
Gentle Starshine	3	Outerwear	Searching for Dreams	3	33	40	124	240	38	1360	18	60	Sexy
Gentle Starshine	3	Outerwear	Searching for Dreams	4	40	49	150	290	46	2220	29	100	Sexy
Gentle Starshine	3	Outerwear	Searching for Dreams	5	47	58	179	347	55	3230	43	148	Sexy
Work-Life Balance	3	Outerwear	Refined Grace	0	30	18	0	25	160	0	0	0	Cool
Work-Life Balance	3	Outerwear	Refined Grace	1	38	23	22	32	200	230	3	10	Cool
Work-Life Balance	3	Outerwear	Refined Grace	2	47	28	27	39	248	680	9	30	Cool
Work-Life Balance	3	Outerwear	Refined Grace	3	57	35	33	48	304	1360	18	60	Cool
Work-Life Balance	3	Outerwear	Refined Grace	4	69	42	40	58	368	2220	29	100	Cool
Work-Life Balance	3	Outerwear	Refined Grace	5	83	50	47	69	440	3230	43	148	Cool
Midsummer Shade	3	Outerwear	\N	0	18	65	128	19	21	0	0	0	Sweet
Midsummer Shade	3	Outerwear	\N	1	23	82	160	24	27	230	3	10	Sweet
Midsummer Shade	3	Outerwear	\N	2	28	101	199	30	33	680	9	30	Sweet
Midsummer Shade	3	Outerwear	\N	3	35	124	244	37	40	1360	18	60	Sweet
Midsummer Shade	3	Outerwear	\N	4	42	150	295	44	49	2220	29	100	Sweet
Midsummer Shade	3	Outerwear	\N	5	50	179	352	53	58	3230	43	148	Sweet
Sky Monarch Catcher	3	Outerwear	\N	0	23	66	132	15	13	0	0	0	Sweet
Sky Monarch Catcher	3	Outerwear	\N	1	29	83	165	19	0	230	3	10	Sweet
Sky Monarch Catcher	3	Outerwear	\N	2	36	103	205	24	21	680	9	30	Sweet
Sky Monarch Catcher	3	Outerwear	\N	3	44	126	251	29	25	1360	18	60	Sweet
Sky Monarch Catcher	3	Outerwear	\N	4	53	152	304	35	30	2220	29	100	Sweet
Sky Monarch Catcher	3	Outerwear	\N	5	64	182	363	42	36	3230	43	148	Sweet
Handsome Silhouette	3	Outerwear	\N	0	134	20	13	64	20	0	0	0	Elegant
Handsome Silhouette	3	Outerwear	\N	1	168	25	0	80	25	230	3	10	Elegant
Handsome Silhouette	3	Outerwear	\N	2	208	31	21	100	31	680	9	30	Elegant
Handsome Silhouette	3	Outerwear	\N	3	255	38	25	122	38	1360	18	60	Elegant
Handsome Silhouette	3	Outerwear	\N	4	309	46	30	148	46	2220	29	100	Elegant
Handsome Silhouette	3	Outerwear	\N	5	369	55	36	176	55	3230	43	148	Elegant
Golden Elegance	3	Outerwear	\N	0	158	15	27	27	23	0	0	0	Elegant
Golden Elegance	3	Outerwear	\N	1	198	19	34	34	29	230	3	10	Elegant
Golden Elegance	3	Outerwear	\N	2	245	24	42	42	36	680	9	30	Elegant
Golden Elegance	3	Outerwear	\N	3	301	29	52	52	44	1360	18	60	Elegant
Golden Elegance	3	Outerwear	\N	4	364	35	63	63	53	2220	29	100	Elegant
Golden Elegance	3	Outerwear	\N	5	435	42	75	75	64	3230	43	148	Elegant
Rich Hot Chocolate	3	Outerwear	\N	0	124	21	62	22	21	0	0	0	Elegant
Rich Hot Chocolate	3	Outerwear	\N	1	155	27	78	28	27	230	3	10	Elegant
Rich Hot Chocolate	3	Outerwear	\N	2	193	33	0	35	33	680	9	30	Elegant
Rich Hot Chocolate	3	Outerwear	\N	3	236	40	118	42	40	1360	18	60	Elegant
Rich Hot Chocolate	3	Outerwear	\N	4	286	49	143	51	49	2220	29	100	Elegant
Rich Hot Chocolate	3	Outerwear	\N	5	341	58	171	61	58	3230	43	148	Elegant
Woolfruit Growth	2	Outerwear	\N	0	13	77	0	10	39	0	0	0	Fresh
Woolfruit Growth	2	Outerwear	\N	1	0	0	14	13	49	140	2	6	Cool
Woolfruit Growth	2	Outerwear	\N	2	21	120	18	16	61	410	6	18	Fresh
Woolfruit Growth	2	Outerwear	\N	3	25	147	21	19	75	820	11	36	Fresh
Woolfruit Growth	2	Outerwear	\N	4	30	178	26	23	90	1330	18	60	Fresh
Woolfruit Growth	2	Outerwear	\N	5	36	212	31	28	108	1940	26	88	Fresh
Through the Storm	4	Outerwear	Rebirth Wish	0	90	19	188	19	21	0	0	0	Sweet
Through the Storm	4	Outerwear	Rebirth Wish	1	13	24	235	24	27	680	9	20	Sweet
Through the Storm	4	Outerwear	Rebirth Wish	2	140	30	292	30	33	2030	27	60	Sweet
Through the Storm	4	Outerwear	Rebirth Wish	3	171	37	358	37	40	4060	54	120	Sweet
Through the Storm	4	Outerwear	Rebirth Wish	4	207	44	433	44	49	6630	88	200	Sweet
Through the Storm	4	Outerwear	Rebirth Wish	5	248	53	517	53	58	9670	129	296	Sweet
Imaginative Painting	4	Outerwear	Flowing Colors	0	33	174	88	22	22	0	0	0	Fresh
Imaginative Painting	4	Outerwear	Flowing Colors	1	42	218	110	28	28	680	9	20	Fresh
Imaginative Painting	4	Outerwear	Flowing Colors	2	52	270	137	35	35	2030	27	60	Fresh
Imaginative Painting	4	Outerwear	Flowing Colors	3	63	331	168	42	42	4060	54	120	Fresh
Imaginative Painting	4	Outerwear	Flowing Colors	4	76	401	203	51	51	6630	88	200	Fresh
Imaginative Painting	4	Outerwear	Flowing Colors	5	91	479	242	61	61	9670	129	296	Fresh
Puffy Sleeves	4	Outerwear	Rippling Serenity	0	26	26	84	30	171	0	0	0	Cool
Puffy Sleeves	4	Outerwear	Rippling Serenity	1	33	33	105	38	214	680	9	20	Cool
Puffy Sleeves	4	Outerwear	Rippling Serenity	2	41	41	131	47	266	2030	27	60	Cool
Puffy Sleeves	4	Outerwear	Rippling Serenity	3	50	50	160	57	325	4060	54	120	Cool
Puffy Sleeves	4	Outerwear	Rippling Serenity	4	60	60	194	69	394	6630	88	200	Cool
Puffy Sleeves	4	Outerwear	Rippling Serenity	5	72	72	231	83	471	9670	129	296	Cool
Blue Flower Dye	3	Pendant	\N	0	8	7	79	14	41	0	0	0	Sweet
Blue Flower Dye	3	Pendant	\N	1	10	9	99	18	52	140	2	6	Sweet
Blue Flower Dye	3	Pendant	\N	2	13	0	123	22	64	410	6	18	Sweet
Blue Flower Dye	3	Pendant	\N	3	16	14	151	27	78	820	11	36	Sweet
Blue Flower Dye	3	Pendant	\N	4	19	0	182	33	95	1330	18	60	Sweet
Blue Flower Dye	3	Pendant	\N	5	22	20	218	39	113	1940	26	88	Sweet
Whispering Breeze	4	Pendant	Tidal Shark Mirage	0	14	51	0	18	103	0	0	0	Cool
Whispering Breeze	4	Pendant	Tidal Shark Mirage	1	18	64	22	23	129	410	5	12	Cool
Whispering Breeze	4	Pendant	Tidal Shark Mirage	2	22	80	27	28	160	1220	16	36	Cool
Whispering Breeze	4	Pendant	Tidal Shark Mirage	3	27	0	33	35	196	2440	32	72	Cool
Whispering Breeze	4	Pendant	Tidal Shark Mirage	4	33	118	40	42	237	3980	53	120	Cool
Whispering Breeze	4	Pendant	Tidal Shark Mirage	5	39	141	47	50	284	5800	77	177	Cool
Windswept Plume	4	Pendant	Wind of Purity	0	91	43	10	10	11	0	0	0	Elegant
Windswept Plume	4	Pendant	Wind of Purity	1	4	54	13	13	14	410	5	12	Fresh
Windswept Plume	4	Pendant	Wind of Purity	2	142	67	16	16	18	1220	16	36	Elegant
Windswept Plume	4	Pendant	Wind of Purity	3	173	82	19	19	21	2440	32	72	Elegant
Windswept Plume	4	Pendant	Wind of Purity	4	210	99	23	23	26	3980	53	120	Elegant
Windswept Plume	4	Pendant	Wind of Purity	5	251	19	28	28	31	5800	77	177	Elegant
Starry Guidance	5	Ring	Fairytale Swan	0	133	15	24	64	20	0	0	0	Elegant
Starry Guidance	5	Ring	Fairytale Swan	1	167	19	30	80	25	680	9	19	Elegant
Starry Guidance	5	Ring	Fairytale Swan	2	207	24	38	100	31	2030	27	57	Elegant
Starry Guidance	5	Ring	Fairytale Swan	3	253	29	46	122	38	4060	54	114	Elegant
Starry Guidance	5	Ring	Fairytale Swan	4	306	35	56	148	46	6630	88	190	Elegant
Starry Guidance	5	Ring	Fairytale Swan	5	366	42	66	176	55	9670	129	282	Elegant
Footsteps of Love	3	Shoes	\N	0	27	154	75	20	23	0	0	0	Fresh
Footsteps of Love	3	Shoes	\N	1	34	193	94	25	29	270	4	15	Fresh
Footsteps of Love	3	Shoes	\N	2	42	239	0	31	36	810	11	45	Fresh
Footsteps of Love	3	Shoes	\N	3	52	293	143	38	44	1620	22	90	Fresh
Footsteps of Love	3	Shoes	\N	4	63	355	173	46	53	2650	36	150	Fresh
Footsteps of Love	3	Shoes	\N	5	75	424	207	55	64	3870	52	222	Fresh
Pearly Bird	5	Shoes	\N	0	25	27	133	34	42	0	0	0	Sweet
Pearly Bird	5	Shoes	\N	1	32	347	167	43	53	1350	18	48	Fresh
Pearly Bird	5	Shoes	\N	2	39	430	207	53	66	4050	54	144	Fresh
Pearly Bird	5	Shoes	\N	3	48	527	253	65	80	8100	108	289	Fresh
Pearly Bird	5	Shoes	\N	4	58	638	306	79	97	13230	176	481	Fresh
Pearly Bird	5	Shoes	\N	5	69	762	366	94	116	19310	257	711	Fresh
Stroll and Leisure	3	Shoes	\N	0	19	163	16	20	83	0	0	0	Fresh
Stroll and Leisure	3	Shoes	\N	1	24	204	20	25	104	270	4	15	Fresh
Stroll and Leisure	3	Shoes	\N	2	30	253	25	31	129	810	11	45	Fresh
Stroll and Leisure	3	Shoes	\N	3	37	310	31	38	158	1620	22	90	Fresh
Stroll and Leisure	3	Shoes	\N	4	44	375	37	46	191	2650	36	150	Fresh
Stroll and Leisure	3	Shoes	\N	5	53	449	44	55	229	3870	52	222	Fresh
Windchaser	3	Shoes	\N	0	22	78	23	24	153	0	0	0	Cool
Windchaser	3	Shoes	\N	1	28	98	29	30	192	270	4	15	Cool
Windchaser	3	Shoes	\N	2	35	121	36	38	238	810	11	45	Cool
Windchaser	3	Shoes	\N	3	42	149	44	46	291	1620	22	90	Cool
Windchaser	3	Shoes	\N	4	51	180	53	56	352	2650	36	150	Cool
Windchaser	3	Shoes	\N	5	61	215	64	66	421	3870	52	222	Cool
At Night	3	Shoes	\N	0	8	15	0	40	77	0	0	0	Cool
At Night	3	Shoes	\N	1	10	19	14	50	97	270	4	15	Cool
At Night	3	Shoes	\N	2	13	24	18	62	120	810	11	45	Cool
At Night	3	Shoes	\N	3	16	29	21	76	147	1620	22	90	Cool
At Night	3	Shoes	\N	4	19	35	26	92	178	2650	36	150	Cool
At Night	3	Shoes	\N	5	22	42	31	110	212	3870	52	222	Cool
Cool Sprint	3	Shoes	\N	0	0	27	16	79	162	0	0	0	Cool
Cool Sprint	3	Shoes	\N	1	22	34	20	99	203	270	4	15	Cool
Cool Sprint	3	Shoes	\N	2	27	42	25	123	252	810	11	45	Cool
Cool Sprint	3	Shoes	\N	3	33	52	31	151	308	1620	22	90	Cool
Cool Sprint	3	Shoes	\N	4	40	63	37	182	373	2650	36	150	Cool
Cool Sprint	3	Shoes	\N	5	47	75	44	218	446	3870	52	222	Cool
Competition	3	Shoes	\N	0	16	27	18	83	156	0	0	0	Cool
Competition	3	Shoes	\N	1	20	34	23	104	195	270	4	15	Cool
Competition	3	Shoes	\N	2	25	42	28	129	242	810	11	45	Cool
Competition	3	Shoes	\N	3	31	52	35	158	297	1620	22	90	Cool
Competition	3	Shoes	\N	4	37	63	42	191	359	2650	36	150	Cool
Competition	3	Shoes	\N	5	44	75	50	229	429	3870	52	222	Cool
Emerald Whirl	3	Shoes	\N	0	21	76	29	0	157	0	0	0	Cool
Emerald Whirl	3	Shoes	\N	1	27	95	37	22	197	270	4	15	Cool
Emerald Whirl	3	Shoes	\N	2	33	118	45	27	244	810	11	45	Cool
Emerald Whirl	3	Shoes	\N	3	40	145	56	33	299	1620	22	90	Cool
Emerald Whirl	3	Shoes	\N	4	49	175	67	40	362	2650	36	150	Cool
Emerald Whirl	3	Shoes	\N	5	58	209	80	47	432	3870	52	222	Cool
Longing Footsteps	3	Shoes	\N	0	73	23	24	27	153	0	0	0	Cool
Longing Footsteps	3	Shoes	\N	1	92	29	30	34	192	270	4	15	Cool
Longing Footsteps	3	Shoes	\N	2	4	36	38	42	238	810	11	45	Cool
Longing Footsteps	3	Shoes	\N	3	139	44	46	52	291	1620	22	90	Cool
Longing Footsteps	3	Shoes	\N	4	168	53	56	63	352	2650	36	150	Cool
Longing Footsteps	3	Shoes	\N	5	201	64	66	75	421	3870	52	222	Cool
Traveler's Shoes	3	Shoes	\N	0	18	77	29	18	158	0	0	0	Cool
Traveler's Shoes	3	Shoes	\N	1	23	0	37	23	198	270	4	15	Cool
Traveler's Shoes	3	Shoes	\N	2	28	120	45	28	245	810	11	45	Cool
Traveler's Shoes	3	Shoes	\N	3	35	147	56	35	301	1620	22	90	Cool
Traveler's Shoes	3	Shoes	\N	4	42	178	67	42	364	2650	36	150	Cool
Traveler's Shoes	3	Shoes	\N	5	50	212	80	50	435	3870	52	222	Cool
Fairytale Friend	3	Shoes	\N	0	153	25	80	26	16	0	0	0	Elegant
Fairytale Friend	3	Shoes	\N	1	192	32	100	33	20	270	4	15	Elegant
Fairytale Friend	3	Shoes	\N	2	238	39	124	41	25	810	11	45	Elegant
Fairytale Friend	3	Shoes	\N	3	291	48	152	50	31	1620	22	90	Elegant
Fairytale Friend	3	Shoes	\N	4	352	58	184	60	37	2650	36	150	Elegant
Fairytale Friend	3	Shoes	\N	5	421	69	220	72	44	3870	52	222	Elegant
Candy Waltz	3	Shoes	\N	0	20	21	163	77	18	0	0	0	Sweet
Candy Waltz	3	Shoes	\N	1	25	27	204	0	23	270	4	15	Sweet
Candy Waltz	3	Shoes	\N	2	31	33	253	120	28	810	11	45	Sweet
Candy Waltz	3	Shoes	\N	3	38	40	310	147	35	1620	22	90	Sweet
Candy Waltz	3	Shoes	\N	4	46	49	375	178	42	2650	36	150	Sweet
Candy Waltz	3	Shoes	\N	5	55	58	449	212	50	3870	52	222	Sweet
Classic Curves	3	Shoes	\N	0	76	18	23	160	22	0	0	0	Sexy
Classic Curves	3	Shoes	\N	1	95	23	29	200	28	270	4	15	Sexy
Classic Curves	3	Shoes	\N	2	118	28	36	248	35	810	11	45	Sexy
Classic Curves	3	Shoes	\N	3	145	35	44	304	42	1620	22	90	Sexy
Classic Curves	3	Shoes	\N	4	175	42	53	368	51	2650	36	150	Sexy
Classic Curves	3	Shoes	\N	5	209	50	64	440	61	3870	52	222	Sexy
Race Against Time	3	Shoes	\N	0	24	25	157	15	79	0	0	0	Sweet
Race Against Time	3	Shoes	\N	1	30	32	197	19	99	270	4	15	Sweet
Race Against Time	3	Shoes	\N	2	38	39	244	24	123	810	11	45	Sweet
Race Against Time	3	Shoes	\N	3	46	48	299	29	151	1620	22	90	Sweet
Race Against Time	3	Shoes	\N	4	56	58	362	35	182	2650	36	150	Sweet
Race Against Time	3	Shoes	\N	5	66	69	432	42	218	3870	52	222	Sweet
Reshaped Plaid	3	Shoes	\N	0	16	26	26	75	157	0	0	0	Cool
Reshaped Plaid	3	Shoes	\N	1	20	33	33	94	197	270	4	15	Cool
Reshaped Plaid	3	Shoes	\N	2	25	41	41	0	244	810	11	45	Cool
Reshaped Plaid	3	Shoes	\N	3	31	50	50	143	299	1620	22	90	Cool
Reshaped Plaid	3	Shoes	\N	4	37	60	60	173	362	2650	36	150	Cool
Reshaped Plaid	3	Shoes	\N	5	44	72	72	207	432	3870	52	222	Cool
Heartfelt Tribute	3	Shoes	A Beautiful Day	0	156	29	76	16	23	0	0	0	Elegant
Heartfelt Tribute	3	Shoes	A Beautiful Day	1	195	37	95	20	29	270	4	15	Elegant
Heartfelt Tribute	3	Shoes	A Beautiful Day	2	242	45	118	25	36	810	11	45	Elegant
Heartfelt Tribute	3	Shoes	A Beautiful Day	3	297	56	145	31	44	1620	22	90	Elegant
Heartfelt Tribute	3	Shoes	A Beautiful Day	4	359	67	175	37	53	2650	36	150	Elegant
Heartfelt Tribute	3	Shoes	A Beautiful Day	5	429	80	209	44	64	3870	52	222	Elegant
Star of Dreams	3	Shoes	Searching for Dreams	0	15	25	85	160	16	0	0	0	Sexy
Star of Dreams	3	Shoes	Searching for Dreams	1	19	32	107	200	20	270	4	15	Sexy
Star of Dreams	3	Shoes	Searching for Dreams	2	24	39	132	248	25	810	11	45	Sexy
Star of Dreams	3	Shoes	Searching for Dreams	3	29	48	162	304	31	1620	22	90	Sexy
Star of Dreams	3	Shoes	Searching for Dreams	4	35	58	196	368	37	2650	36	150	Sexy
Star of Dreams	3	Shoes	Searching for Dreams	5	42	69	234	440	44	3870	52	222	Sexy
Easy Steps	3	Shoes	Refined Grace	0	26	19	24	36	195	0	0	0	Cool
Easy Steps	3	Shoes	Refined Grace	1	33	24	30	45	244	270	4	15	Cool
Easy Steps	3	Shoes	Refined Grace	2	41	30	38	56	303	810	11	45	Cool
Easy Steps	3	Shoes	Refined Grace	3	50	37	46	69	371	1620	22	90	Cool
Easy Steps	3	Shoes	Refined Grace	4	60	44	56	83	449	2650	36	150	Cool
Easy Steps	3	Shoes	Refined Grace	5	72	53	66	99	537	3870	52	222	Cool
Into Midnight	3	Shoes	Carnival Ode	0	16	28	19	80	156	0	0	0	Cool
Into Midnight	3	Shoes	Carnival Ode	1	20	35	24	100	195	270	4	15	Cool
Into Midnight	3	Shoes	Carnival Ode	2	25	44	30	124	242	810	11	45	Cool
Into Midnight	3	Shoes	Carnival Ode	3	31	54	37	152	297	1620	22	90	Cool
Into Midnight	3	Shoes	Carnival Ode	4	37	65	44	184	359	2650	36	150	Cool
Into Midnight	3	Shoes	Carnival Ode	5	44	77	53	220	429	3870	52	222	Cool
Ripple Tracker	5	Shoes	Fairytale Swan	0	276	29	37	141	27	0	0	0	Elegant
Ripple Tracker	5	Shoes	Fairytale Swan	1	345	37	47	0	34	1350	18	48	Elegant
Ripple Tracker	5	Shoes	Fairytale Swan	2	428	45	58	219	42	4050	54	144	Elegant
Ripple Tracker	5	Shoes	Fairytale Swan	3	525	56	71	268	52	8100	108	289	Elegant
Ripple Tracker	5	Shoes	Fairytale Swan	4	635	67	86	325	63	13230	176	481	Elegant
Ripple Tracker	5	Shoes	Fairytale Swan	5	759	80	102	388	0	19310	257	711	Elegant
Starry Pathway	5	Shoes	Blossoming Stars	0	126	263	45	27	48	0	0	0	Fresh
Starry Pathway	5	Shoes	Blossoming Stars	1	158	329	57	34	60	1350	18	48	Fresh
Starry Pathway	5	Shoes	Blossoming Stars	2	196	408	70	42	75	4050	54	144	Fresh
Starry Pathway	5	Shoes	Blossoming Stars	3	240	500	86	52	92	8100	108	289	Fresh
Starry Pathway	5	Shoes	Blossoming Stars	4	290	605	104	63	0	13230	176	481	Fresh
Starry Pathway	5	Shoes	Blossoming Stars	5	347	724	124	75	132	19310	257	711	Fresh
Offshore Breeze	5	Shoes	Flutter Storm	0	122	42	47	255	43	0	0	0	Sexy
Offshore Breeze	5	Shoes	Flutter Storm	1	153	53	59	319	54	1350	18	48	Sexy
Offshore Breeze	5	Shoes	Flutter Storm	2	190	66	73	396	67	4050	54	144	Sexy
Offshore Breeze	5	Shoes	Flutter Storm	3	232	80	90	485	82	8100	108	289	Sexy
Offshore Breeze	5	Shoes	Flutter Storm	4	281	0	109	587	99	13230	176	481	Sexy
Offshore Breeze	5	Shoes	Flutter Storm	5	336	116	130	702	119	19310	257	711	Sexy
Steady Stride	3	Shoes	Guard's Resolve	0	20	81	27	0	155	0	0	0	Cool
Steady Stride	3	Shoes	Guard's Resolve	1	25	102	34	22	194	270	4	15	Cool
Steady Stride	3	Shoes	Guard's Resolve	2	31	126	42	27	241	810	11	45	Cool
Steady Stride	3	Shoes	Guard's Resolve	3	38	154	52	33	295	1620	22	90	Cool
Steady Stride	3	Shoes	Guard's Resolve	4	46	187	63	40	357	2650	36	150	Cool
Steady Stride	3	Shoes	Guard's Resolve	5	55	223	75	47	427	3870	52	222	Cool
Peachy Steps	3	Shoes	\N	0	19	83	160	20	7	0	0	0	Sweet
Peachy Steps	3	Shoes	\N	1	24	104	200	25	22	270	4	15	Sweet
Peachy Steps	3	Shoes	\N	2	30	129	248	31	27	810	11	45	Sweet
Peachy Steps	3	Shoes	\N	3	37	158	304	38	33	1620	22	90	Sweet
Peachy Steps	3	Shoes	\N	4	44	191	368	46	40	2650	36	150	Sweet
Peachy Steps	3	Shoes	\N	5	53	229	440	55	47	3870	52	222	Sweet
Light Steps	3	Shoes	\N	0	78	157	23	15	27	0	0	0	Fresh
Light Steps	3	Shoes	\N	1	98	197	29	19	34	270	4	15	Fresh
Light Steps	3	Shoes	\N	2	121	244	36	24	42	810	11	45	Fresh
Light Steps	3	Shoes	\N	3	149	299	44	29	52	1620	22	90	Fresh
Light Steps	3	Shoes	\N	4	180	362	53	35	63	2650	36	150	Fresh
Light Steps	3	Shoes	\N	5	215	432	64	42	75	3870	52	222	Fresh
Peep-Toe Mystery	3	Shoes	\N	0	28	20	81	155	16	0	0	0	Sexy
Peep-Toe Mystery	3	Shoes	\N	1	35	25	102	194	20	270	4	15	Sexy
Peep-Toe Mystery	3	Shoes	\N	2	44	31	126	241	25	810	11	45	Sexy
Peep-Toe Mystery	3	Shoes	\N	3	54	38	154	295	31	1620	22	90	Sexy
Peep-Toe Mystery	3	Shoes	\N	4	65	46	187	357	37	2650	36	150	Sexy
Peep-Toe Mystery	3	Shoes	\N	5	77	55	223	427	44	3870	52	222	Sexy
White Clouds	4	Shoes	\N	0	37	100	35	24	208	0	0	0	Cool
White Clouds	4	Shoes	\N	1	47	125	44	30	260	810	11	30	Cool
White Clouds	4	Shoes	\N	2	58	155	55	38	323	2430	33	90	Cool
White Clouds	4	Shoes	\N	3	71	190	67	46	396	4860	65	180	Cool
White Clouds	4	Shoes	\N	4	86	230	81	56	479	7940	106	300	Cool
White Clouds	4	Shoes	\N	5	102	275	0	66	572	11590	155	445	Cool
Cocoa Fairytale	3	Shoes	\N	0	79	158	0	0	29	0	0	0	Fresh
Cocoa Fairytale	3	Shoes	\N	1	99	198	22	22	37	270	4	15	Fresh
Cocoa Fairytale	3	Shoes	\N	2	123	245	27	27	45	810	11	45	Fresh
Cocoa Fairytale	3	Shoes	\N	3	151	301	33	33	56	1620	22	90	Fresh
Cocoa Fairytale	3	Shoes	\N	4	182	364	40	40	67	2650	36	150	Fresh
Cocoa Fairytale	3	Shoes	\N	5	218	435	47	47	80	3870	52	222	Fresh
Plaid Impression	3	Shoes	\N	0	165	16	82	18	19	0	0	0	Elegant
Plaid Impression	3	Shoes	\N	1	207	20	103	23	24	270	4	15	Elegant
Plaid Impression	3	Shoes	\N	2	256	25	128	28	30	810	11	45	Elegant
Plaid Impression	3	Shoes	\N	3	314	31	156	35	37	1620	22	90	Elegant
Plaid Impression	3	Shoes	\N	4	380	37	189	42	44	2650	36	150	Elegant
Plaid Impression	3	Shoes	\N	5	454	44	226	50	53	3870	52	222	Elegant
Summer Branches	3	Shoes	\N	0	180	29	30	31	30	0	0	0	Elegant
Summer Branches	3	Shoes	\N	1	225	37	38	39	38	270	4	15	Elegant
Summer Branches	3	Shoes	\N	2	279	45	47	49	47	810	11	45	Elegant
Summer Branches	3	Shoes	\N	3	342	56	57	59	57	1620	22	90	Elegant
Summer Branches	3	Shoes	\N	4	414	67	69	72	69	2650	36	150	Elegant
Summer Branches	3	Shoes	\N	5	495	80	83	86	83	3870	52	222	Elegant
Skybound Heels	2	Shoes	\N	0	50	93	10	0	16	0	0	0	Fresh
Skybound Heels	2	Shoes	\N	1	63	0	13	14	20	160	2	9	Elegant
Skybound Heels	2	Shoes	\N	2	78	145	16	18	25	480	6	27	Fresh
Skybound Heels	2	Shoes	\N	3	95	0	19	21	31	970	12	54	Elegant
Skybound Heels	2	Shoes	\N	4	0	214	23	26	37	1590	20	90	Fresh
Skybound Heels	2	Shoes	\N	5	138	256	28	31	44	2320	30	133	Fresh
Comfortable Flats	2	Shoes	\N	0	96	46	15	0	12	0	0	0	Elegant
Comfortable Flats	2	Shoes	\N	1	120	58	19	14	15	160	2	9	Elegant
Comfortable Flats	2	Shoes	\N	2	149	72	24	18	19	480	6	27	Elegant
Comfortable Flats	2	Shoes	\N	3	183	88	29	21	23	970	12	54	Elegant
Comfortable Flats	2	Shoes	\N	4	221	106	35	26	28	1590	20	90	Elegant
Comfortable Flats	2	Shoes	\N	5	264	127	42	31	33	2320	30	133	Elegant
Daily Exercise	2	Shoes	\N	0	16	95	0	12	47	0	0	0	Fresh
Daily Exercise	2	Shoes	\N	1	20	19	14	15	59	160	2	9	Cool
Daily Exercise	2	Shoes	\N	2	25	148	18	19	73	480	6	27	Fresh
Daily Exercise	2	Shoes	\N	3	31	181	21	23	90	970	12	54	Fresh
Daily Exercise	2	Shoes	\N	4	37	219	26	28	109	1590	20	90	Fresh
Daily Exercise	2	Shoes	\N	5	44	262	31	33	130	2320	30	133	Fresh
Zappy Sweetheart	2	Shoes	\N	0	13	0	50	0	94	0	0	0	Cool
Zappy Sweetheart	2	Shoes	\N	1	0	15	63	14	118	160	2	9	Cool
Zappy Sweetheart	2	Shoes	\N	2	21	19	78	18	146	480	6	27	Cool
Zappy Sweetheart	2	Shoes	\N	3	25	23	95	21	179	970	12	54	Cool
Zappy Sweetheart	2	Shoes	\N	4	30	28	0	26	217	1590	20	90	Cool
Zappy Sweetheart	2	Shoes	\N	5	36	33	138	31	259	2320	30	133	Cool
Floral Stroll	3	Shoes	\N	0	83	166	0	0	7	0	0	0	Fresh
Floral Stroll	3	Shoes	\N	1	104	208	22	22	22	270	4	15	Fresh
Floral Stroll	3	Shoes	\N	2	129	258	27	27	27	810	11	45	Fresh
Floral Stroll	3	Shoes	\N	3	158	316	33	33	33	1620	22	90	Fresh
Floral Stroll	3	Shoes	\N	4	191	382	40	40	40	2650	36	150	Fresh
Floral Stroll	3	Shoes	\N	5	229	457	47	47	47	3870	52	222	Fresh
One More Minute	3	Shoes	\N	0	0	77	161	18	27	0	0	0	Sweet
One More Minute	3	Shoes	\N	1	22	0	202	23	34	270	4	15	Sweet
One More Minute	3	Shoes	\N	2	27	120	250	28	42	810	11	45	Sweet
One More Minute	3	Shoes	\N	3	33	147	306	35	52	1620	22	90	Sweet
One More Minute	3	Shoes	\N	4	40	178	371	42	63	2650	36	150	Sweet
One More Minute	3	Shoes	\N	5	47	212	443	50	75	3870	52	222	Sweet
Lightseeking Concerto	4	Shoes	Symphony of Strings	0	82	27	174	24	23	0	0	0	Sweet
Lightseeking Concerto	4	Shoes	Symphony of Strings	1	103	34	218	30	29	810	11	30	Sweet
Lightseeking Concerto	4	Shoes	Symphony of Strings	2	128	42	270	38	36	2430	33	90	Sweet
Lightseeking Concerto	4	Shoes	Symphony of Strings	3	156	52	331	46	44	4860	65	180	Sweet
Lightseeking Concerto	4	Shoes	Symphony of Strings	4	189	63	401	56	53	7940	106	300	Sweet
Lightseeking Concerto	4	Shoes	Symphony of Strings	5	226	75	479	66	64	11590	155	445	Sweet
Blooming Cycles	4	Shoes	\N	0	85	173	26	23	23	0	0	0	Fresh
Blooming Cycles	4	Shoes	\N	1	107	217	33	29	29	810	11	30	Fresh
Blooming Cycles	4	Shoes	\N	2	132	269	41	36	36	2430	33	90	Fresh
Blooming Cycles	4	Shoes	\N	3	162	329	50	44	44	4860	65	180	Fresh
Blooming Cycles	4	Shoes	\N	4	196	398	60	53	53	7940	106	300	Fresh
Blooming Cycles	4	Shoes	\N	5	234	476	72	64	64	11590	155	445	Fresh
Homeland's Nostalgia	4	Shoes	Hometown Breeze	0	28	204	102	36	35	0	0	0	Fresh
Homeland's Nostalgia	4	Shoes	Hometown Breeze	1	35	255	128	45	44	810	11	30	Fresh
Homeland's Nostalgia	4	Shoes	Hometown Breeze	2	44	317	159	56	55	2430	33	90	Fresh
Homeland's Nostalgia	4	Shoes	Hometown Breeze	3	54	388	194	69	67	4860	65	180	Fresh
Homeland's Nostalgia	4	Shoes	Hometown Breeze	4	65	470	235	83	81	7940	106	300	Fresh
Homeland's Nostalgia	4	Shoes	Hometown Breeze	5	77	561	281	99	0	11590	155	445	Fresh
Bright Tomorrow	4	Shoes	Rebirth Wish	0	103	35	204	35	28	0	0	0	Sweet
Bright Tomorrow	4	Shoes	Rebirth Wish	1	129	44	255	44	35	810	11	30	Sweet
Bright Tomorrow	4	Shoes	Rebirth Wish	2	160	55	317	55	44	2430	33	90	Sweet
Bright Tomorrow	4	Shoes	Rebirth Wish	3	196	67	388	67	54	4860	65	180	Sweet
Bright Tomorrow	4	Shoes	Rebirth Wish	4	237	81	470	81	65	7940	106	300	Sweet
Bright Tomorrow	4	Shoes	Rebirth Wish	5	284	0	561	0	77	11590	155	445	Sweet
Trace of the Pen	4	Shoes	Flowing Colors	0	23	206	102	35	38	0	0	0	Fresh
Trace of the Pen	4	Shoes	Flowing Colors	1	29	258	128	44	48	810	11	30	Fresh
Trace of the Pen	4	Shoes	Flowing Colors	2	36	320	159	55	59	2430	33	90	Fresh
Trace of the Pen	4	Shoes	Flowing Colors	3	44	392	194	67	73	4860	65	180	Fresh
Trace of the Pen	4	Shoes	Flowing Colors	4	53	474	235	81	88	7940	106	300	Fresh
Trace of the Pen	4	Shoes	Flowing Colors	5	64	567	281	0	105	11590	155	445	Fresh
Gentle Ripples	4	Shoes	Tidal Shark Mirage	0	21	0	29	26	219	0	0	0	Cool
Gentle Ripples	4	Shoes	Tidal Shark Mirage	1	27	139	37	33	274	810	11	30	Cool
Gentle Ripples	4	Shoes	Tidal Shark Mirage	2	33	173	45	41	340	2430	33	90	Cool
Gentle Ripples	4	Shoes	Tidal Shark Mirage	3	40	211	56	50	417	4860	65	180	Cool
Gentle Ripples	4	Shoes	Tidal Shark Mirage	4	49	256	67	60	504	7940	106	300	Cool
Gentle Ripples	4	Shoes	Tidal Shark Mirage	5	58	306	80	72	603	11590	155	445	Cool
Unending Dance	4	Shoes	Sweet Jazz Nights	0	108	25	210	23	39	0	0	0	Sweet
Unending Dance	4	Shoes	Sweet Jazz Nights	1	135	32	263	29	49	810	11	30	Sweet
Unending Dance	4	Shoes	Sweet Jazz Nights	2	168	39	326	36	61	2430	33	90	Sweet
Unending Dance	4	Shoes	Sweet Jazz Nights	3	206	48	399	44	75	4860	65	180	Sweet
Unending Dance	4	Shoes	Sweet Jazz Nights	4	249	58	483	53	90	7940	106	300	Sweet
Unending Dance	4	Shoes	Sweet Jazz Nights	5	297	69	578	64	108	11590	155	445	Sweet
Insulated Marks	4	Shoes	Fully Charged	0	26	84	0	28	174	0	0	0	Cool
Insulated Marks	4	Shoes	Fully Charged	1	33	105	22	35	218	810	11	30	Cool
Insulated Marks	4	Shoes	Fully Charged	2	41	131	27	44	270	2430	33	90	Cool
Insulated Marks	4	Shoes	Fully Charged	3	50	160	33	54	331	4860	65	180	Cool
Insulated Marks	4	Shoes	Fully Charged	4	60	194	40	65	401	7940	106	300	Cool
Insulated Marks	4	Shoes	Fully Charged	5	72	231	47	77	479	11590	155	445	Cool
Dripping Droplets	4	Shoes	Rippling Serenity	0	28	20	85	25	173	0	0	0	Cool
Dripping Droplets	4	Shoes	Rippling Serenity	1	35	25	107	32	217	810	11	30	Cool
Dripping Droplets	4	Shoes	Rippling Serenity	2	44	31	132	39	269	2430	33	90	Cool
Dripping Droplets	4	Shoes	Rippling Serenity	3	54	38	162	48	329	4860	65	180	Cool
Dripping Droplets	4	Shoes	Rippling Serenity	4	65	46	196	58	398	7940	106	300	Cool
Dripping Droplets	4	Shoes	Rippling Serenity	5	77	55	234	69	476	11590	155	445	Cool
Springtime Steps	4	Shoes	Afternoon Shine	0	25	20	172	30	84	0	0	0	Sweet
Springtime Steps	4	Shoes	Afternoon Shine	1	32	25	215	38	105	810	11	30	Sweet
Springtime Steps	4	Shoes	Afternoon Shine	2	39	31	267	47	131	2430	33	90	Sweet
Springtime Steps	4	Shoes	Afternoon Shine	3	48	38	327	57	160	4860	65	180	Sweet
Springtime Steps	4	Shoes	Afternoon Shine	4	58	46	396	69	194	7940	106	300	Sweet
Springtime Steps	4	Shoes	Afternoon Shine	5	69	55	473	83	231	11590	155	445	Sweet
Droplet Ballet	4	Shoes	Bye-Bye Dust	0	93	24	179	0	7	0	0	0	Sweet
Droplet Ballet	4	Shoes	Bye-Bye Dust	1	0	30	224	22	22	810	11	30	Sweet
Droplet Ballet	4	Shoes	Bye-Bye Dust	2	145	38	278	27	27	2430	33	90	Sweet
Droplet Ballet	4	Shoes	Bye-Bye Dust	3	0	46	341	33	33	4860	65	180	Sweet
Droplet Ballet	4	Shoes	Bye-Bye Dust	4	214	56	412	40	40	7940	106	300	Sweet
Droplet Ballet	4	Shoes	Bye-Bye Dust	5	256	66	493	47	47	11590	155	445	Sweet
Airborne Steps	4	Shoes	Wind of Purity	0	167	89	31	24	19	0	0	0	Elegant
Airborne Steps	4	Shoes	Wind of Purity	1	209	0	39	30	24	810	11	30	Elegant
Airborne Steps	4	Shoes	Wind of Purity	2	259	138	49	38	30	2430	33	90	Elegant
Airborne Steps	4	Shoes	Wind of Purity	3	318	170	59	46	37	4860	65	180	Elegant
Airborne Steps	4	Shoes	Wind of Purity	4	385	205	72	56	44	7940	106	300	Elegant
Airborne Steps	4	Shoes	Wind of Purity	5	460	245	86	66	53	11590	155	445	Elegant
Graceful Takeoff	4	Shoes	Bubbly Voyage	0	25	87	181	21	7	0	0	0	Sweet
Graceful Takeoff	4	Shoes	Bubbly Voyage	1	32	109	227	27	22	810	11	30	Sweet
Graceful Takeoff	4	Shoes	Bubbly Voyage	2	39	135	281	33	27	2430	33	90	Sweet
Graceful Takeoff	4	Shoes	Bubbly Voyage	3	48	166	344	40	33	4860	65	180	Sweet
Graceful Takeoff	4	Shoes	Bubbly Voyage	4	58	201	417	49	40	7940	106	300	Sweet
Graceful Takeoff	4	Shoes	Bubbly Voyage	5	69	240	498	58	47	11590	155	445	Sweet
Bejeweled Sandals	2	Shoes	\N	0	0	9	48	15	10	0	0	0	Sweet
Bejeweled Sandals	2	Shoes	\N	1	122	0	60	19	13	160	2	9	Elegant
Bejeweled Sandals	2	Shoes	\N	2	151	14	75	24	16	480	6	27	Elegant
Bejeweled Sandals	2	Shoes	\N	3	185	18	92	29	19	970	12	54	Elegant
Bejeweled Sandals	2	Shoes	\N	4	224	21	0	35	23	1590	20	90	Elegant
Bejeweled Sandals	2	Shoes	\N	5	267	25	132	42	28	2320	30	133	Elegant
Zestful Kicks	3	Shoes	\N	0	19	80	160	21	20	0	0	0	Sweet
Zestful Kicks	3	Shoes	\N	1	24	100	200	27	25	270	4	15	Sweet
Zestful Kicks	3	Shoes	\N	2	30	124	248	33	31	810	11	45	Sweet
Zestful Kicks	3	Shoes	\N	3	37	152	304	40	38	1620	22	90	Sweet
Zestful Kicks	3	Shoes	\N	4	44	184	368	49	46	2650	36	150	Sweet
Zestful Kicks	3	Shoes	\N	5	53	220	440	58	55	3870	52	222	Sweet
Floral Squash House	3	Socks	\N	0	23	126	16	12	22	0	0	0	Fresh
Floral Squash House	3	Socks	\N	1	29	158	20	15	28	180	2	6	Fresh
Floral Squash House	3	Socks	\N	2	36	196	25	19	35	540	7	18	Fresh
Floral Squash House	3	Socks	\N	3	44	240	31	23	42	1080	14	36	Fresh
Floral Squash House	3	Socks	\N	4	53	290	37	28	51	1760	23	60	Fresh
Floral Squash House	3	Socks	\N	5	64	347	44	33	61	2570	34	88	Fresh
Fun Stripes	3	Socks	\N	0	0	48	18	18	99	0	0	0	Cool
Fun Stripes	3	Socks	\N	1	22	60	23	23	124	180	2	6	Cool
Fun Stripes	3	Socks	\N	2	27	75	28	28	154	540	7	18	Cool
Fun Stripes	3	Socks	\N	3	33	92	35	35	189	1080	14	36	Cool
Fun Stripes	3	Socks	\N	4	40	0	42	42	228	1760	23	60	Cool
Fun Stripes	3	Socks	\N	5	47	132	50	50	273	2570	34	88	Cool
White Whirlwind	3	Socks	\N	0	16	51	0	14	108	0	0	0	Cool
White Whirlwind	3	Socks	\N	1	20	64	14	18	135	180	2	6	Cool
White Whirlwind	3	Socks	\N	2	25	80	18	22	168	540	7	18	Cool
White Whirlwind	3	Socks	\N	3	31	0	21	27	206	1080	14	36	Cool
White Whirlwind	3	Socks	\N	4	37	118	26	33	249	1760	23	60	Cool
White Whirlwind	3	Socks	\N	5	44	141	31	39	297	2570	34	88	Cool
Low-Key Trail	3	Socks	\N	0	0	13	16	54	105	0	0	0	Cool
Low-Key Trail	3	Socks	\N	1	14	0	20	68	132	180	2	6	Cool
Low-Key Trail	3	Socks	\N	2	18	21	25	84	163	540	7	18	Cool
Low-Key Trail	3	Socks	\N	3	21	25	31	103	200	1080	14	36	Cool
Low-Key Trail	3	Socks	\N	4	26	30	37	125	242	1760	23	60	Cool
Low-Key Trail	3	Socks	\N	5	31	36	44	149	289	2570	34	88	Cool
Enchanting Crimson	3	Socks	\N	0	0	18	50	106	14	0	0	0	Sexy
Enchanting Crimson	3	Socks	\N	1	14	23	63	133	18	180	2	6	Sexy
Enchanting Crimson	3	Socks	\N	2	18	28	78	165	22	540	7	18	Sexy
Enchanting Crimson	3	Socks	\N	3	21	35	95	202	27	1080	14	36	Sexy
Enchanting Crimson	3	Socks	\N	4	26	42	0	244	33	1760	23	60	Sexy
Enchanting Crimson	3	Socks	\N	5	31	50	138	292	39	2570	34	88	Sexy
White Floral Net	3	Socks	\N	0	18	105	12	52	13	0	0	0	Fresh
White Floral Net	3	Socks	\N	1	23	132	15	65	0	180	2	6	Fresh
White Floral Net	3	Socks	\N	2	28	163	19	81	21	540	7	18	Fresh
White Floral Net	3	Socks	\N	3	35	200	23	99	25	1080	14	36	Fresh
White Floral Net	3	Socks	\N	4	42	242	28	120	30	1760	23	60	Fresh
White Floral Net	3	Socks	\N	5	50	289	33	143	36	2570	34	88	Fresh
Melted Cream	3	Socks	\N	0	0	0	108	14	55	0	0	0	Sweet
Melted Cream	3	Socks	\N	1	15	14	135	18	69	180	2	6	Sweet
Melted Cream	3	Socks	\N	2	19	18	168	22	86	540	7	18	Sweet
Melted Cream	3	Socks	\N	3	23	21	206	27	105	1080	14	36	Sweet
Melted Cream	3	Socks	\N	4	28	26	249	33	127	1760	23	60	Sweet
Melted Cream	3	Socks	\N	5	33	31	297	39	152	2570	34	88	Sweet
Lavender Stripes	3	Socks	\N	0	19	15	53	103	10	0	0	0	Sexy
Lavender Stripes	3	Socks	\N	1	24	19	67	129	13	180	2	6	Sexy
Lavender Stripes	3	Socks	\N	2	30	24	83	160	16	540	7	18	Sexy
Lavender Stripes	3	Socks	\N	3	37	29	101	196	19	1080	14	36	Sexy
Lavender Stripes	3	Socks	\N	4	44	35	122	237	23	1760	23	60	Sexy
Lavender Stripes	3	Socks	\N	5	53	42	146	284	28	2570	34	88	Sexy
Radiant Heat	3	Socks	\N	0	18	103	14	13	52	0	0	0	Fresh
Radiant Heat	3	Socks	\N	1	23	129	18	0	65	180	2	6	Fresh
Radiant Heat	3	Socks	\N	2	28	160	22	21	81	540	7	18	Fresh
Radiant Heat	3	Socks	\N	3	35	196	27	25	99	1080	14	36	Fresh
Radiant Heat	3	Socks	\N	4	42	237	33	30	120	1760	23	60	Fresh
Radiant Heat	3	Socks	\N	5	50	284	39	36	143	2570	34	88	Fresh
Diving Teaser	3	Socks	\N	0	0	50	0	12	103	0	0	0	Cool
Diving Teaser	3	Socks	\N	1	22	63	22	15	129	180	2	6	Cool
Diving Teaser	3	Socks	\N	2	27	78	27	19	160	540	7	18	Cool
Diving Teaser	3	Socks	\N	3	33	95	33	23	196	1080	14	36	Cool
Diving Teaser	3	Socks	\N	4	40	0	40	28	237	1760	23	60	Cool
Diving Teaser	3	Socks	\N	5	47	138	47	33	284	2570	34	88	Cool
Dreamy Blossom	3	Socks	\N	0	0	104	13	54	7	0	0	0	Fresh
Dreamy Blossom	3	Socks	\N	1	14	130	0	68	22	180	2	6	Fresh
Dreamy Blossom	3	Socks	\N	2	18	162	21	84	27	540	7	18	Fresh
Dreamy Blossom	3	Socks	\N	3	21	198	25	103	33	1080	14	36	Fresh
Dreamy Blossom	3	Socks	\N	4	26	240	30	125	40	1760	23	60	Fresh
Dreamy Blossom	3	Socks	\N	5	31	286	36	149	47	2570	34	88	Fresh
Midday Nap	3	Socks	A Beautiful Day	0	104	15	51	16	14	0	0	0	Elegant
Midday Nap	3	Socks	A Beautiful Day	1	130	19	64	20	18	180	2	6	Elegant
Midday Nap	3	Socks	A Beautiful Day	2	162	24	80	25	22	540	7	18	Elegant
Midday Nap	3	Socks	A Beautiful Day	3	198	29	0	31	27	1080	14	36	Elegant
Midday Nap	3	Socks	A Beautiful Day	4	240	35	118	37	33	1760	23	60	Elegant
Midday Nap	3	Socks	A Beautiful Day	5	286	42	141	44	39	2570	34	88	Elegant
Dreamy Starlight	3	Socks	Searching for Dreams	0	0	10	52	109	19	0	0	0	Sexy
Dreamy Starlight	3	Socks	Searching for Dreams	1	14	13	65	137	24	180	2	6	Sexy
Dreamy Starlight	3	Socks	Searching for Dreams	2	18	16	81	169	30	540	7	18	Sexy
Dreamy Starlight	3	Socks	Searching for Dreams	3	21	19	99	208	37	1080	14	36	Sexy
Dreamy Starlight	3	Socks	Searching for Dreams	4	26	23	120	251	44	1760	23	60	Sexy
Dreamy Starlight	3	Socks	Searching for Dreams	5	31	28	143	300	53	2570	34	88	Sexy
Interwoven with Love	5	Socks	Fairytale Swan	0	186	22	22	87	23	0	0	0	Elegant
Interwoven with Love	5	Socks	Fairytale Swan	1	233	28	28	109	29	900	12	19	Elegant
Interwoven with Love	5	Socks	Fairytale Swan	2	289	35	35	135	36	2700	36	57	Elegant
Interwoven with Love	5	Socks	Fairytale Swan	3	354	42	42	166	44	5400	72	114	Elegant
Interwoven with Love	5	Socks	Fairytale Swan	4	428	51	51	201	53	8820	118	190	Elegant
Interwoven with Love	5	Socks	Fairytale Swan	5	512	61	61	240	64	12870	172	282	Elegant
Imminent Bloom	5	Socks	Blossoming Stars	0	90	176	26	25	23	0	0	0	Fresh
Imminent Bloom	5	Socks	Blossoming Stars	1	113	220	33	32	29	900	12	19	Fresh
Imminent Bloom	5	Socks	Blossoming Stars	2	140	273	41	39	36	2700	36	57	Fresh
Imminent Bloom	5	Socks	Blossoming Stars	3	171	335	50	48	44	5400	72	114	Fresh
Imminent Bloom	5	Socks	Blossoming Stars	4	207	405	60	58	53	8820	118	190	Fresh
Imminent Bloom	5	Socks	Blossoming Stars	5	248	484	72	69	64	12870	172	282	Fresh
Windborne Memories	5	Socks	Flutter Storm	0	88	21	18	182	31	0	0	0	Sexy
Windborne Memories	5	Socks	Flutter Storm	1	110	27	23	228	39	900	12	19	Sexy
Windborne Memories	5	Socks	Flutter Storm	2	137	33	28	283	49	2700	36	57	Sexy
Windborne Memories	5	Socks	Flutter Storm	3	168	40	35	346	59	5400	72	114	Sexy
Windborne Memories	5	Socks	Flutter Storm	4	203	49	42	419	72	8820	118	190	Sexy
Windborne Memories	5	Socks	Flutter Storm	5	242	58	50	501	86	12870	172	282	Sexy
Peachfall Page	3	Socks	\N	0	0	51	104	12	16	0	0	0	Sweet
Peachfall Page	3	Socks	\N	1	22	64	130	15	20	180	2	6	Sweet
Peachfall Page	3	Socks	\N	2	27	80	162	19	25	540	7	18	Sweet
Peachfall Page	3	Socks	\N	3	33	0	198	23	31	1080	14	36	Sweet
Peachfall Page	3	Socks	\N	4	40	118	240	28	37	1760	23	60	Sweet
Peachfall Page	3	Socks	\N	5	47	141	286	33	44	2570	34	88	Sweet
Sunflower Long Socks	4	Socks	\N	0	14	20	144	19	73	0	0	0	Sweet
Sunflower Long Socks	4	Socks	\N	1	18	25	180	24	92	540	7	12	Sweet
Sunflower Long Socks	4	Socks	\N	2	22	31	224	30	4	1620	21	36	Sweet
Sunflower Long Socks	4	Socks	\N	3	27	38	274	37	139	3240	43	72	Sweet
Sunflower Long Socks	4	Socks	\N	4	33	46	332	44	168	5290	70	120	Sweet
Sunflower Long Socks	4	Socks	\N	5	39	55	396	53	201	7720	102	177	Sweet
Frosted Sprinkles	3	Socks	\N	0	9	103	52	20	16	0	0	0	Fresh
Frosted Sprinkles	3	Socks	\N	1	0	129	65	25	20	180	2	6	Fresh
Frosted Sprinkles	3	Socks	\N	2	14	160	81	31	25	540	7	18	Fresh
Frosted Sprinkles	3	Socks	\N	3	18	196	99	38	31	1080	14	36	Fresh
Frosted Sprinkles	3	Socks	\N	4	21	237	120	46	37	1760	23	60	Fresh
Frosted Sprinkles	3	Socks	\N	5	25	284	143	55	44	2570	34	88	Fresh
Ultra-Vibrant Stripes	3	Socks	\N	0	14	18	105	12	51	0	0	0	Sweet
Ultra-Vibrant Stripes	3	Socks	\N	1	18	23	132	15	64	180	2	6	Sweet
Ultra-Vibrant Stripes	3	Socks	\N	2	22	28	163	19	80	540	7	18	Sweet
Ultra-Vibrant Stripes	3	Socks	\N	3	27	35	200	23	0	1080	14	36	Sweet
Ultra-Vibrant Stripes	3	Socks	\N	4	33	42	242	28	118	1760	23	60	Sweet
Ultra-Vibrant Stripes	3	Socks	\N	5	39	50	289	33	141	2570	34	88	Sweet
Down-to-Earth	2	Socks	\N	0	8	77	10	12	12	0	0	0	Fresh
Down-to-Earth	2	Socks	\N	1	10	0	13	15	15	110	1	3	Sexy
Down-to-Earth	2	Socks	\N	2	13	120	16	19	19	330	4	10	Fresh
Down-to-Earth	2	Socks	\N	3	16	147	19	23	23	650	8	20	Fresh
Down-to-Earth	2	Socks	\N	4	19	178	23	28	28	1060	13	34	Fresh
Down-to-Earth	2	Socks	\N	5	22	212	28	33	33	1550	19	50	Fresh
Everlasting Lace	2	Socks	\N	0	32	63	10	9	6	0	0	0	Fresh
Everlasting Lace	2	Socks	\N	1	40	79	13	12	8	110	1	3	Fresh
Everlasting Lace	2	Socks	\N	2	50	98	16	14	10	330	4	10	Fresh
Everlasting Lace	2	Socks	\N	3	61	120	19	18	12	650	8	20	Fresh
Everlasting Lace	2	Socks	\N	4	74	145	23	21	14	1060	13	34	Fresh
Everlasting Lace	2	Socks	\N	5	88	174	28	25	7	1550	19	50	Fresh
Fearless Night	2	Socks	\N	0	0	7	9	31	61	0	0	0	Cool
Fearless Night	2	Socks	\N	1	15	9	12	39	77	110	1	3	Cool
Fearless Night	2	Socks	\N	2	19	0	14	49	95	330	4	10	Cool
Fearless Night	2	Socks	\N	3	23	14	18	59	116	650	8	20	Cool
Fearless Night	2	Socks	\N	4	28	0	21	72	141	1060	13	34	Cool
Fearless Night	2	Socks	\N	5	33	20	25	86	168	1550	19	50	Cool
Save the Longstocking	3	Socks	\N	0	13	15	14	104	54	0	0	0	Sexy
Save the Longstocking	3	Socks	\N	1	0	19	18	130	68	180	2	6	Sexy
Save the Longstocking	3	Socks	\N	2	21	24	22	162	84	540	7	18	Sexy
Save the Longstocking	3	Socks	\N	3	25	29	27	198	103	1080	14	36	Sexy
Save the Longstocking	3	Socks	\N	4	30	35	33	240	125	1760	23	60	Sexy
Save the Longstocking	3	Socks	\N	5	36	42	39	286	149	2570	34	88	Sexy
White Tights	2	Socks	\N	0	30	62	10	7	11	0	0	0	Fresh
White Tights	2	Socks	\N	1	38	78	13	9	14	110	1	3	Fresh
White Tights	2	Socks	\N	2	47	0	16	0	18	330	4	10	Elegant
White Tights	2	Socks	\N	3	57	118	19	14	21	650	8	20	Fresh
White Tights	2	Socks	\N	4	69	143	23	0	26	1060	13	34	Fresh
White Tights	2	Socks	\N	5	83	171	28	20	31	1550	19	50	Fresh
Rouge and Verdant	3	Socks	\N	0	53	18	100	10	19	0	0	0	Sweet
Rouge and Verdant	3	Socks	\N	1	67	23	125	13	24	180	2	6	Sweet
Rouge and Verdant	3	Socks	\N	2	83	28	155	16	30	540	7	18	Sweet
Rouge and Verdant	3	Socks	\N	3	101	35	190	19	37	1080	14	36	Sweet
Rouge and Verdant	3	Socks	\N	4	122	42	230	23	44	1760	23	60	Sweet
Rouge and Verdant	3	Socks	\N	5	146	50	275	28	53	2570	34	88	Sweet
Midnight Bloom	3	Socks	\N	0	19	21	33	96	30	0	0	0	Sexy
Midnight Bloom	3	Socks	\N	1	24	27	42	120	38	180	2	6	Sexy
Midnight Bloom	3	Socks	\N	2	30	33	52	149	47	540	7	18	Sexy
Midnight Bloom	3	Socks	\N	3	37	40	63	183	57	1080	14	36	Sexy
Midnight Bloom	3	Socks	\N	4	44	49	76	221	69	1760	23	60	Sexy
Midnight Bloom	3	Socks	\N	5	53	58	91	264	83	2570	34	88	Sexy
Free Spirit	2	Socks	\N	0	14	13	21	59	14	0	0	0	Sexy
Free Spirit	2	Socks	\N	1	18	0	27	74	18	110	1	3	Sexy
Free Spirit	2	Socks	\N	2	22	21	33	92	22	330	4	10	Sexy
Free Spirit	2	Socks	\N	3	27	25	40	113	27	650	8	20	Sexy
Free Spirit	2	Socks	\N	4	33	30	49	136	33	1060	13	34	Sexy
Free Spirit	2	Socks	\N	5	39	36	58	163	39	1550	19	50	Sexy
Monochrome Stripes	2	Socks	\N	0	7	33	9	7	63	0	0	0	Cool
Monochrome Stripes	2	Socks	\N	1	9	42	0	9	79	110	1	3	Cool
Monochrome Stripes	2	Socks	\N	2	0	52	14	0	98	330	4	10	Cool
Monochrome Stripes	2	Socks	\N	3	14	63	18	14	120	650	8	20	Cool
Monochrome Stripes	2	Socks	\N	4	0	76	21	0	145	1060	13	34	Cool
Monochrome Stripes	2	Socks	\N	5	20	91	25	20	174	1550	19	50	Cool
Sweet Dreams	3	Socks	\N	0	13	54	110	0	12	0	0	0	Sweet
Sweet Dreams	3	Socks	\N	1	0	68	138	14	15	180	2	6	Sweet
Sweet Dreams	3	Socks	\N	2	21	84	171	18	19	540	7	18	Sweet
Sweet Dreams	3	Socks	\N	3	25	103	209	21	23	1080	14	36	Sweet
Sweet Dreams	3	Socks	\N	4	30	125	253	26	28	1760	23	60	Sweet
Sweet Dreams	3	Socks	\N	5	36	149	303	31	33	2570	34	88	Sweet
Rhythmic Pulse	4	Socks	Symphony of Strings	0	58	21	114	15	11	0	0	0	Sweet
Rhythmic Pulse	4	Socks	Symphony of Strings	1	73	27	143	19	14	540	7	12	Sweet
Rhythmic Pulse	4	Socks	Symphony of Strings	2	90	33	0	24	18	1620	21	36	Elegant
Rhythmic Pulse	4	Socks	Symphony of Strings	3	0	40	217	29	21	3240	43	72	Sweet
Rhythmic Pulse	4	Socks	Symphony of Strings	4	134	49	263	35	26	5290	70	120	Sweet
Rhythmic Pulse	4	Socks	Symphony of Strings	5	160	58	314	42	31	7720	102	177	Sweet
Twilight Daydream	4	Socks	Floral Memory	0	58	4	15	0	15	0	0	0	Elegant
Twilight Daydream	4	Socks	Floral Memory	1	73	143	19	22	19	540	7	12	Fresh
Twilight Daydream	4	Socks	Floral Memory	2	90	0	24	27	24	1620	21	36	Elegant
Twilight Daydream	4	Socks	Floral Memory	3	0	217	29	33	29	3240	43	72	Fresh
Twilight Daydream	4	Socks	Floral Memory	4	134	263	35	40	35	5290	70	120	Fresh
Twilight Daydream	4	Socks	Floral Memory	5	160	314	42	47	42	7720	102	177	Fresh
Breezy Cotton	4	Socks	Hometown Breeze	0	18	136	72	23	20	0	0	0	Fresh
Breezy Cotton	4	Socks	Hometown Breeze	1	23	170	90	29	25	540	7	12	Fresh
Breezy Cotton	4	Socks	Hometown Breeze	2	28	211	0	36	31	1620	21	36	Fresh
Breezy Cotton	4	Socks	Hometown Breeze	3	35	259	137	44	38	3240	43	72	Fresh
Breezy Cotton	4	Socks	Hometown Breeze	4	42	313	166	53	46	5290	70	120	Fresh
Breezy Cotton	4	Socks	Hometown Breeze	5	50	374	198	64	55	7720	102	177	Fresh
Blooming Path	4	Socks	Rebirth Wish	0	70	14	139	23	24	0	0	0	Sweet
Blooming Path	4	Socks	Rebirth Wish	1	88	18	174	29	30	540	7	12	Sweet
Blooming Path	4	Socks	Rebirth Wish	2	109	22	216	36	38	1620	21	36	Sweet
Blooming Path	4	Socks	Rebirth Wish	3	133	27	265	44	46	3240	43	72	Sweet
Blooming Path	4	Socks	Rebirth Wish	4	161	33	320	53	56	5290	70	120	Sweet
Blooming Path	4	Socks	Rebirth Wish	5	193	39	383	64	66	7720	102	177	Sweet
New Colors	4	Socks	Flowing Colors	0	23	138	67	23	19	0	0	0	Fresh
New Colors	4	Socks	Flowing Colors	1	29	173	84	29	24	540	7	12	Fresh
New Colors	4	Socks	Flowing Colors	2	36	214	104	36	30	1620	21	36	Fresh
New Colors	4	Socks	Flowing Colors	3	44	263	128	44	37	3240	43	72	Fresh
New Colors	4	Socks	Flowing Colors	4	53	318	155	53	44	5290	70	120	Fresh
New Colors	4	Socks	Flowing Colors	5	64	380	185	64	53	7720	102	177	Fresh
Shallow Reflections	4	Socks	Tidal Shark Mirage	0	19	70	19	18	144	0	0	0	Cool
Shallow Reflections	4	Socks	Tidal Shark Mirage	1	24	88	24	23	180	540	7	12	Cool
Shallow Reflections	4	Socks	Tidal Shark Mirage	2	30	109	30	28	224	1620	21	36	Cool
Shallow Reflections	4	Socks	Tidal Shark Mirage	3	37	133	37	35	274	3240	43	72	Cool
Shallow Reflections	4	Socks	Tidal Shark Mirage	4	44	161	44	42	332	5290	70	120	Cool
Shallow Reflections	4	Socks	Tidal Shark Mirage	5	53	193	53	50	396	7720	102	177	Cool
Soft Bibcoon Socks	4	Socks	Sweet Jazz Nights	0	66	18	139	24	23	0	0	0	Sweet
Soft Bibcoon Socks	4	Socks	Sweet Jazz Nights	1	83	23	174	30	29	540	7	12	Sweet
Soft Bibcoon Socks	4	Socks	Sweet Jazz Nights	2	103	28	216	38	36	1620	21	36	Sweet
Soft Bibcoon Socks	4	Socks	Sweet Jazz Nights	3	126	35	265	46	44	3240	43	72	Sweet
Soft Bibcoon Socks	4	Socks	Sweet Jazz Nights	4	152	42	320	56	53	5290	70	120	Sweet
Soft Bibcoon Socks	4	Socks	Sweet Jazz Nights	5	182	50	383	66	64	7720	102	177	Sweet
Volt Check	4	Socks	Fully Charged	0	16	56	18	19	111	0	0	0	Cool
Volt Check	4	Socks	Fully Charged	1	20	70	23	24	139	540	7	12	Cool
Volt Check	4	Socks	Fully Charged	2	25	87	28	30	173	1620	21	36	Cool
Volt Check	4	Socks	Fully Charged	3	31	107	35	37	211	3240	43	72	Cool
Volt Check	4	Socks	Fully Charged	4	37	129	42	44	256	5290	70	120	Cool
Volt Check	4	Socks	Fully Charged	5	44	154	50	53	306	7720	102	177	Cool
Dreamy Hope	3	Socks	\N	0	18	47	100	18	16	0	0	0	Sweet
Dreamy Hope	3	Socks	\N	1	23	59	125	23	20	180	2	6	Sweet
Dreamy Hope	3	Socks	\N	2	28	73	155	28	25	540	7	18	Sweet
Dreamy Hope	3	Socks	\N	3	35	90	190	35	31	1080	14	36	Sweet
Dreamy Hope	3	Socks	\N	4	42	109	230	42	37	1760	23	60	Sweet
Dreamy Hope	3	Socks	\N	5	50	130	275	50	44	2570	34	88	Sweet
Little Luck	4	Socks	Afternoon Shine	0	19	0	116	11	57	0	0	0	Sweet
Little Luck	4	Socks	Afternoon Shine	1	24	22	145	14	72	540	7	12	Sweet
Little Luck	4	Socks	Afternoon Shine	2	30	27	180	18	89	1620	21	36	Sweet
Little Luck	4	Socks	Afternoon Shine	3	37	33	221	21	109	3240	43	72	Sweet
Little Luck	4	Socks	Afternoon Shine	4	44	40	267	26	132	5290	70	120	Sweet
Little Luck	4	Socks	Afternoon Shine	5	53	47	319	31	157	7720	102	177	Sweet
Pawprint Love	4	Socks	Bye-Bye Dust	0	58	13	116	12	21	0	0	0	Sweet
Pawprint Love	4	Socks	Bye-Bye Dust	1	73	0	145	15	27	540	7	12	Sweet
Pawprint Love	4	Socks	Bye-Bye Dust	2	90	21	180	19	33	1620	21	36	Sweet
Pawprint Love	4	Socks	Bye-Bye Dust	3	0	25	221	23	40	3240	43	72	Sweet
Pawprint Love	4	Socks	Bye-Bye Dust	4	134	30	267	28	49	5290	70	120	Sweet
Pawprint Love	4	Socks	Bye-Bye Dust	5	160	36	319	33	58	7720	102	177	Sweet
Transparent Trajectory	4	Socks	Bubbly Voyage	0	18	56	113	14	18	0	0	0	Sweet
Transparent Trajectory	4	Socks	Bubbly Voyage	1	23	70	142	18	23	540	7	12	Sweet
Transparent Trajectory	4	Socks	Bubbly Voyage	2	28	87	176	22	28	1620	21	36	Sweet
Transparent Trajectory	4	Socks	Bubbly Voyage	3	35	107	215	27	35	3240	43	72	Sweet
Transparent Trajectory	4	Socks	Bubbly Voyage	4	42	129	260	33	42	5290	70	120	Sweet
Transparent Trajectory	4	Socks	Bubbly Voyage	5	50	154	311	39	50	7720	102	177	Sweet
Dot-Grip Sentiments	4	Socks	\N	0	0	8	31	62	8	0	0	0	Sexy
Dot-Grip Sentiments	4	Socks	\N	1	14	10	39	78	10	540	7	12	Sexy
Dot-Grip Sentiments	4	Socks	\N	2	18	13	49	97	13	1620	21	36	Sexy
Dot-Grip Sentiments	4	Socks	\N	3	21	16	59	118	16	3240	43	72	Sexy
Dot-Grip Sentiments	4	Socks	\N	4	26	19	72	143	19	5290	70	120	Sexy
Dot-Grip Sentiments	4	Socks	\N	5	31	22	86	171	22	7720	102	177	Sexy
Crybaby Vest	3	Top	\N	0	43	130	46	33	247	0	0	0	Cool
Crybaby Vest	3	Top	\N	1	54	163	58	42	309	450	6	20	Cool
Crybaby Vest	3	Top	\N	2	67	202	72	52	383	1350	18	60	Cool
Crybaby Vest	3	Top	\N	3	82	247	88	63	470	2700	36	120	Cool
Crybaby Vest	3	Top	\N	4	99	299	106	76	569	4410	59	200	Cool
Crybaby Vest	3	Top	\N	5	19	358	127	91	680	6440	86	296	Cool
Scalding Tears	3	Top	\N	0	32	317	40	53	58	0	0	0	Fresh
Scalding Tears	3	Top	\N	1	40	397	50	67	73	450	6	20	Fresh
Scalding Tears	3	Top	\N	2	50	492	62	83	90	1350	18	60	Fresh
Scalding Tears	3	Top	\N	3	61	603	76	101	0	2700	36	120	Fresh
Scalding Tears	3	Top	\N	4	74	730	92	122	134	4410	59	200	Fresh
Scalding Tears	3	Top	\N	5	88	872	110	146	160	6440	86	296	Fresh
Steaming Skewers	3	Top	\N	0	34	33	261	38	134	0	0	0	Sweet
Steaming Skewers	3	Top	\N	1	43	42	327	48	168	450	6	20	Sweet
Steaming Skewers	3	Top	\N	2	53	52	405	59	208	1350	18	60	Sweet
Steaming Skewers	3	Top	\N	3	65	63	496	73	255	2700	36	120	Sweet
Steaming Skewers	3	Top	\N	4	79	76	601	88	309	4410	59	200	Sweet
Steaming Skewers	3	Top	\N	5	94	91	718	105	369	6440	86	296	Sweet
Golden Handprint	3	Top	\N	0	34	132	27	41	266	0	0	0	Cool
Golden Handprint	3	Top	\N	1	43	165	34	52	333	450	6	20	Cool
Golden Handprint	3	Top	\N	2	53	205	42	64	413	1350	18	60	Cool
Golden Handprint	3	Top	\N	3	65	251	52	78	506	2700	36	120	Cool
Golden Handprint	3	Top	\N	4	79	304	63	95	612	4410	59	200	Cool
Golden Handprint	3	Top	\N	5	94	363	75	113	732	6440	86	296	Cool
Noir Creed 01	3	Top	\N	0	37	125	48	35	256	0	0	0	Cool
Noir Creed 01	3	Top	\N	1	47	157	60	44	320	450	6	20	Cool
Noir Creed 01	3	Top	\N	2	58	194	75	55	397	1350	18	60	Cool
Noir Creed 01	3	Top	\N	3	71	238	92	67	487	2700	36	120	Cool
Noir Creed 01	3	Top	\N	4	86	288	0	81	589	4410	59	200	Cool
Noir Creed 01	3	Top	\N	5	102	344	132	0	704	6440	86	296	Cool
Raging Rockling	5	Top	\N	0	63	62	227	57	442	0	0	0	Cool
Raging Rockling	5	Top	\N	1	79	78	284	72	553	0	0	0	Cool
Raging Rockling	5	Top	\N	2	98	0	352	89	686	0	0	0	Cool
Raging Rockling	5	Top	\N	3	120	118	432	109	840	0	0	0	Cool
Raging Rockling	5	Top	\N	4	145	143	523	132	1017	0	0	0	Cool
Raging Rockling	5	Top	\N	5	174	171	625	157	1216	0	0	0	Cool
Riverside Run	3	Top	\N	0	39	134	35	24	267	0	0	0	Cool
Riverside Run	3	Top	\N	1	49	168	44	30	334	450	6	20	Cool
Riverside Run	3	Top	\N	2	61	208	55	38	414	1350	18	60	Cool
Riverside Run	3	Top	\N	3	75	255	67	46	508	2700	36	120	Cool
Riverside Run	3	Top	\N	4	90	309	81	56	615	4410	59	200	Cool
Riverside Run	3	Top	\N	5	108	369	0	66	735	6440	86	296	Cool
Rebellious Dream	3	Top	\N	0	34	29	34	138	265	0	0	0	Cool
Rebellious Dream	3	Top	\N	1	43	37	43	173	332	450	6	20	Cool
Rebellious Dream	3	Top	\N	2	53	45	53	214	41	1350	18	60	Sexy
Rebellious Dream	3	Top	\N	3	65	56	65	263	504	2700	36	120	Cool
Rebellious Dream	3	Top	\N	4	79	67	79	318	610	4410	59	200	Cool
Rebellious Dream	3	Top	\N	5	94	80	94	380	729	6440	86	296	Cool
Well-Organized	3	Top	\N	0	41	132	25	255	47	0	0	0	Sexy
Well-Organized	3	Top	\N	1	52	165	32	319	59	450	6	20	Sexy
Well-Organized	3	Top	\N	2	64	205	39	396	73	1350	18	60	Sexy
Well-Organized	3	Top	\N	3	78	251	48	485	90	2700	36	120	Sexy
Well-Organized	3	Top	\N	4	95	304	58	587	109	4410	59	200	Sexy
Well-Organized	3	Top	\N	5	113	363	69	702	130	6440	86	296	Sexy
Distant Gaze	3	Top	\N	0	130	269	35	38	28	0	0	0	Fresh
Distant Gaze	3	Top	\N	1	163	337	44	48	35	450	6	20	Fresh
Distant Gaze	3	Top	\N	2	202	417	55	59	44	1350	18	60	Fresh
Distant Gaze	3	Top	\N	3	247	512	67	73	54	2700	36	120	Fresh
Distant Gaze	3	Top	\N	4	299	619	81	88	65	4410	59	200	Fresh
Distant Gaze	3	Top	\N	5	358	740	0	105	77	6440	86	296	Fresh
Mark of Life	3	Top	\N	0	45	32	39	132	251	0	0	0	Cool
Mark of Life	3	Top	\N	1	57	40	49	165	314	450	6	20	Cool
Mark of Life	3	Top	\N	2	70	50	61	205	390	1350	18	60	Cool
Mark of Life	3	Top	\N	3	86	61	75	251	477	2700	36	120	Cool
Mark of Life	3	Top	\N	4	104	74	90	304	578	4410	59	200	Cool
Mark of Life	3	Top	\N	5	124	88	108	363	691	6440	86	296	Cool
Fleeting Oath	3	Top	\N	0	24	41	125	48	262	0	0	0	Cool
Fleeting Oath	3	Top	\N	1	30	52	157	60	328	450	6	20	Cool
Fleeting Oath	3	Top	\N	2	38	64	194	75	407	1350	18	60	Cool
Fleeting Oath	3	Top	\N	3	46	78	238	92	498	2700	36	120	Cool
Fleeting Oath	3	Top	\N	4	56	95	288	0	603	4410	59	200	Cool
Fleeting Oath	3	Top	\N	5	66	113	344	132	721	6440	86	296	Cool
Cutie Dragon	3	Top	\N	0	30	260	130	32	48	0	0	0	Fresh
Cutie Dragon	3	Top	\N	1	38	325	163	40	60	450	6	20	Fresh
Cutie Dragon	3	Top	\N	2	47	403	202	50	75	1350	18	60	Fresh
Cutie Dragon	3	Top	\N	3	57	494	247	61	92	2700	36	120	Fresh
Cutie Dragon	3	Top	\N	4	69	598	299	74	0	4410	59	200	Fresh
Cutie Dragon	3	Top	\N	5	83	715	358	88	132	6440	86	296	Fresh
Academy Tribute	3	Top	\N	0	130	44	28	42	255	0	0	0	Cool
Academy Tribute	3	Top	\N	1	163	55	35	53	319	450	6	20	Cool
Academy Tribute	3	Top	\N	2	202	69	44	66	396	1350	18	60	Cool
Academy Tribute	3	Top	\N	3	247	84	54	80	485	2700	36	120	Cool
Academy Tribute	3	Top	\N	4	299	102	65	0	587	4410	59	200	Cool
Academy Tribute	3	Top	\N	5	358	121	77	116	702	6440	86	296	Cool
Ceremony Guest	4	Top	\N	0	337	47	58	61	172	0	0	0	Elegant
Ceremony Guest	4	Top	\N	1	422	59	73	77	215	1350	18	40	Elegant
Ceremony Guest	4	Top	\N	2	523	73	90	95	267	4050	54	120	Elegant
Ceremony Guest	4	Top	\N	3	641	90	0	116	327	8100	108	240	Elegant
Ceremony Guest	4	Top	\N	4	776	109	134	141	396	13230	176	400	Elegant
Ceremony Guest	4	Top	\N	5	927	130	160	168	473	19310	257	592	Elegant
Light Travel	3	Top	\N	0	35	250	42	46	127	0	0	0	Fresh
Light Travel	3	Top	\N	1	44	313	53	58	159	450	6	20	Fresh
Light Travel	3	Top	\N	2	55	388	66	72	197	1350	18	60	Fresh
Light Travel	3	Top	\N	3	67	475	80	88	242	2700	36	120	Fresh
Light Travel	3	Top	\N	4	81	575	0	106	293	4410	59	200	Fresh
Light Travel	3	Top	\N	5	0	688	116	127	350	6440	86	296	Fresh
Refreshing Greenery	3	Top	\N	0	31	248	130	48	43	0	0	0	Fresh
Refreshing Greenery	3	Top	\N	1	39	310	163	60	54	450	6	20	Fresh
Refreshing Greenery	3	Top	\N	2	49	385	202	75	67	1350	18	60	Fresh
Refreshing Greenery	3	Top	\N	3	59	472	247	92	82	2700	36	120	Fresh
Refreshing Greenery	3	Top	\N	4	72	0	299	0	99	4410	59	200	Sweet
Refreshing Greenery	3	Top	\N	5	86	682	358	132	119	6440	86	296	Fresh
Verdant Freedom	3	Top	\N	0	132	260	40	23	44	0	0	0	Fresh
Verdant Freedom	3	Top	\N	1	165	325	50	29	55	450	6	20	Fresh
Verdant Freedom	3	Top	\N	2	205	403	62	36	69	1350	18	60	Fresh
Verdant Freedom	3	Top	\N	3	251	494	76	44	84	2700	36	120	Fresh
Verdant Freedom	3	Top	\N	4	304	598	92	53	102	4410	59	200	Fresh
Verdant Freedom	3	Top	\N	5	363	715	110	64	121	6440	86	296	Fresh
Expedition Souvenir	3	Top	\N	0	45	263	35	30	127	0	0	0	Fresh
Expedition Souvenir	3	Top	\N	1	57	329	44	38	159	450	6	20	Fresh
Expedition Souvenir	3	Top	\N	2	70	408	55	47	197	1350	18	60	Fresh
Expedition Souvenir	3	Top	\N	3	86	500	67	57	242	2700	36	120	Fresh
Expedition Souvenir	3	Top	\N	4	104	605	81	69	293	4410	59	200	Fresh
Expedition Souvenir	3	Top	\N	5	124	724	0	83	350	6440	86	296	Fresh
Crimson Snowstorm	4	Top	\N	0	55	49	50	176	345	0	0	0	Cool
Crimson Snowstorm	4	Top	\N	1	69	62	63	220	432	1350	18	40	Cool
Crimson Snowstorm	4	Top	\N	2	86	76	78	273	535	4050	54	120	Cool
Crimson Snowstorm	4	Top	\N	3	105	94	95	335	656	8100	108	240	Cool
Crimson Snowstorm	4	Top	\N	4	127	113	0	405	794	13230	176	400	Cool
Crimson Snowstorm	4	Top	\N	5	152	135	138	484	949	19310	257	592	Cool
Hundred Daisies	3	Top	\N	0	30	128	44	258	40	0	0	0	Sexy
Hundred Daisies	3	Top	\N	1	38	160	55	323	50	450	6	20	Sexy
Hundred Daisies	3	Top	\N	2	47	199	69	400	62	1350	18	60	Sexy
Hundred Daisies	3	Top	\N	3	57	244	84	491	76	2700	36	120	Sexy
Hundred Daisies	3	Top	\N	4	69	295	102	594	92	4410	59	200	Sexy
Hundred Daisies	3	Top	\N	5	83	352	121	710	110	6440	86	296	Sexy
Classroom Hours	3	Top	A Beautiful Day	0	260	30	132	44	34	0	0	0	Elegant
Classroom Hours	3	Top	A Beautiful Day	1	325	38	165	55	43	450	6	20	Elegant
Classroom Hours	3	Top	A Beautiful Day	2	403	47	205	69	53	1350	18	60	Elegant
Classroom Hours	3	Top	A Beautiful Day	3	494	57	251	84	65	2700	36	120	Elegant
Classroom Hours	3	Top	A Beautiful Day	4	598	69	304	102	79	4410	59	200	Elegant
Classroom Hours	3	Top	A Beautiful Day	5	75	83	363	121	94	6440	86	296	Sweet
Clear Mind	3	Top	Refined Grace	0	41	49	32	36	342	0	0	0	Cool
Clear Mind	3	Top	Refined Grace	1	52	62	40	45	428	450	6	20	Cool
Clear Mind	3	Top	Refined Grace	2	64	76	50	56	531	1350	18	60	Cool
Clear Mind	3	Top	Refined Grace	3	78	94	61	69	650	2700	36	120	Cool
Clear Mind	3	Top	Refined Grace	4	95	113	74	83	787	4410	59	200	Cool
Clear Mind	3	Top	Refined Grace	5	113	135	88	99	941	6440	86	296	Cool
Striped Celebration	3	Top	Carnival Ode	0	32	47	29	131	262	0	0	0	Cool
Striped Celebration	3	Top	Carnival Ode	1	40	59	37	164	328	450	6	20	Cool
Striped Celebration	3	Top	Carnival Ode	2	50	73	45	204	407	1350	18	60	Cool
Striped Celebration	3	Top	Carnival Ode	3	61	90	56	249	498	2700	36	120	Cool
Striped Celebration	3	Top	Carnival Ode	4	74	109	67	302	603	4410	59	200	Cool
Striped Celebration	3	Top	Carnival Ode	5	88	130	80	361	721	6440	86	296	Cool
Majestic Stance	3	Top	Guard's Resolve	0	32	134	39	37	258	0	0	0	Cool
Majestic Stance	3	Top	Guard's Resolve	1	40	168	49	47	323	450	6	20	Cool
Majestic Stance	3	Top	Guard's Resolve	2	50	208	61	58	400	1350	18	60	Cool
Majestic Stance	3	Top	Guard's Resolve	3	61	255	75	71	491	2700	36	120	Cool
Majestic Stance	3	Top	Guard's Resolve	4	74	309	90	86	594	4410	59	200	Cool
Majestic Stance	3	Top	Guard's Resolve	5	88	369	108	102	710	6440	86	296	Cool
Sweet Pink	3	Top	\N	0	40	131	262	42	24	0	0	0	Sweet
Sweet Pink	3	Top	\N	1	50	164	328	53	30	450	6	20	Sweet
Sweet Pink	3	Top	\N	2	62	204	407	66	38	1350	18	60	Sweet
Sweet Pink	3	Top	\N	3	76	249	498	80	46	2700	36	120	Sweet
Sweet Pink	3	Top	\N	4	92	302	603	0	56	4410	59	200	Sweet
Sweet Pink	3	Top	\N	5	110	361	721	116	66	6440	86	296	Sweet
Floral Rhythm	3	Top	\N	0	33	266	38	137	27	0	0	0	Fresh
Floral Rhythm	3	Top	\N	1	42	333	48	172	34	450	6	20	Fresh
Floral Rhythm	3	Top	\N	2	52	413	59	213	42	1350	18	60	Fresh
Floral Rhythm	3	Top	\N	3	63	506	73	261	52	2700	36	120	Fresh
Floral Rhythm	3	Top	\N	4	76	612	88	316	63	4410	59	200	Fresh
Floral Rhythm	3	Top	\N	5	91	732	105	377	0	6440	86	296	Fresh
Sunny Floral Blouse	3	Top	\N	0	131	253	44	45	28	0	0	0	Fresh
Sunny Floral Blouse	3	Top	\N	1	164	317	55	57	35	450	6	20	Fresh
Sunny Floral Blouse	3	Top	\N	2	204	393	69	70	44	1350	18	60	Fresh
Sunny Floral Blouse	3	Top	\N	3	249	481	84	86	54	2700	36	120	Fresh
Sunny Floral Blouse	3	Top	\N	4	302	582	102	104	65	4410	59	200	Fresh
Sunny Floral Blouse	3	Top	\N	5	361	696	121	124	77	6440	86	296	Fresh
Quick Warm-up	3	Top	\N	0	32	46	255	42	125	0	0	0	Sweet
Quick Warm-up	3	Top	\N	1	40	58	319	53	157	450	6	20	Sweet
Quick Warm-up	3	Top	\N	2	50	72	396	66	194	1350	18	60	Sweet
Quick Warm-up	3	Top	\N	3	61	88	485	80	238	2700	36	120	Sweet
Quick Warm-up	3	Top	\N	4	74	106	587	0	288	4410	59	200	Sweet
Quick Warm-up	3	Top	\N	5	88	127	702	116	344	6440	86	296	Sweet
Orange Rebel	3	Top	\N	0	44	127	42	247	40	0	0	0	Sexy
Orange Rebel	3	Top	\N	1	55	159	53	309	50	450	6	20	Sexy
Orange Rebel	3	Top	\N	2	69	197	66	383	62	1350	18	60	Sexy
Orange Rebel	3	Top	\N	3	84	242	80	470	76	2700	36	120	Sexy
Orange Rebel	3	Top	\N	4	102	293	0	569	92	4410	59	200	Sexy
Orange Rebel	3	Top	\N	5	121	350	116	680	110	6440	86	296	Sexy
Wisteria's Longing	3	Top	\N	0	33	138	276	26	26	0	0	0	Sweet
Wisteria's Longing	3	Top	\N	1	42	173	345	33	33	450	6	20	Sweet
Wisteria's Longing	3	Top	\N	2	52	214	428	41	41	1350	18	60	Sweet
Wisteria's Longing	3	Top	\N	3	63	263	525	50	50	2700	36	120	Sweet
Wisteria's Longing	3	Top	\N	4	76	318	635	60	60	4410	59	200	Sweet
Wisteria's Longing	3	Top	\N	5	91	380	759	72	72	6440	86	296	Sweet
Dream Walker	2	Top	\N	0	0	77	20	28	159	0	0	0	Cool
Dream Walker	2	Top	\N	1	22	0	25	35	199	270	4	12	Cool
Dream Walker	2	Top	\N	2	27	120	31	44	247	810	11	36	Cool
Dream Walker	2	Top	\N	3	33	147	38	54	303	1620	22	72	Cool
Dream Walker	2	Top	\N	4	40	178	46	65	366	2650	36	120	Cool
Dream Walker	2	Top	\N	5	47	212	55	77	438	3870	52	177	Cool
Starting Mood	2	Top	\N	0	22	158	76	26	18	0	0	0	Fresh
Starting Mood	2	Top	\N	1	28	198	95	33	23	270	4	12	Fresh
Starting Mood	2	Top	\N	2	35	245	118	41	28	810	11	36	Fresh
Starting Mood	2	Top	\N	3	42	301	145	50	35	1620	22	72	Fresh
Starting Mood	2	Top	\N	4	51	364	175	60	42	2650	36	120	Fresh
Starting Mood	2	Top	\N	5	61	435	209	72	50	3870	52	177	Fresh
Ethereal Lace	2	Top	\N	0	19	14	160	79	27	0	0	0	Sweet
Ethereal Lace	2	Top	\N	1	24	18	200	99	34	270	4	12	Sweet
Ethereal Lace	2	Top	\N	2	30	22	248	123	42	810	11	36	Sweet
Ethereal Lace	2	Top	\N	3	37	27	304	151	52	1620	22	72	Sweet
Ethereal Lace	2	Top	\N	4	44	33	368	182	63	2650	36	120	Sweet
Ethereal Lace	2	Top	\N	5	53	39	440	218	75	3870	52	177	Sweet
Past Vines	2	Top	\N	0	83	26	158	18	15	0	0	0	Sweet
Past Vines	2	Top	\N	1	104	33	198	23	19	270	4	12	Sweet
Past Vines	2	Top	\N	2	129	41	245	28	24	810	11	36	Sweet
Past Vines	2	Top	\N	3	158	50	301	35	29	1620	22	72	Sweet
Past Vines	2	Top	\N	4	191	60	364	42	35	2650	36	120	Sweet
Past Vines	2	Top	\N	5	229	72	435	50	42	3870	52	177	Sweet
Summer Blackstar	2	Top	\N	0	0	77	23	154	29	0	0	0	Sexy
Summer Blackstar	2	Top	\N	1	22	0	29	193	37	270	4	12	Sexy
Summer Blackstar	2	Top	\N	2	27	120	36	239	45	810	11	36	Sexy
Summer Blackstar	2	Top	\N	3	33	147	44	293	56	1620	22	72	Sexy
Summer Blackstar	2	Top	\N	4	40	178	53	355	67	2650	36	120	Sexy
Summer Blackstar	2	Top	\N	5	47	212	64	424	80	3870	52	177	Sexy
Dreamland Marathon	3	Top	\N	0	29	133	270	38	30	0	0	0	Sweet
Dreamland Marathon	3	Top	\N	1	37	167	338	48	38	450	6	20	Sweet
Dreamland Marathon	3	Top	\N	2	45	207	419	59	47	1350	18	60	Sweet
Dreamland Marathon	3	Top	\N	3	56	253	513	73	57	2700	36	120	Sweet
Dreamland Marathon	3	Top	\N	4	67	306	621	88	69	4410	59	200	Sweet
Dreamland Marathon	3	Top	\N	5	80	366	743	105	83	6440	86	296	Sweet
Splashed Ink	4	Top	Flowing Colors	0	43	346	167	55	64	0	0	0	Fresh
Splashed Ink	4	Top	Flowing Colors	1	54	433	209	69	80	1350	18	40	Fresh
Splashed Ink	4	Top	Flowing Colors	2	67	537	259	86	100	4050	54	120	Fresh
Splashed Ink	4	Top	Flowing Colors	3	82	658	318	105	122	8100	108	240	Fresh
Splashed Ink	4	Top	Flowing Colors	4	99	796	385	127	148	13230	176	400	Fresh
Splashed Ink	4	Top	Flowing Colors	5	19	952	460	152	176	19310	257	592	Fresh
Set Sail	4	Top	Tidal Shark Mirage	0	35	176	56	55	354	0	0	0	Cool
Set Sail	4	Top	Tidal Shark Mirage	1	44	220	70	69	443	1350	18	40	Cool
Set Sail	4	Top	Tidal Shark Mirage	2	55	273	87	86	549	4050	54	120	Cool
Set Sail	4	Top	Tidal Shark Mirage	3	67	335	107	105	673	8100	108	240	Cool
Set Sail	4	Top	Tidal Shark Mirage	4	81	405	129	127	815	13230	176	400	Cool
Set Sail	4	Top	Tidal Shark Mirage	5	0	484	154	152	974	19310	257	592	Cool
Azure Waters	4	Top	Rippling Serenity	0	28	32	154	33	303	0	0	0	Cool
Azure Waters	4	Top	Rippling Serenity	1	35	40	193	42	379	1350	18	40	Cool
Azure Waters	4	Top	Rippling Serenity	2	44	50	239	52	470	4050	54	120	Cool
Azure Waters	4	Top	Rippling Serenity	3	54	61	293	63	576	8100	108	240	Cool
Azure Waters	4	Top	Rippling Serenity	4	65	74	355	76	697	13230	176	400	Cool
Azure Waters	4	Top	Rippling Serenity	5	77	88	424	91	834	19310	257	592	Cool
Siesta Tunes	4	Top	Afternoon Shine	0	48	30	285	46	141	0	0	0	Sweet
Siesta Tunes	4	Top	Afternoon Shine	1	60	38	357	58	0	1350	18	40	Sweet
Siesta Tunes	4	Top	Afternoon Shine	2	75	47	442	72	219	4050	54	120	Sweet
Siesta Tunes	4	Top	Afternoon Shine	3	92	57	542	88	268	8100	108	240	Sweet
Siesta Tunes	4	Top	Afternoon Shine	4	0	69	656	106	325	13230	176	400	Sweet
Siesta Tunes	4	Top	Afternoon Shine	5	132	83	784	127	388	19310	257	592	Sweet
Purity Guardian	4	Top	Bye-Bye Dust	0	140	28	298	44	40	0	0	0	Sweet
Purity Guardian	4	Top	Bye-Bye Dust	1	175	35	373	55	50	1350	18	40	Sweet
Purity Guardian	4	Top	Bye-Bye Dust	2	217	44	462	69	62	4050	54	120	Sweet
Purity Guardian	4	Top	Bye-Bye Dust	3	266	54	567	84	76	8100	108	240	Sweet
Purity Guardian	4	Top	Bye-Bye Dust	4	322	65	686	102	92	13230	176	400	Sweet
Purity Guardian	4	Top	Bye-Bye Dust	5	385	77	820	121	110	19310	257	592	Sweet
Mermaid's Glow	5	Base Makeup	\N	0	0	0	0	0	0	0	0	0	Elegant
Spring Breeze	5	Base Makeup	\N	0	0	0	0	0	0	0	0	0	Elegant
Dreamy Ripples	5	Base Makeup	\N	0	0	0	0	0	0	0	0	0	Elegant
Snowy Branches	5	Eyebrows	\N	0	0	0	0	0	0	0	0	0	Elegant
Warm Brown	5	Eyebrows	\N	0	0	0	0	0	0	0	0	0	Elegant
Nimbus Dreams	5	Eyebrows	\N	0	0	0	0	0	0	0	0	0	Elegant
Aromalily's Heart	5	Eyelashes	\N	0	0	0	0	0	0	0	0	0	Elegant
Feathery Sway	5	Eyelashes	\N	0	0	0	0	0	0	0	0	0	Elegant
Delicate Heartstrings	5	Eyelashes	\N	0	0	0	0	0	0	0	0	0	Elegant
Snowy Sky	5	Contact Lenses	\N	0	0	0	0	0	0	0	0	0	Elegant
Crystal Gaze	5	Contact Lenses	\N	0	0	0	0	0	0	0	0	0	Elegant
Dainty Yellow	5	Contact Lenses	\N	0	0	0	0	0	0	0	0	0	Elegant
Mermaid Icebloom	5	Lips	\N	0	0	0	0	0	0	0	0	0	Elegant
Rose in Blossom	5	Lips	\N	0	0	0	0	0	0	0	0	0	Elegant
Light Tangerine	5	Lips	\N	0	0	0	0	0	0	0	0	0	Elegant
First Light of Dawn	4	Earrings	Rebirth Wish: Blooming	0	53	19	101	15	15	0	0	0	Sweet
First Light of Dawn	4	Earrings	Rebirth Wish: Blooming	1	67	24	127	19	19	410	5	12	Sweet
First Light of Dawn	4	Earrings	Rebirth Wish: Blooming	2	83	30	157	24	24	1220	16	36	Sweet
First Light of Dawn	4	Earrings	Rebirth Wish: Blooming	3	101	37	192	29	29	2440	32	72	Sweet
First Light of Dawn	4	Earrings	Rebirth Wish: Blooming	4	122	44	233	35	35	3980	53	120	Sweet
First Light of Dawn	4	Earrings	Rebirth Wish: Blooming	5	146	53	278	42	42	5800	77	177	Sweet
Subtle Fragrance	4	Headwear	Rebirth Wish: Blooming	0	52	18	107	10	15	0	0	0	Sweet
Subtle Fragrance	4	Headwear	Rebirth Wish: Blooming	1	65	23	134	13	19	410	5	12	Sweet
Subtle Fragrance	4	Headwear	Rebirth Wish: Blooming	2	81	28	166	16	24	1220	16	36	Sweet
Subtle Fragrance	4	Headwear	Rebirth Wish: Blooming	3	99	35	204	19	29	2440	32	72	Sweet
Subtle Fragrance	4	Headwear	Rebirth Wish: Blooming	4	120	42	247	23	35	3980	53	120	Sweet
Subtle Fragrance	4	Headwear	Rebirth Wish: Blooming	5	143	50	295	28	42	5800	77	177	Sweet
Sea of Dreams	4	Hair Accessory	Rebirth Wish: Blooming	0	50	0	102	16	18	0	0	0	Sweet
Sea of Dreams	4	Hair Accessory	Rebirth Wish: Blooming	1	63	22	128	20	23	410	5	12	Sweet
Sea of Dreams	4	Hair Accessory	Rebirth Wish: Blooming	2	78	27	159	25	28	1220	16	36	Sweet
Sea of Dreams	4	Hair Accessory	Rebirth Wish: Blooming	3	95	33	194	31	35	2440	32	72	Sweet
Sea of Dreams	4	Hair Accessory	Rebirth Wish: Blooming	4	0	40	235	37	42	3980	53	120	Sweet
Sea of Dreams	4	Hair Accessory	Rebirth Wish: Blooming	5	138	47	281	44	50	5800	77	177	Sweet
Safe Passage	4	Shoes	Rebirth Wish: Blooming	0	103	35	204	35	28	0	0	0	Sweet
Safe Passage	4	Shoes	Rebirth Wish: Blooming	1	129	44	255	44	35	810	11	30	Sweet
Safe Passage	4	Shoes	Rebirth Wish: Blooming	2	160	55	317	55	44	2430	33	90	Sweet
Safe Passage	4	Shoes	Rebirth Wish: Blooming	3	196	67	388	67	54	4860	65	180	Sweet
Safe Passage	4	Shoes	Rebirth Wish: Blooming	4	237	81	470	81	65	7940	106	300	Sweet
Safe Passage	4	Shoes	Rebirth Wish: Blooming	5	284	0	561	0	77	11590	155	445	Sweet
Wish of All	4	Outerwear	Rebirth Wish: Blooming	0	90	19	188	19	21	0	0	0	Sweet
Wish of All	4	Outerwear	Rebirth Wish: Blooming	1	13	24	235	24	27	680	9	20	Sweet
Wish of All	4	Outerwear	Rebirth Wish: Blooming	2	140	30	292	30	33	2030	27	60	Sweet
Wish of All	4	Outerwear	Rebirth Wish: Blooming	3	171	37	358	37	40	4060	54	120	Sweet
Wish of All	4	Outerwear	Rebirth Wish: Blooming	4	207	44	433	44	49	6630	88	200	Sweet
Wish of All	4	Outerwear	Rebirth Wish: Blooming	5	248	53	517	53	58	9670	129	296	Sweet
Silent Sea	4	Dress	Rebirth Wish: Blooming	0	357	108	77	76	92	0	0	0	Elegant
Silent Sea	4	Dress	Rebirth Wish: Blooming	1	447	135	897	95	0	2700	36	80	Sweet
Silent Sea	4	Dress	Rebirth Wish: Blooming	2	554	168	0	118	143	8100	108	240	Elegant
Silent Sea	4	Dress	Rebirth Wish: Blooming	3	679	206	1363	145	175	16200	216	480	Sweet
Silent Sea	4	Dress	Rebirth Wish: Blooming	4	822	249	1650	175	212	26460	353	800	Sweet
Silent Sea	4	Dress	Rebirth Wish: Blooming	5	982	297	1972	209	253	38610	515	1184	Sweet
Vibrant Life	4	Hair	Rebirth Wish: Blooming	0	215	50	426	78	40	0	0	0	Sweet
Vibrant Life	4	Hair	Rebirth Wish: Blooming	1	269	63	533	98	50	1620	22	50	Sweet
Vibrant Life	4	Hair	Rebirth Wish: Blooming	2	334	78	661	121	62	4860	65	150	Sweet
Vibrant Life	4	Hair	Rebirth Wish: Blooming	3	409	95	810	149	76	9720	130	300	Sweet
Vibrant Life	4	Hair	Rebirth Wish: Blooming	4	495	0	980	180	92	15880	212	500	Sweet
Vibrant Life	4	Hair	Rebirth Wish: Blooming	5	592	138	0	215	110	23170	309	740	Elegant
Fragrant Realm	4	Socks	Rebirth Wish: Blooming	0	70	14	139	23	24	0	0	0	Sweet
Fragrant Realm	4	Socks	Rebirth Wish: Blooming	1	88	18	174	29	30	540	7	12	Sweet
Fragrant Realm	4	Socks	Rebirth Wish: Blooming	2	109	22	216	36	38	1620	21	36	Sweet
Fragrant Realm	4	Socks	Rebirth Wish: Blooming	3	133	27	265	44	46	3240	43	72	Sweet
Fragrant Realm	4	Socks	Rebirth Wish: Blooming	4	161	33	320	53	56	5290	70	120	Sweet
Fragrant Realm	4	Socks	Rebirth Wish: Blooming	5	193	39	383	64	66	7720	102	177	Sweet
Moonlit Branch	4	Earrings	Hometown Breeze: Hopeful	0	0	107	55	0	10	0	0	0	Fresh
Moonlit Branch	4	Earrings	Hometown Breeze: Hopeful	1	15	134	69	22	13	410	5	12	Fresh
Moonlit Branch	4	Earrings	Hometown Breeze: Hopeful	2	19	166	86	27	16	1220	16	36	Fresh
Moonlit Branch	4	Earrings	Hometown Breeze: Hopeful	3	23	204	105	33	19	2440	32	72	Fresh
Moonlit Branch	4	Earrings	Hometown Breeze: Hopeful	4	28	247	127	40	23	3980	53	120	Fresh
Moonlit Branch	4	Earrings	Hometown Breeze: Hopeful	5	33	295	152	47	28	5800	77	177	Fresh
Breeze Melody	4	Bracelet	Hometown Breeze: Hopeful	0	14	108	52	0	18	0	0	0	Fresh
Breeze Melody	4	Bracelet	Hometown Breeze: Hopeful	1	18	135	65	14	23	410	5	12	Fresh
Breeze Melody	4	Bracelet	Hometown Breeze: Hopeful	2	22	168	81	18	28	1220	16	36	Fresh
Breeze Melody	4	Bracelet	Hometown Breeze: Hopeful	3	27	206	99	21	35	2440	32	72	Fresh
Breeze Melody	4	Bracelet	Hometown Breeze: Hopeful	4	33	249	120	26	42	3980	53	120	Fresh
Breeze Melody	4	Bracelet	Hometown Breeze: Hopeful	5	39	297	143	31	50	5800	77	177	Fresh
Floral Tribute	4	Headwear	Hometown Breeze: Hopeful	0	16	103	49	18	16	0	0	0	Fresh
Floral Tribute	4	Headwear	Hometown Breeze: Hopeful	1	20	129	62	23	20	410	5	12	Fresh
Floral Tribute	4	Headwear	Hometown Breeze: Hopeful	2	25	160	76	28	25	1220	16	36	Fresh
Floral Tribute	4	Headwear	Hometown Breeze: Hopeful	3	31	196	94	35	31	2440	32	72	Fresh
Floral Tribute	4	Headwear	Hometown Breeze: Hopeful	4	37	237	113	42	37	3980	53	120	Fresh
Floral Tribute	4	Headwear	Hometown Breeze: Hopeful	5	44	284	135	50	44	5800	77	177	Fresh
Blossoming Posture	4	Hair Accessory	Hometown Breeze: Hopeful	0	18	105	54	16	10	0	0	0	Fresh
Blossoming Posture	4	Hair Accessory	Hometown Breeze: Hopeful	1	23	132	68	20	13	410	5	12	Fresh
Blossoming Posture	4	Hair Accessory	Hometown Breeze: Hopeful	2	28	163	84	25	16	1220	16	36	Fresh
Blossoming Posture	4	Hair Accessory	Hometown Breeze: Hopeful	3	35	200	103	31	19	2440	32	72	Fresh
Blossoming Posture	4	Hair Accessory	Hometown Breeze: Hopeful	4	42	242	125	37	23	3980	53	120	Fresh
Blossoming Posture	4	Hair Accessory	Hometown Breeze: Hopeful	5	50	289	149	44	28	5800	77	177	Fresh
Flower Fields	4	Shoes	Hometown Breeze: Hopeful	0	28	204	102	36	35	0	0	0	Fresh
Flower Fields	4	Shoes	Hometown Breeze: Hopeful	1	35	255	128	45	44	810	11	30	Fresh
Flower Fields	4	Shoes	Hometown Breeze: Hopeful	2	44	317	159	56	55	2430	33	90	Fresh
Flower Fields	4	Shoes	Hometown Breeze: Hopeful	3	54	388	194	69	67	4860	65	180	Fresh
Flower Fields	4	Shoes	Hometown Breeze: Hopeful	4	65	470	235	83	81	7940	106	300	Fresh
Flower Fields	4	Shoes	Hometown Breeze: Hopeful	5	77	561	281	99	0	11590	155	445	Fresh
Wishful Flowers	4	Dress	Hometown Breeze: Hopeful	0	113	715	341	73	108	0	0	0	Fresh
Wishful Flowers	4	Dress	Hometown Breeze: Hopeful	1	142	894	427	92	135	2700	36	80	Fresh
Wishful Flowers	4	Dress	Hometown Breeze: Hopeful	2	176	1109	529	4	168	8100	108	240	Fresh
Wishful Flowers	4	Dress	Hometown Breeze: Hopeful	3	215	1359	648	139	206	16200	216	480	Fresh
Wishful Flowers	4	Dress	Hometown Breeze: Hopeful	4	260	1645	785	168	249	26460	353	800	Fresh
Wishful Flowers	4	Dress	Hometown Breeze: Hopeful	5	311	1967	938	201	297	38610	515	1184	Fresh
Silvernight Whispers	4	Hair	Hometown Breeze: Hopeful	0	59	402	209	64	77	0	0	0	Fresh
Silvernight Whispers	4	Hair	Hometown Breeze: Hopeful	1	74	503	262	80	0	1620	22	50	Fresh
Silvernight Whispers	4	Hair	Hometown Breeze: Hopeful	2	92	624	324	100	120	4860	65	150	Fresh
Silvernight Whispers	4	Hair	Hometown Breeze: Hopeful	3	113	764	398	122	147	9720	130	300	Fresh
Silvernight Whispers	4	Hair	Hometown Breeze: Hopeful	4	136	925	481	148	178	15880	212	500	Fresh
Silvernight Whispers	4	Hair	Hometown Breeze: Hopeful	5	163	1106	575	176	212	23170	309	740	Fresh
Soft Cotton	4	Socks	Hometown Breeze: Hopeful	0	18	136	72	23	20	0	0	0	Fresh
Soft Cotton	4	Socks	Hometown Breeze: Hopeful	1	23	170	90	29	25	540	7	12	Fresh
Soft Cotton	4	Socks	Hometown Breeze: Hopeful	2	28	211	0	36	31	1620	21	36	Fresh
Soft Cotton	4	Socks	Hometown Breeze: Hopeful	3	35	259	137	44	38	3240	43	72	Fresh
Soft Cotton	4	Socks	Hometown Breeze: Hopeful	4	42	313	166	53	46	5290	70	120	Fresh
Soft Cotton	4	Socks	Hometown Breeze: Hopeful	5	50	374	198	64	55	7720	102	177	Fresh
Cat Paw	4	Hair	Bye-Bye Dust: Kitty	0	170	57	338	52	43	0	0	0	Sweet
Cat Paw	4	Hair	Bye-Bye Dust: Kitty	1	213	72	423	65	54	1620	22	50	Sweet
Cat Paw	4	Hair	Bye-Bye Dust: Kitty	2	264	89	524	81	67	4860	65	150	Sweet
Cat Paw	4	Hair	Bye-Bye Dust: Kitty	3	323	109	643	99	82	9720	130	300	Sweet
Cat Paw	4	Hair	Bye-Bye Dust: Kitty	4	391	132	778	120	99	15880	212	500	Sweet
Cat Paw	4	Hair	Bye-Bye Dust: Kitty	5	468	157	930	143	119	23170	309	740	Sweet
Monochrome Mood	4	Top	Bye-Bye Dust: Kitty	0	140	28	298	44	40	0	0	0	Sweet
Monochrome Mood	4	Top	Bye-Bye Dust: Kitty	1	175	35	373	55	50	1350	18	40	Sweet
Monochrome Mood	4	Top	Bye-Bye Dust: Kitty	2	217	44	462	69	62	4050	54	120	Sweet
Monochrome Mood	4	Top	Bye-Bye Dust: Kitty	3	266	54	567	84	76	8100	108	240	Sweet
Monochrome Mood	4	Top	Bye-Bye Dust: Kitty	4	322	65	686	102	92	13230	176	400	Sweet
Monochrome Mood	4	Top	Bye-Bye Dust: Kitty	5	385	77	820	121	110	19310	257	592	Sweet
Grooming Expert	4	Shoes	Bye-Bye Dust: Kitty	0	93	24	179	0	7	0	0	0	Sweet
Grooming Expert	4	Shoes	Bye-Bye Dust: Kitty	1	0	30	224	22	22	810	11	30	Sweet
Grooming Expert	4	Shoes	Bye-Bye Dust: Kitty	2	145	38	278	27	27	2430	33	90	Sweet
Grooming Expert	4	Shoes	Bye-Bye Dust: Kitty	3	0	46	341	33	33	4860	65	180	Sweet
Grooming Expert	4	Shoes	Bye-Bye Dust: Kitty	4	214	56	412	40	40	7940	106	300	Sweet
Grooming Expert	4	Shoes	Bye-Bye Dust: Kitty	5	256	66	493	47	47	11590	155	445	Sweet
Icebreaker Game	4	Socks	Bye-Bye Dust: Kitty	0	58	13	116	12	21	0	0	0	Sweet
Icebreaker Game	4	Socks	Bye-Bye Dust: Kitty	1	73	0	145	15	27	540	7	12	Sweet
Icebreaker Game	4	Socks	Bye-Bye Dust: Kitty	2	90	21	180	19	33	1620	21	36	Sweet
Icebreaker Game	4	Socks	Bye-Bye Dust: Kitty	3	0	25	221	23	40	3240	43	72	Sweet
Icebreaker Game	4	Socks	Bye-Bye Dust: Kitty	4	134	30	267	28	49	5290	70	120	Sweet
Icebreaker Game	4	Socks	Bye-Bye Dust: Kitty	5	160	36	319	33	58	7720	102	177	Sweet
Purring Messenger	4	Gloves	Bye-Bye Dust: Kitty	0	43	9	84	13	16	0	0	0	Sweet
Purring Messenger	4	Gloves	Bye-Bye Dust: Kitty	1	54	0	105	0	20	410	5	12	Sweet
Purring Messenger	4	Gloves	Bye-Bye Dust: Kitty	2	67	14	131	21	25	1220	16	36	Sweet
Purring Messenger	4	Gloves	Bye-Bye Dust: Kitty	3	82	18	160	25	31	2440	32	72	Sweet
Purring Messenger	4	Gloves	Bye-Bye Dust: Kitty	4	99	21	194	30	37	3980	53	120	Sweet
Purring Messenger	4	Gloves	Bye-Bye Dust: Kitty	5	19	25	231	36	44	5800	77	177	Sweet
Leisurely Moments	4	Headwear	Bye-Bye Dust: Kitty	0	44	10	92	8	11	0	0	0	Sweet
Leisurely Moments	4	Headwear	Bye-Bye Dust: Kitty	1	55	13	0	10	14	410	5	12	Elegant
Leisurely Moments	4	Headwear	Bye-Bye Dust: Kitty	2	69	16	143	13	18	1220	16	36	Sweet
Leisurely Moments	4	Headwear	Bye-Bye Dust: Kitty	3	84	19	175	16	21	2440	32	72	Sweet
Leisurely Moments	4	Headwear	Bye-Bye Dust: Kitty	4	102	23	212	19	26	3980	53	120	Sweet
Leisurely Moments	4	Headwear	Bye-Bye Dust: Kitty	5	121	28	253	22	31	5800	77	177	Sweet
Entrance Invitation	4	Hair	Rippling Serenity: Dream	0	37	46	163	64	350	0	0	0	Cool
Entrance Invitation	4	Hair	Rippling Serenity: Dream	1	47	58	204	80	438	1620	22	50	Cool
Entrance Invitation	4	Hair	Rippling Serenity: Dream	2	58	72	253	100	543	4860	65	150	Cool
Entrance Invitation	4	Hair	Rippling Serenity: Dream	3	71	88	310	122	665	9720	130	300	Cool
Entrance Invitation	4	Hair	Rippling Serenity: Dream	4	86	106	375	148	805	15880	212	500	Cool
Entrance Invitation	4	Hair	Rippling Serenity: Dream	5	102	127	449	176	963	23170	309	740	Cool
Joy of Fish	4	Top	Rippling Serenity: Dream	0	28	32	154	33	303	0	0	0	Cool
Joy of Fish	4	Top	Rippling Serenity: Dream	1	35	40	193	42	379	1350	18	40	Cool
Joy of Fish	4	Top	Rippling Serenity: Dream	2	44	50	239	52	470	4050	54	120	Cool
Joy of Fish	4	Top	Rippling Serenity: Dream	3	54	61	293	63	576	8100	108	240	Cool
Joy of Fish	4	Top	Rippling Serenity: Dream	4	65	74	355	76	697	13230	176	400	Cool
Joy of Fish	4	Top	Rippling Serenity: Dream	5	77	88	424	91	834	19310	257	592	Cool
Colorful Scales	4	Bottom	Rippling Serenity: Dream	0	50	63	0	49	336	0	0	0	Cool
Colorful Scales	4	Bottom	Rippling Serenity: Dream	1	63	79	222	62	420	1350	18	40	Cool
Colorful Scales	4	Bottom	Rippling Serenity: Dream	2	78	98	275	76	521	4050	54	120	Cool
Colorful Scales	4	Bottom	Rippling Serenity: Dream	3	95	120	337	94	639	8100	108	240	Cool
Colorful Scales	4	Bottom	Rippling Serenity: Dream	4	0	145	408	113	773	13230	176	400	Cool
Colorful Scales	4	Bottom	Rippling Serenity: Dream	5	138	174	487	135	924	19310	257	592	Cool
Ripple Effect	4	Shoes	Rippling Serenity: Dream	0	28	20	85	25	173	0	0	0	Cool
Ripple Effect	4	Shoes	Rippling Serenity: Dream	1	35	25	107	32	217	810	11	30	Cool
Ripple Effect	4	Shoes	Rippling Serenity: Dream	2	44	31	132	39	269	2430	33	90	Cool
Ripple Effect	4	Shoes	Rippling Serenity: Dream	3	54	38	162	48	329	4860	65	180	Cool
Ripple Effect	4	Shoes	Rippling Serenity: Dream	4	65	46	196	58	398	7940	106	300	Cool
Ripple Effect	4	Shoes	Rippling Serenity: Dream	5	77	55	234	69	476	11590	155	445	Cool
Flow of the Night	4	Outerwear	Rippling Serenity: Dream	0	26	26	84	30	171	0	0	0	Cool
Flow of the Night	4	Outerwear	Rippling Serenity: Dream	1	33	33	105	38	214	680	9	20	Cool
Flow of the Night	4	Outerwear	Rippling Serenity: Dream	2	41	41	131	47	266	2030	27	60	Cool
Flow of the Night	4	Outerwear	Rippling Serenity: Dream	3	50	50	160	57	325	4060	54	120	Cool
Flow of the Night	4	Outerwear	Rippling Serenity: Dream	4	60	60	194	69	394	6630	88	200	Cool
Flow of the Night	4	Outerwear	Rippling Serenity: Dream	5	72	72	231	83	471	9670	129	296	Cool
Immersed in Fantasy	4	Headwear	Rippling Serenity: Dream	0	13	0	44	10	87	0	0	0	Cool
Immersed in Fantasy	4	Headwear	Rippling Serenity: Dream	1	0	15	55	13	109	410	5	12	Cool
Immersed in Fantasy	4	Headwear	Rippling Serenity: Dream	2	21	19	69	16	135	1220	16	36	Cool
Immersed in Fantasy	4	Headwear	Rippling Serenity: Dream	3	25	23	84	19	166	2440	32	72	Cool
Immersed in Fantasy	4	Headwear	Rippling Serenity: Dream	4	30	28	102	23	201	3980	53	120	Cool
Immersed in Fantasy	4	Headwear	Rippling Serenity: Dream	5	36	33	121	28	240	5800	77	177	Cool
Scaled Password	4	Earrings	Rippling Serenity: Dream	0	0	10	43	0	88	0	0	0	Cool
Scaled Password	4	Earrings	Rippling Serenity: Dream	1	15	13	54	14	110	410	5	12	Cool
Scaled Password	4	Earrings	Rippling Serenity: Dream	2	19	16	67	18	137	1220	16	36	Cool
Scaled Password	4	Earrings	Rippling Serenity: Dream	3	23	19	82	21	168	2440	32	72	Cool
Scaled Password	4	Earrings	Rippling Serenity: Dream	4	28	23	99	26	203	3980	53	120	Cool
Scaled Password	4	Earrings	Rippling Serenity: Dream	5	33	28	19	31	242	5800	77	177	Cool
Shadow of the Stars	4	Gloves	Rippling Serenity: Dream	0	0	10	46	9	88	0	0	0	Cool
Shadow of the Stars	4	Gloves	Rippling Serenity: Dream	1	15	13	58	12	110	410	5	12	Cool
Shadow of the Stars	4	Gloves	Rippling Serenity: Dream	2	19	16	72	14	137	1220	16	36	Cool
Shadow of the Stars	4	Gloves	Rippling Serenity: Dream	3	23	19	88	18	168	2440	32	72	Cool
Shadow of the Stars	4	Gloves	Rippling Serenity: Dream	4	28	23	106	21	203	3980	53	120	Cool
Shadow of the Stars	4	Gloves	Rippling Serenity: Dream	5	33	28	127	25	242	5800	77	177	Cool
Bountiful Harvest	4	Backpiece	Rippling Serenity: Dream	0	14	15	43	9	84	0	0	0	Cool
Bountiful Harvest	4	Backpiece	Rippling Serenity: Dream	1	18	19	54	12	105	410	5	12	Cool
Bountiful Harvest	4	Backpiece	Rippling Serenity: Dream	2	22	24	67	14	131	1220	16	36	Cool
Bountiful Harvest	4	Backpiece	Rippling Serenity: Dream	3	27	29	82	18	160	2440	32	72	Cool
Bountiful Harvest	4	Backpiece	Rippling Serenity: Dream	4	33	35	99	21	194	3980	53	120	Cool
Bountiful Harvest	4	Backpiece	Rippling Serenity: Dream	5	39	42	19	25	231	5800	77	177	Cool
Fluffy Puff	4	Earrings	Sweet Jazz Nights: Waltz	0	50	0	105	18	13	0	0	0	Sweet
Fluffy Puff	4	Earrings	Sweet Jazz Nights: Waltz	1	63	22	132	23	0	410	5	12	Sweet
Fluffy Puff	4	Earrings	Sweet Jazz Nights: Waltz	2	78	27	163	28	21	1220	16	36	Sweet
Fluffy Puff	4	Earrings	Sweet Jazz Nights: Waltz	3	95	33	200	35	25	2440	32	72	Sweet
Fluffy Puff	4	Earrings	Sweet Jazz Nights: Waltz	4	0	40	242	42	30	3980	53	120	Sweet
Fluffy Puff	4	Earrings	Sweet Jazz Nights: Waltz	5	138	47	289	50	36	5800	77	177	Sweet
Bibcoon's Masterpiece	4	Bracelet	Sweet Jazz Nights: Waltz	0	51	0	108	13	19	0	0	0	Sweet
Bibcoon's Masterpiece	4	Bracelet	Sweet Jazz Nights: Waltz	1	64	14	135	0	24	410	5	12	Sweet
Bibcoon's Masterpiece	4	Bracelet	Sweet Jazz Nights: Waltz	2	80	18	168	21	30	1220	16	36	Sweet
Bibcoon's Masterpiece	4	Bracelet	Sweet Jazz Nights: Waltz	3	0	21	206	25	37	2440	32	72	Sweet
Bibcoon's Masterpiece	4	Bracelet	Sweet Jazz Nights: Waltz	4	118	26	249	30	44	3980	53	120	Sweet
Bibcoon's Masterpiece	4	Bracelet	Sweet Jazz Nights: Waltz	5	141	31	297	36	53	5800	77	177	Sweet
Vibrant Note	4	Headwear	Sweet Jazz Nights: Waltz	0	53	15	106	19	10	0	0	0	Sweet
Vibrant Note	4	Headwear	Sweet Jazz Nights: Waltz	1	67	19	133	24	13	410	5	12	Sweet
Vibrant Note	4	Headwear	Sweet Jazz Nights: Waltz	2	83	24	165	30	16	1220	16	36	Sweet
Vibrant Note	4	Headwear	Sweet Jazz Nights: Waltz	3	101	29	202	37	19	2440	32	72	Sweet
Vibrant Note	4	Headwear	Sweet Jazz Nights: Waltz	4	122	35	244	44	23	3980	53	120	Sweet
Vibrant Note	4	Headwear	Sweet Jazz Nights: Waltz	5	146	42	292	53	28	5800	77	177	Sweet
Sweet Nectar	4	Hair Accessory	Sweet Jazz Nights: Waltz	0	53	18	103	18	10	0	0	0	Sweet
Sweet Nectar	4	Hair Accessory	Sweet Jazz Nights: Waltz	1	67	23	129	23	13	410	5	12	Sweet
Sweet Nectar	4	Hair Accessory	Sweet Jazz Nights: Waltz	2	83	28	160	28	16	1220	16	36	Sweet
Sweet Nectar	4	Hair Accessory	Sweet Jazz Nights: Waltz	3	101	35	196	35	19	2440	32	72	Sweet
Sweet Nectar	4	Hair Accessory	Sweet Jazz Nights: Waltz	4	122	42	237	42	23	3980	53	120	Sweet
Sweet Nectar	4	Hair Accessory	Sweet Jazz Nights: Waltz	5	146	50	284	50	28	5800	77	177	Sweet
Graceful Steps	4	Shoes	Sweet Jazz Nights: Waltz	0	108	25	210	23	39	0	0	0	Sweet
Graceful Steps	4	Shoes	Sweet Jazz Nights: Waltz	1	135	32	263	29	49	810	11	30	Sweet
Graceful Steps	4	Shoes	Sweet Jazz Nights: Waltz	2	168	39	326	36	61	2430	33	90	Sweet
Graceful Steps	4	Shoes	Sweet Jazz Nights: Waltz	3	206	48	399	44	75	4860	65	180	Sweet
Graceful Steps	4	Shoes	Sweet Jazz Nights: Waltz	4	249	58	483	53	90	7940	106	300	Sweet
Graceful Steps	4	Shoes	Sweet Jazz Nights: Waltz	5	297	69	578	64	108	11590	155	445	Sweet
Graceful Spin	4	Dress	Sweet Jazz Nights: Waltz	0	350	0	711	76	98	0	0	0	Sweet
Graceful Spin	4	Dress	Sweet Jazz Nights: Waltz	1	438	144	889	95	123	2700	36	80	Sweet
Graceful Spin	4	Dress	Sweet Jazz Nights: Waltz	2	543	179	1103	118	152	8100	108	240	Sweet
Graceful Spin	4	Dress	Sweet Jazz Nights: Waltz	3	665	219	1351	145	187	16200	216	480	Sweet
Graceful Spin	4	Dress	Sweet Jazz Nights: Waltz	4	805	265	1636	175	226	26460	353	800	Sweet
Graceful Spin	4	Dress	Sweet Jazz Nights: Waltz	5	963	317	1956	209	270	38610	515	1184	Sweet
Glittering Night	4	Hair	Sweet Jazz Nights: Waltz	0	211	54	433	50	61	0	0	0	Sweet
Glittering Night	4	Hair	Sweet Jazz Nights: Waltz	1	264	68	542	63	77	1620	22	50	Sweet
Glittering Night	4	Hair	Sweet Jazz Nights: Waltz	2	328	84	672	78	95	4860	65	150	Sweet
Glittering Night	4	Hair	Sweet Jazz Nights: Waltz	3	401	103	823	95	116	9720	130	300	Sweet
Glittering Night	4	Hair	Sweet Jazz Nights: Waltz	4	486	125	996	115	141	15880	212	500	Sweet
Glittering Night	4	Hair	Sweet Jazz Nights: Waltz	5	581	149	1191	138	168	23170	309	740	Sweet
Cotton Candy	4	Socks	Sweet Jazz Nights: Waltz	0	66	18	139	24	23	0	0	0	Sweet
Cotton Candy	4	Socks	Sweet Jazz Nights: Waltz	1	83	23	174	30	29	540	7	12	Sweet
Cotton Candy	4	Socks	Sweet Jazz Nights: Waltz	2	103	28	216	38	36	1620	21	36	Sweet
Cotton Candy	4	Socks	Sweet Jazz Nights: Waltz	3	126	35	265	46	44	3240	43	72	Sweet
Cotton Candy	4	Socks	Sweet Jazz Nights: Waltz	4	152	42	320	56	53	5290	70	120	Sweet
Cotton Candy	4	Socks	Sweet Jazz Nights: Waltz	5	182	50	383	66	64	7720	102	177	Sweet
Cooling Breeze	4	Headwear	Shark Mirage: Summer	0	16	53	16	18	100	0	0	0	Cool
Cooling Breeze	4	Headwear	Shark Mirage: Summer	1	20	67	20	23	125	410	5	12	Cool
Cooling Breeze	4	Headwear	Shark Mirage: Summer	2	25	83	25	28	155	1220	16	36	Cool
Cooling Breeze	4	Headwear	Shark Mirage: Summer	3	31	101	31	35	190	2440	32	72	Cool
Cooling Breeze	4	Headwear	Shark Mirage: Summer	4	37	122	37	42	230	3980	53	120	Cool
Cooling Breeze	4	Headwear	Shark Mirage: Summer	5	44	146	44	50	275	5800	77	177	Cool
Starsail Jelly	4	Hair Accessory	Shark Mirage: Summer	0	15	52	10	18	108	0	0	0	Cool
Starsail Jelly	4	Hair Accessory	Shark Mirage: Summer	1	19	65	13	23	135	410	5	12	Cool
Starsail Jelly	4	Hair Accessory	Shark Mirage: Summer	2	24	81	16	28	168	1220	16	36	Cool
Starsail Jelly	4	Hair Accessory	Shark Mirage: Summer	3	29	99	19	35	206	2440	32	72	Cool
Starsail Jelly	4	Hair Accessory	Shark Mirage: Summer	4	35	120	23	42	249	3980	53	120	Cool
Starsail Jelly	4	Hair Accessory	Shark Mirage: Summer	5	42	143	28	50	297	5800	77	177	Cool
Summer Voyage	4	Pendant	Shark Mirage: Summer	0	14	51	0	18	103	0	0	0	Cool
Summer Voyage	4	Pendant	Shark Mirage: Summer	1	18	64	22	23	129	410	5	12	Cool
Summer Voyage	4	Pendant	Shark Mirage: Summer	2	22	80	27	28	160	1220	16	36	Cool
Summer Voyage	4	Pendant	Shark Mirage: Summer	3	27	0	33	35	196	2440	32	72	Cool
Summer Voyage	4	Pendant	Shark Mirage: Summer	4	33	118	40	42	237	3980	53	120	Cool
Summer Voyage	4	Pendant	Shark Mirage: Summer	5	39	141	47	50	284	5800	77	177	Cool
Seaside Siesta	4	Shoes	Shark Mirage: Summer	0	21	0	29	26	219	0	0	0	Cool
Seaside Siesta	4	Shoes	Shark Mirage: Summer	1	27	139	37	33	274	810	11	30	Cool
Seaside Siesta	4	Shoes	Shark Mirage: Summer	2	33	173	45	41	340	2430	33	90	Cool
Seaside Siesta	4	Shoes	Shark Mirage: Summer	3	40	211	56	50	417	4860	65	180	Cool
Seaside Siesta	4	Shoes	Shark Mirage: Summer	4	49	256	67	60	504	7940	106	300	Cool
Seaside Siesta	4	Shoes	Shark Mirage: Summer	5	58	306	80	72	603	11590	155	445	Cool
Shallow Sea Swim	4	Gloves	Shark Mirage: Summer	0	0	51	15	13	107	0	0	0	Cool
Shallow Sea Swim	4	Gloves	Shark Mirage: Summer	1	22	64	19	0	134	410	5	12	Cool
Shallow Sea Swim	4	Gloves	Shark Mirage: Summer	2	27	80	24	21	166	1220	16	36	Cool
Shallow Sea Swim	4	Gloves	Shark Mirage: Summer	3	33	0	29	25	204	2440	32	72	Cool
Shallow Sea Swim	4	Gloves	Shark Mirage: Summer	4	40	118	35	30	247	3980	53	120	Cool
Shallow Sea Swim	4	Gloves	Shark Mirage: Summer	5	47	141	42	36	295	5800	77	177	Cool
Sweet Juice	4	Bottom	Shark Mirage: Summer	0	59	170	44	53	349	0	0	0	Cool
Sweet Juice	4	Bottom	Shark Mirage: Summer	1	74	213	55	67	437	1350	18	40	Cool
Sweet Juice	4	Bottom	Shark Mirage: Summer	2	92	264	69	83	0	4050	54	120	Fresh
Sweet Juice	4	Bottom	Shark Mirage: Summer	3	13	323	84	101	664	8100	108	240	Cool
Sweet Juice	4	Bottom	Shark Mirage: Summer	4	136	391	102	122	803	13230	176	400	Cool
Sweet Juice	4	Bottom	Shark Mirage: Summer	5	163	468	121	146	960	19310	257	592	Cool
Fruity Bubble	4	Socks	Shark Mirage: Summer	0	19	70	19	18	144	0	0	0	Cool
Fruity Bubble	4	Socks	Shark Mirage: Summer	1	24	88	24	23	180	540	7	12	Cool
Fruity Bubble	4	Socks	Shark Mirage: Summer	2	30	109	30	28	224	1620	21	36	Cool
Fruity Bubble	4	Socks	Shark Mirage: Summer	3	37	133	37	35	274	3240	43	72	Cool
Fruity Bubble	4	Socks	Shark Mirage: Summer	4	44	161	44	42	332	5290	70	120	Cool
Fruity Bubble	4	Socks	Shark Mirage: Summer	5	53	193	53	50	396	7720	102	177	Cool
Pink Sailor	4	Top	Shark Mirage: Summer	0	35	176	56	55	354	0	0	0	Cool
Pink Sailor	4	Top	Shark Mirage: Summer	1	44	220	70	69	443	1350	18	40	Cool
Pink Sailor	4	Top	Shark Mirage: Summer	2	55	273	87	86	549	4050	54	120	Cool
Pink Sailor	4	Top	Shark Mirage: Summer	3	67	335	107	105	673	8100	108	240	Cool
Pink Sailor	4	Top	Shark Mirage: Summer	4	81	405	129	127	815	13230	176	400	Cool
Pink Sailor	4	Top	Shark Mirage: Summer	5	0	484	154	152	974	19310	257	592	Cool
Colorful Gradient	4	Hair	Fully Charged: Refreshing	0	45	172	58	44	340	0	0	0	Cool
Colorful Gradient	4	Hair	Fully Charged: Refreshing	1	57	215	73	55	425	1620	22	50	Cool
Colorful Gradient	4	Hair	Fully Charged: Refreshing	2	70	267	90	69	527	4860	65	150	Cool
Colorful Gradient	4	Hair	Fully Charged: Refreshing	3	86	327	0	84	646	9720	130	300	Cool
Colorful Gradient	4	Hair	Fully Charged: Refreshing	4	104	396	134	102	782	15880	212	500	Cool
Colorful Gradient	4	Hair	Fully Charged: Refreshing	5	124	473	160	121	935	23170	309	740	Cool
Crackling Electricity	4	Dress	Fully Charged: Refreshing	0	88	290	67	104	551	0	0	0	Cool
Crackling Electricity	4	Dress	Fully Charged: Refreshing	1	110	363	84	130	689	2700	36	80	Cool
Crackling Electricity	4	Dress	Fully Charged: Refreshing	2	137	450	104	162	855	8100	108	240	Cool
Crackling Electricity	4	Dress	Fully Charged: Refreshing	3	168	551	128	198	1047	16200	216	480	Cool
Crackling Electricity	4	Dress	Fully Charged: Refreshing	4	203	667	155	240	1268	26460	353	800	Cool
Crackling Electricity	4	Dress	Fully Charged: Refreshing	5	242	798	185	286	1516	38610	515	1184	Cool
Emergency Deployment	4	Shoes	Fully Charged: Refreshing	0	26	84	0	28	174	0	0	0	Cool
Emergency Deployment	4	Shoes	Fully Charged: Refreshing	1	33	105	22	35	218	810	11	30	Cool
Emergency Deployment	4	Shoes	Fully Charged: Refreshing	2	41	131	27	44	270	2430	33	90	Cool
Emergency Deployment	4	Shoes	Fully Charged: Refreshing	3	50	160	33	54	331	4860	65	180	Cool
Emergency Deployment	4	Shoes	Fully Charged: Refreshing	4	60	194	40	65	401	7940	106	300	Cool
Emergency Deployment	4	Shoes	Fully Charged: Refreshing	5	72	231	47	77	479	11590	155	445	Cool
Smooth Current	4	Gloves	Fully Charged: Refreshing	0	13	45	10	10	86	0	0	0	Cool
Smooth Current	4	Gloves	Fully Charged: Refreshing	1	0	57	13	13	108	410	5	12	Cool
Smooth Current	4	Gloves	Fully Charged: Refreshing	2	21	70	16	16	134	1220	16	36	Cool
Smooth Current	4	Gloves	Fully Charged: Refreshing	3	25	86	19	19	164	2440	32	72	Cool
Smooth Current	4	Gloves	Fully Charged: Refreshing	4	30	104	23	23	198	3980	53	120	Cool
Smooth Current	4	Gloves	Fully Charged: Refreshing	5	36	124	28	28	237	5800	77	177	Cool
Sweet Guardian	4	Face Decoration	Fully Charged: Refreshing	0	9	46	8	12	90	0	0	0	Cool
Sweet Guardian	4	Face Decoration	Fully Charged: Refreshing	1	0	58	10	15	113	410	5	12	Cool
Sweet Guardian	4	Face Decoration	Fully Charged: Refreshing	2	14	72	13	19	140	1220	16	36	Cool
Sweet Guardian	4	Face Decoration	Fully Charged: Refreshing	3	18	88	16	23	171	2440	32	72	Cool
Sweet Guardian	4	Face Decoration	Fully Charged: Refreshing	4	21	106	19	28	207	3980	53	120	Cool
Sweet Guardian	4	Face Decoration	Fully Charged: Refreshing	5	25	127	22	33	248	5800	77	177	Cool
Power Restart	4	Socks	Fully Charged: Refreshing	0	16	56	18	19	111	0	0	0	Cool
Power Restart	4	Socks	Fully Charged: Refreshing	1	20	70	23	24	139	540	7	12	Cool
Power Restart	4	Socks	Fully Charged: Refreshing	2	25	87	28	30	173	1620	21	36	Cool
Power Restart	4	Socks	Fully Charged: Refreshing	3	31	107	35	37	211	3240	43	72	Cool
Power Restart	4	Socks	Fully Charged: Refreshing	4	37	129	42	44	256	5290	70	120	Cool
Power Restart	4	Socks	Fully Charged: Refreshing	5	44	154	50	53	306	7720	102	177	Cool
Maximum Power	4	Earrings	Fully Charged: Refreshing	0	9	45	10	10	90	0	0	0	Cool
Maximum Power	4	Earrings	Fully Charged: Refreshing	1	0	57	13	13	113	410	5	12	Cool
Maximum Power	4	Earrings	Fully Charged: Refreshing	2	14	70	16	16	140	1220	16	36	Cool
Maximum Power	4	Earrings	Fully Charged: Refreshing	3	18	86	19	19	171	2440	32	72	Cool
Maximum Power	4	Earrings	Fully Charged: Refreshing	4	21	104	23	23	207	3980	53	120	Cool
Maximum Power	4	Earrings	Fully Charged: Refreshing	5	25	124	28	28	248	5800	77	177	Cool
Best Partner	4	Chest Accessory	Fully Charged: Refreshing	0	13	41	15	13	82	0	0	0	Cool
Best Partner	4	Chest Accessory	Fully Charged: Refreshing	1	0	52	19	0	103	410	5	12	Cool
Best Partner	4	Chest Accessory	Fully Charged: Refreshing	2	21	64	24	21	128	1220	16	36	Cool
Best Partner	4	Chest Accessory	Fully Charged: Refreshing	3	25	78	29	25	156	2440	32	72	Cool
Best Partner	4	Chest Accessory	Fully Charged: Refreshing	4	30	95	35	30	189	3980	53	120	Cool
Best Partner	4	Chest Accessory	Fully Charged: Refreshing	5	36	113	42	36	226	5800	77	177	Cool
Distant Aroma	4	Hair	Floral Memory: Gleam	0	181	343	47	47	43	0	0	0	Fresh
Distant Aroma	4	Hair	Floral Memory: Gleam	1	227	429	59	59	54	1620	22	50	Fresh
Distant Aroma	4	Hair	Floral Memory: Gleam	2	281	532	73	73	67	4860	65	150	Fresh
Distant Aroma	4	Hair	Floral Memory: Gleam	3	344	652	90	90	82	9720	130	300	Fresh
Distant Aroma	4	Hair	Floral Memory: Gleam	4	417	789	109	109	99	15880	212	500	Fresh
Distant Aroma	4	Hair	Floral Memory: Gleam	5	498	944	130	130	119	23170	309	740	Fresh
Golden Memory	4	Dress	Floral Memory: Gleam	0	284	561	80	89	87	0	0	0	Fresh
Golden Memory	4	Dress	Floral Memory: Gleam	1	355	702	100	0	109	2700	36	80	Fresh
Golden Memory	4	Dress	Floral Memory: Gleam	2	441	870	124	138	135	8100	108	240	Fresh
Golden Memory	4	Dress	Floral Memory: Gleam	3	540	1066	152	170	166	16200	216	480	Fresh
Golden Memory	4	Dress	Floral Memory: Gleam	4	654	1291	184	205	201	26460	353	800	Fresh
Golden Memory	4	Dress	Floral Memory: Gleam	5	781	1543	220	245	240	38610	515	1184	Fresh
Wind-swayed Dreams	4	Socks	Floral Memory: Gleam	0	58	4	15	0	15	0	0	0	Elegant
Wind-swayed Dreams	4	Socks	Floral Memory: Gleam	1	73	143	19	22	19	540	7	12	Fresh
Wind-swayed Dreams	4	Socks	Floral Memory: Gleam	2	90	0	24	27	24	1620	21	36	Elegant
Wind-swayed Dreams	4	Socks	Floral Memory: Gleam	3	0	217	29	33	29	3240	43	72	Fresh
Wind-swayed Dreams	4	Socks	Floral Memory: Gleam	4	134	263	35	40	35	5290	70	120	Fresh
Wind-swayed Dreams	4	Socks	Floral Memory: Gleam	5	160	314	42	47	42	7720	102	177	Fresh
Remembrance of Flowers	4	Gloves	Floral Memory: Gleam	0	44	87	9	16	10	0	0	0	Fresh
Remembrance of Flowers	4	Gloves	Floral Memory: Gleam	1	55	109	0	20	13	410	5	12	Fresh
Remembrance of Flowers	4	Gloves	Floral Memory: Gleam	2	69	135	14	25	16	1220	16	36	Fresh
Remembrance of Flowers	4	Gloves	Floral Memory: Gleam	3	84	166	18	31	19	2440	32	72	Fresh
Remembrance of Flowers	4	Gloves	Floral Memory: Gleam	4	102	201	21	37	23	3980	53	120	Fresh
Remembrance of Flowers	4	Gloves	Floral Memory: Gleam	5	121	240	25	44	28	5800	77	177	Fresh
Hidden in Flowers	4	Choker	Floral Memory: Gleam	0	40	85	0	14	15	0	0	0	Fresh
Hidden in Flowers	4	Choker	Floral Memory: Gleam	1	50	107	14	18	19	410	5	12	Fresh
Hidden in Flowers	4	Choker	Floral Memory: Gleam	2	62	132	18	22	24	1220	16	36	Fresh
Hidden in Flowers	4	Choker	Floral Memory: Gleam	3	76	162	21	27	29	2440	32	72	Fresh
Hidden in Flowers	4	Choker	Floral Memory: Gleam	4	92	196	26	33	35	3980	53	120	Fresh
Hidden in Flowers	4	Choker	Floral Memory: Gleam	5	110	234	31	39	42	5800	77	177	Fresh
Flower Memory	4	Earrings	Floral Memory: Gleam	0	42	86	14	12	11	0	0	0	Fresh
Flower Memory	4	Earrings	Floral Memory: Gleam	1	53	108	18	15	14	410	5	12	Fresh
Flower Memory	4	Earrings	Floral Memory: Gleam	2	66	134	22	19	18	1220	16	36	Fresh
Flower Memory	4	Earrings	Floral Memory: Gleam	3	80	164	27	23	21	2440	32	72	Fresh
Flower Memory	4	Earrings	Floral Memory: Gleam	4	0	198	33	28	26	3980	53	120	Fresh
Flower Memory	4	Earrings	Floral Memory: Gleam	5	116	237	39	33	31	5800	77	177	Fresh
Light Spirals	4	Hair Accessory	Floral Memory: Gleam	0	43	87	13	12	10	0	0	0	Fresh
Light Spirals	4	Hair Accessory	Floral Memory: Gleam	1	54	109	0	15	13	410	5	12	Fresh
Light Spirals	4	Hair Accessory	Floral Memory: Gleam	2	67	135	21	19	16	1220	16	36	Fresh
Light Spirals	4	Hair Accessory	Floral Memory: Gleam	3	82	166	25	23	19	2440	32	72	Fresh
Light Spirals	4	Hair Accessory	Floral Memory: Gleam	4	99	201	30	28	23	3980	53	120	Fresh
Light Spirals	4	Hair Accessory	Floral Memory: Gleam	5	19	240	36	33	28	5800	77	177	Fresh
Fresh Breeze	4	Hair	Bubbly Voyage: Spring	0	37	179	350	53	42	0	0	0	Sweet
Fresh Breeze	4	Hair	Bubbly Voyage: Spring	1	47	224	438	67	53	1620	22	50	Sweet
Fresh Breeze	4	Hair	Bubbly Voyage: Spring	2	58	278	543	83	66	4860	65	150	Sweet
Fresh Breeze	4	Hair	Bubbly Voyage: Spring	3	71	341	665	101	80	9720	130	300	Sweet
Fresh Breeze	4	Hair	Bubbly Voyage: Spring	4	86	412	805	122	0	15880	212	500	Sweet
Fresh Breeze	4	Hair	Bubbly Voyage: Spring	5	102	493	963	146	116	23170	309	740	Sweet
Bubbly Aroma	4	Dress	Bubbly Voyage: Spring	0	79	274	547	99	102	0	0	0	Sweet
Bubbly Aroma	4	Dress	Bubbly Voyage: Spring	1	99	343	684	124	128	2700	36	80	Sweet
Bubbly Aroma	4	Dress	Bubbly Voyage: Spring	2	123	425	848	154	159	8100	108	240	Sweet
Bubbly Aroma	4	Dress	Bubbly Voyage: Spring	3	151	521	1040	189	194	16200	216	480	Sweet
Bubbly Aroma	4	Dress	Bubbly Voyage: Spring	4	182	631	1259	228	235	26460	353	800	Sweet
Bubbly Aroma	4	Dress	Bubbly Voyage: Spring	5	218	754	1505	273	281	38610	515	1184	Sweet
Viridescent Hops	4	Socks	Bubbly Voyage: Spring	0	18	56	113	14	18	0	0	0	Sweet
Viridescent Hops	4	Socks	Bubbly Voyage: Spring	1	23	70	142	18	23	540	7	12	Sweet
Viridescent Hops	4	Socks	Bubbly Voyage: Spring	2	28	87	176	22	28	1620	21	36	Sweet
Viridescent Hops	4	Socks	Bubbly Voyage: Spring	3	35	107	215	27	35	3240	43	72	Sweet
Viridescent Hops	4	Socks	Bubbly Voyage: Spring	4	42	129	260	33	42	5290	70	120	Sweet
Viridescent Hops	4	Socks	Bubbly Voyage: Spring	5	50	154	311	39	50	7720	102	177	Sweet
Springing Up	4	Shoes	Bubbly Voyage: Spring	0	25	87	181	21	7	0	0	0	Sweet
Springing Up	4	Shoes	Bubbly Voyage: Spring	1	32	109	227	27	22	810	11	30	Sweet
Springing Up	4	Shoes	Bubbly Voyage: Spring	2	39	135	281	33	27	2430	33	90	Sweet
Springing Up	4	Shoes	Bubbly Voyage: Spring	3	48	166	344	40	33	4860	65	180	Sweet
Springing Up	4	Shoes	Bubbly Voyage: Spring	4	58	201	417	49	40	7940	106	300	Sweet
Springing Up	4	Shoes	Bubbly Voyage: Spring	5	69	240	498	58	47	11590	155	445	Sweet
Emerald Flow	4	Choker	Bubbly Voyage: Spring	0	8	44	87	0	15	0	0	0	Sweet
Emerald Flow	4	Choker	Bubbly Voyage: Spring	1	10	55	109	14	19	410	5	12	Sweet
Emerald Flow	4	Choker	Bubbly Voyage: Spring	2	13	69	135	18	24	1220	16	36	Sweet
Emerald Flow	4	Choker	Bubbly Voyage: Spring	3	16	84	166	21	29	2440	32	72	Sweet
Emerald Flow	4	Choker	Bubbly Voyage: Spring	4	19	102	201	26	35	3980	53	120	Sweet
Emerald Flow	4	Choker	Bubbly Voyage: Spring	5	22	121	240	31	42	5800	77	177	Sweet
Thoughts of Spring	4	Hair Accessory	Bubbly Voyage: Spring	0	10	44	84	14	14	0	0	0	Sweet
Thoughts of Spring	4	Hair Accessory	Bubbly Voyage: Spring	1	13	55	105	18	18	410	5	12	Sweet
Thoughts of Spring	4	Hair Accessory	Bubbly Voyage: Spring	2	16	69	131	22	22	1220	16	36	Sweet
Thoughts of Spring	4	Hair Accessory	Bubbly Voyage: Spring	3	19	84	160	27	27	2440	32	72	Sweet
Thoughts of Spring	4	Hair Accessory	Bubbly Voyage: Spring	4	23	102	194	33	33	3980	53	120	Sweet
Thoughts of Spring	4	Hair Accessory	Bubbly Voyage: Spring	5	28	121	231	39	39	5800	77	177	Sweet
Rhymes Echo	4	Headwear	Bubbly Voyage: Spring	0	13	43	83	14	12	0	0	0	Sweet
Rhymes Echo	4	Headwear	Bubbly Voyage: Spring	1	0	54	104	18	15	410	5	12	Sweet
Rhymes Echo	4	Headwear	Bubbly Voyage: Spring	2	21	67	129	22	19	1220	16	36	Sweet
Rhymes Echo	4	Headwear	Bubbly Voyage: Spring	3	25	82	158	27	23	2440	32	72	Sweet
Rhymes Echo	4	Headwear	Bubbly Voyage: Spring	4	30	99	191	33	28	3980	53	120	Sweet
Rhymes Echo	4	Headwear	Bubbly Voyage: Spring	5	36	19	229	39	33	5800	77	177	Sweet
Dewy Bubbles	4	Bracelet	Bubbly Voyage: Spring	0	15	43	86	10	11	0	0	0	Sweet
Dewy Bubbles	4	Bracelet	Bubbly Voyage: Spring	1	19	54	108	13	14	410	5	12	Sweet
Dewy Bubbles	4	Bracelet	Bubbly Voyage: Spring	2	24	67	134	16	18	1220	16	36	Sweet
Dewy Bubbles	4	Bracelet	Bubbly Voyage: Spring	3	29	82	164	19	21	2440	32	72	Sweet
Dewy Bubbles	4	Bracelet	Bubbly Voyage: Spring	4	35	99	198	23	26	3980	53	120	Sweet
Dewy Bubbles	4	Bracelet	Bubbly Voyage: Spring	5	42	19	237	28	31	5800	77	177	Sweet
Forgotten Drift	5	Earrings	Blossoming Stars: Dreamfall	0	63	132	22	20	7	0	0	0	Fresh
Forgotten Drift	5	Earrings	Blossoming Stars: Dreamfall	1	79	165	28	25	22	680	9	19	Fresh
Forgotten Drift	5	Earrings	Blossoming Stars: Dreamfall	2	98	205	35	31	27	2030	27	57	Fresh
Forgotten Drift	5	Earrings	Blossoming Stars: Dreamfall	3	120	251	42	38	33	4060	54	114	Fresh
Forgotten Drift	5	Earrings	Blossoming Stars: Dreamfall	4	145	304	51	46	40	6630	88	190	Fresh
Forgotten Drift	5	Earrings	Blossoming Stars: Dreamfall	5	174	363	61	55	47	9670	129	282	Fresh
Star Blossom	5	Earrings	Blossoming Stars: Starlight	0	63	132	22	20	7	0	0	0	Fresh
Star Blossom	5	Earrings	Blossoming Stars: Starlight	1	79	165	28	25	22	680	9	19	Fresh
Star Blossom	5	Earrings	Blossoming Stars: Starlight	2	98	205	35	31	27	2030	27	57	Fresh
Star Blossom	5	Earrings	Blossoming Stars: Starlight	3	120	251	42	38	33	4060	54	114	Fresh
Star Blossom	5	Earrings	Blossoming Stars: Starlight	4	145	304	51	46	40	6630	88	190	Fresh
Star Blossom	5	Earrings	Blossoming Stars: Starlight	5	174	363	61	55	47	9670	129	282	Fresh
Golden Blossom	5	Earrings	Blossoming Stars: Radiance	0	63	132	22	20	7	0	0	0	Fresh
Golden Blossom	5	Earrings	Blossoming Stars: Radiance	1	79	165	28	25	22	680	9	19	Fresh
Golden Blossom	5	Earrings	Blossoming Stars: Radiance	2	98	205	35	31	27	2030	27	57	Fresh
Golden Blossom	5	Earrings	Blossoming Stars: Radiance	3	120	251	42	38	33	4060	54	114	Fresh
Golden Blossom	5	Earrings	Blossoming Stars: Radiance	4	145	304	51	46	40	6630	88	190	Fresh
Golden Blossom	5	Earrings	Blossoming Stars: Radiance	5	174	363	61	55	47	9670	129	282	Fresh
Starlight Submersion	5	Bracelet	Blossoming Stars: Dreamfall	0	67	142	14	13	19	0	0	0	Fresh
Starlight Submersion	5	Bracelet	Blossoming Stars: Dreamfall	1	84	178	18	0	24	680	9	19	Fresh
Starlight Submersion	5	Bracelet	Blossoming Stars: Dreamfall	2	104	221	22	21	30	2030	27	57	Fresh
Starlight Submersion	5	Bracelet	Blossoming Stars: Dreamfall	3	128	270	27	25	37	4060	54	114	Fresh
Starlight Submersion	5	Bracelet	Blossoming Stars: Dreamfall	4	155	327	33	30	44	6630	88	190	Fresh
Starlight Submersion	5	Bracelet	Blossoming Stars: Dreamfall	5	185	391	39	36	53	9670	129	282	Fresh
Cloud Cluster	5	Bracelet	Blossoming Stars: Starlight	0	67	142	14	13	19	0	0	0	Fresh
Cloud Cluster	5	Bracelet	Blossoming Stars: Starlight	1	84	178	18	0	24	680	9	19	Fresh
Cloud Cluster	5	Bracelet	Blossoming Stars: Starlight	2	104	221	22	21	30	2030	27	57	Fresh
Cloud Cluster	5	Bracelet	Blossoming Stars: Starlight	3	128	270	27	25	37	4060	54	114	Fresh
Cloud Cluster	5	Bracelet	Blossoming Stars: Starlight	4	155	327	33	30	44	6630	88	190	Fresh
Cloud Cluster	5	Bracelet	Blossoming Stars: Starlight	5	185	391	39	36	53	9670	129	282	Fresh
Pure Wish	5	Bracelet	Blossoming Stars: Radiance	0	67	142	14	13	19	0	0	0	Fresh
Pure Wish	5	Bracelet	Blossoming Stars: Radiance	1	84	178	18	0	24	680	9	19	Fresh
Pure Wish	5	Bracelet	Blossoming Stars: Radiance	2	104	221	22	21	30	2030	27	57	Fresh
Pure Wish	5	Bracelet	Blossoming Stars: Radiance	3	128	270	27	25	37	4060	54	114	Fresh
Pure Wish	5	Bracelet	Blossoming Stars: Radiance	4	155	327	33	30	44	6630	88	190	Fresh
Pure Wish	5	Bracelet	Blossoming Stars: Radiance	5	185	391	39	36	53	9670	129	282	Fresh
Mist Glow	5	Hair Accessory	Blossoming Stars: Dreamfall	0	66	130	18	18	23	0	0	0	Fresh
Mist Glow	5	Hair Accessory	Blossoming Stars: Dreamfall	1	83	163	23	23	29	680	9	19	Fresh
Mist Glow	5	Hair Accessory	Blossoming Stars: Dreamfall	2	103	202	28	28	36	2030	27	57	Fresh
Mist Glow	5	Hair Accessory	Blossoming Stars: Dreamfall	3	126	247	35	35	44	4060	54	114	Fresh
Mist Glow	5	Hair Accessory	Blossoming Stars: Dreamfall	4	152	299	42	42	53	6630	88	190	Fresh
Mist Glow	5	Hair Accessory	Blossoming Stars: Dreamfall	5	182	358	50	50	64	9670	129	282	Fresh
Blooming Starfall	5	Hair Accessory	Blossoming Stars: Starlight	0	66	130	18	18	23	0	0	0	Fresh
Blooming Starfall	5	Hair Accessory	Blossoming Stars: Starlight	1	83	163	23	23	29	680	9	19	Fresh
Blooming Starfall	5	Hair Accessory	Blossoming Stars: Starlight	2	103	202	28	28	36	2030	27	57	Fresh
Blooming Starfall	5	Hair Accessory	Blossoming Stars: Starlight	3	126	247	35	35	44	4060	54	114	Fresh
Blooming Starfall	5	Hair Accessory	Blossoming Stars: Starlight	4	152	299	42	42	53	6630	88	190	Fresh
Blooming Starfall	5	Hair Accessory	Blossoming Stars: Starlight	5	182	358	50	50	64	9670	129	282	Fresh
Glistening Moment	5	Hair Accessory	Blossoming Stars: Radiance	0	66	130	18	18	23	0	0	0	Fresh
Glistening Moment	5	Hair Accessory	Blossoming Stars: Radiance	1	83	163	23	23	29	680	9	19	Fresh
Glistening Moment	5	Hair Accessory	Blossoming Stars: Radiance	2	103	202	28	28	36	2030	27	57	Fresh
Glistening Moment	5	Hair Accessory	Blossoming Stars: Radiance	3	126	247	35	35	44	4060	54	114	Fresh
Glistening Moment	5	Hair Accessory	Blossoming Stars: Radiance	4	152	299	42	42	53	6630	88	190	Fresh
Glistening Moment	5	Hair Accessory	Blossoming Stars: Radiance	5	182	358	50	50	64	9670	129	282	Fresh
Dreams Lost	5	Neckwear	Blossoming Stars: Dreamfall	0	68	131	19	25	13	0	0	0	Fresh
Dreams Lost	5	Neckwear	Blossoming Stars: Dreamfall	1	85	164	24	32	0	680	9	19	Fresh
Dreams Lost	5	Neckwear	Blossoming Stars: Dreamfall	2	106	204	30	39	21	2030	27	57	Fresh
Dreams Lost	5	Neckwear	Blossoming Stars: Dreamfall	3	130	249	37	48	25	4060	54	114	Fresh
Dreams Lost	5	Neckwear	Blossoming Stars: Dreamfall	4	157	302	44	58	30	6630	88	190	Fresh
Dreams Lost	5	Neckwear	Blossoming Stars: Dreamfall	5	187	361	53	69	36	9670	129	282	Fresh
Milky Way Overflow	5	Neckwear	Blossoming Stars: Starlight	0	68	131	19	25	13	0	0	0	Fresh
Milky Way Overflow	5	Neckwear	Blossoming Stars: Starlight	1	85	164	24	32	0	680	9	19	Fresh
Milky Way Overflow	5	Neckwear	Blossoming Stars: Starlight	2	106	204	30	39	21	2030	27	57	Fresh
Milky Way Overflow	5	Neckwear	Blossoming Stars: Starlight	3	130	249	37	48	25	4060	54	114	Fresh
Milky Way Overflow	5	Neckwear	Blossoming Stars: Starlight	4	157	302	44	58	30	6630	88	190	Fresh
Milky Way Overflow	5	Neckwear	Blossoming Stars: Starlight	5	187	361	53	69	36	9670	129	282	Fresh
Dawning Light	5	Neckwear	Blossoming Stars: Radiance	0	68	131	19	25	13	0	0	0	Fresh
Dawning Light	5	Neckwear	Blossoming Stars: Radiance	1	85	164	24	32	0	680	9	19	Fresh
Dawning Light	5	Neckwear	Blossoming Stars: Radiance	2	106	204	30	39	21	2030	27	57	Fresh
Dawning Light	5	Neckwear	Blossoming Stars: Radiance	3	130	249	37	48	25	4060	54	114	Fresh
Dawning Light	5	Neckwear	Blossoming Stars: Radiance	4	157	302	44	58	30	6630	88	190	Fresh
Dawning Light	5	Neckwear	Blossoming Stars: Radiance	5	187	361	53	69	36	9670	129	282	Fresh
Floating Shore	5	Shoes	Blossoming Stars: Dreamfall	0	126	263	45	27	48	0	0	0	Fresh
Floating Shore	5	Shoes	Blossoming Stars: Dreamfall	1	158	329	57	34	60	1350	18	48	Fresh
Floating Shore	5	Shoes	Blossoming Stars: Dreamfall	2	196	408	70	42	75	4050	54	144	Fresh
Floating Shore	5	Shoes	Blossoming Stars: Dreamfall	3	240	500	86	52	92	8100	108	289	Fresh
Floating Shore	5	Shoes	Blossoming Stars: Dreamfall	4	290	605	104	63	0	13230	176	481	Fresh
Floating Shore	5	Shoes	Blossoming Stars: Dreamfall	5	347	724	124	75	132	19310	257	711	Fresh
Floral Stardust	5	Shoes	Blossoming Stars: Starlight	0	126	263	45	27	48	0	0	0	Fresh
Floral Stardust	5	Shoes	Blossoming Stars: Starlight	1	158	329	57	34	60	1350	18	48	Fresh
Floral Stardust	5	Shoes	Blossoming Stars: Starlight	2	196	408	70	42	75	4050	54	144	Fresh
Floral Stardust	5	Shoes	Blossoming Stars: Starlight	3	240	500	86	52	92	8100	108	289	Fresh
Floral Stardust	5	Shoes	Blossoming Stars: Starlight	4	290	605	104	63	0	13230	176	481	Fresh
Floral Stardust	5	Shoes	Blossoming Stars: Starlight	5	347	724	124	75	132	19310	257	711	Fresh
Chasing Stars	5	Shoes	Blossoming Stars: Radiance	0	126	263	45	27	48	0	0	0	Fresh
Chasing Stars	5	Shoes	Blossoming Stars: Radiance	1	158	329	57	34	60	1350	18	48	Fresh
Chasing Stars	5	Shoes	Blossoming Stars: Radiance	2	196	408	70	42	75	4050	54	144	Fresh
Chasing Stars	5	Shoes	Blossoming Stars: Radiance	3	240	500	86	52	92	8100	108	289	Fresh
Chasing Stars	5	Shoes	Blossoming Stars: Radiance	4	290	605	104	63	0	13230	176	481	Fresh
Chasing Stars	5	Shoes	Blossoming Stars: Radiance	5	347	724	124	75	132	19310	257	711	Fresh
Ethereal Dreamland	5	Dress	Blossoming Stars: Dreamfall	0	436	890	19	164	91	0	0	0	Fresh
Ethereal Dreamland	5	Dress	Blossoming Stars: Dreamfall	1	545	0	149	205	4	4500	60	128	Elegant
Ethereal Dreamland	5	Dress	Blossoming Stars: Dreamfall	2	676	1380	185	255	142	13500	180	384	Fresh
Ethereal Dreamland	5	Dress	Blossoming Stars: Dreamfall	3	829	1691	227	312	173	27000	360	768	Fresh
Ethereal Dreamland	5	Dress	Blossoming Stars: Dreamfall	4	1003	2047	274	378	210	44100	588	1280	Fresh
Ethereal Dreamland	5	Dress	Blossoming Stars: Dreamfall	5	1199	2448	328	451	251	64350	858	1894	Fresh
Rustling Stars	5	Dress	Blossoming Stars: Starlight	0	436	890	19	164	91	0	0	0	Fresh
Rustling Stars	5	Dress	Blossoming Stars: Starlight	1	545	0	149	205	4	4500	60	128	Elegant
Rustling Stars	5	Dress	Blossoming Stars: Starlight	2	676	1380	185	255	142	13500	180	384	Fresh
Rustling Stars	5	Dress	Blossoming Stars: Starlight	3	829	1691	227	312	173	27000	360	768	Fresh
Rustling Stars	5	Dress	Blossoming Stars: Starlight	4	1003	2047	274	378	210	44100	588	1280	Fresh
Rustling Stars	5	Dress	Blossoming Stars: Starlight	5	1199	2448	328	451	251	64350	858	1894	Fresh
Eternal Radiance	5	Dress	Blossoming Stars: Radiance	0	436	890	19	164	91	0	0	0	Fresh
Eternal Radiance	5	Dress	Blossoming Stars: Radiance	1	545	0	149	205	4	4500	60	128	Elegant
Eternal Radiance	5	Dress	Blossoming Stars: Radiance	2	676	1380	185	255	142	13500	180	384	Fresh
Eternal Radiance	5	Dress	Blossoming Stars: Radiance	3	829	1691	227	312	173	27000	360	768	Fresh
Eternal Radiance	5	Dress	Blossoming Stars: Radiance	4	1003	2047	274	378	210	44100	588	1280	Fresh
Eternal Radiance	5	Dress	Blossoming Stars: Radiance	5	1199	2448	328	451	251	64350	858	1894	Fresh
Evening Banquet	5	Hair	Blossoming Stars: Dreamfall	0	273	521	77	86	65	0	0	0	Fresh
Evening Banquet	5	Hair	Blossoming Stars: Dreamfall	1	342	652	0	108	82	2700	36	80	Fresh
Evening Banquet	5	Hair	Blossoming Stars: Dreamfall	2	424	808	120	134	101	8100	108	240	Fresh
Evening Banquet	5	Hair	Blossoming Stars: Dreamfall	3	519	990	147	164	124	16200	216	480	Fresh
Evening Banquet	5	Hair	Blossoming Stars: Dreamfall	4	628	1199	178	198	150	26460	353	800	Fresh
Evening Banquet	5	Hair	Blossoming Stars: Dreamfall	5	751	1433	212	237	179	38610	515	1184	Fresh
Silver Shimmer	5	Hair	Blossoming Stars: Starlight	0	273	521	77	86	65	0	0	0	Fresh
Silver Shimmer	5	Hair	Blossoming Stars: Starlight	1	342	652	0	108	82	2700	36	80	Fresh
Silver Shimmer	5	Hair	Blossoming Stars: Starlight	2	424	808	120	134	101	8100	108	240	Fresh
Silver Shimmer	5	Hair	Blossoming Stars: Starlight	3	519	990	147	164	124	16200	216	480	Fresh
Silver Shimmer	5	Hair	Blossoming Stars: Starlight	4	628	1199	178	198	150	26460	353	800	Fresh
Silver Shimmer	5	Hair	Blossoming Stars: Starlight	5	751	1433	212	237	179	38610	515	1184	Fresh
Firefly Brilliance	5	Hair	Blossoming Stars: Radiance	0	273	521	77	86	65	0	0	0	Fresh
Firefly Brilliance	5	Hair	Blossoming Stars: Radiance	1	342	652	0	108	82	2700	36	80	Fresh
Firefly Brilliance	5	Hair	Blossoming Stars: Radiance	2	424	808	120	134	101	8100	108	240	Fresh
Firefly Brilliance	5	Hair	Blossoming Stars: Radiance	3	519	990	147	164	124	16200	216	480	Fresh
Firefly Brilliance	5	Hair	Blossoming Stars: Radiance	4	628	1199	178	198	150	26460	353	800	Fresh
Firefly Brilliance	5	Hair	Blossoming Stars: Radiance	5	751	1433	212	237	179	38610	515	1184	Fresh
Moon in Flowers	5	Headwear	Blossoming Stars: Dreamfall	0	67	131	24	16	7	0	0	0	Fresh
Moon in Flowers	5	Headwear	Blossoming Stars: Dreamfall	1	84	164	30	20	22	680	9	19	Fresh
Moon in Flowers	5	Headwear	Blossoming Stars: Dreamfall	2	104	204	38	25	27	2030	27	57	Fresh
Moon in Flowers	5	Headwear	Blossoming Stars: Dreamfall	3	128	249	46	31	33	4060	54	114	Fresh
Moon in Flowers	5	Headwear	Blossoming Stars: Dreamfall	4	155	302	56	37	40	6630	88	190	Fresh
Moon in Flowers	5	Headwear	Blossoming Stars: Dreamfall	5	185	361	66	44	47	9670	129	282	Fresh
Snow on Branches	5	Headwear	Blossoming Stars: Starlight	0	67	131	24	16	7	0	0	0	Fresh
Snow on Branches	5	Headwear	Blossoming Stars: Starlight	1	84	164	30	20	22	680	9	19	Fresh
Snow on Branches	5	Headwear	Blossoming Stars: Starlight	2	104	204	38	25	27	2030	27	57	Fresh
Snow on Branches	5	Headwear	Blossoming Stars: Starlight	3	128	249	46	31	33	4060	54	114	Fresh
Snow on Branches	5	Headwear	Blossoming Stars: Starlight	4	155	302	56	37	40	6630	88	190	Fresh
Snow on Branches	5	Headwear	Blossoming Stars: Starlight	5	185	361	66	44	47	9670	129	282	Fresh
White Branches	5	Headwear	Blossoming Stars: Radiance	0	67	131	24	16	7	0	0	0	Fresh
White Branches	5	Headwear	Blossoming Stars: Radiance	1	84	164	30	20	22	680	9	19	Fresh
White Branches	5	Headwear	Blossoming Stars: Radiance	2	104	204	38	25	27	2030	27	57	Fresh
White Branches	5	Headwear	Blossoming Stars: Radiance	3	128	249	46	31	33	4060	54	114	Fresh
White Branches	5	Headwear	Blossoming Stars: Radiance	4	155	302	56	37	40	6630	88	190	Fresh
White Branches	5	Headwear	Blossoming Stars: Radiance	5	185	361	66	44	47	9670	129	282	Fresh
Long Dreaming	5	Socks	Blossoming Stars: Dreamfall	0	90	176	26	25	23	0	0	0	Fresh
Long Dreaming	5	Socks	Blossoming Stars: Dreamfall	1	113	220	33	32	29	900	12	19	Fresh
Long Dreaming	5	Socks	Blossoming Stars: Dreamfall	2	140	273	41	39	36	2700	36	57	Fresh
Long Dreaming	5	Socks	Blossoming Stars: Dreamfall	3	171	335	50	48	44	5400	72	114	Fresh
Long Dreaming	5	Socks	Blossoming Stars: Dreamfall	4	207	405	60	58	53	8820	118	190	Fresh
Long Dreaming	5	Socks	Blossoming Stars: Dreamfall	5	248	484	72	69	64	12870	172	282	Fresh
Misty Silhouette	5	Socks	Blossoming Stars: Starlight	0	90	176	26	25	23	0	0	0	Fresh
Misty Silhouette	5	Socks	Blossoming Stars: Starlight	1	113	220	33	32	29	900	12	19	Fresh
Misty Silhouette	5	Socks	Blossoming Stars: Starlight	2	140	273	41	39	36	2700	36	57	Fresh
Misty Silhouette	5	Socks	Blossoming Stars: Starlight	3	171	335	50	48	44	5400	72	114	Fresh
Misty Silhouette	5	Socks	Blossoming Stars: Starlight	4	207	405	60	58	53	8820	118	190	Fresh
Misty Silhouette	5	Socks	Blossoming Stars: Starlight	5	248	484	72	69	64	12870	172	282	Fresh
Starry Tread	5	Socks	Blossoming Stars: Radiance	0	90	176	26	25	23	0	0	0	Fresh
Starry Tread	5	Socks	Blossoming Stars: Radiance	1	113	220	33	32	29	900	12	19	Fresh
Starry Tread	5	Socks	Blossoming Stars: Radiance	2	140	273	41	39	36	2700	36	57	Fresh
Starry Tread	5	Socks	Blossoming Stars: Radiance	3	171	335	50	48	44	5400	72	114	Fresh
Starry Tread	5	Socks	Blossoming Stars: Radiance	4	207	405	60	58	53	8820	118	190	Fresh
Starry Tread	5	Socks	Blossoming Stars: Radiance	5	248	484	72	69	64	12870	172	282	Fresh
Path of Sorrow	5	Shoes	Flutter Storm: Flame Song	0	122	42	47	255	43	0	0	0	Sexy
Path of Sorrow	5	Shoes	Flutter Storm: Flame Song	1	153	53	59	319	54	1350	18	48	Sexy
Path of Sorrow	5	Shoes	Flutter Storm: Flame Song	2	190	66	73	396	67	4050	54	144	Sexy
Path of Sorrow	5	Shoes	Flutter Storm: Flame Song	3	232	80	90	485	82	8100	108	289	Sexy
Path of Sorrow	5	Shoes	Flutter Storm: Flame Song	4	281	0	109	587	99	13230	176	481	Sexy
Path of Sorrow	5	Shoes	Flutter Storm: Flame Song	5	336	116	130	702	119	19310	257	711	Sexy
Echoes of the Wind	5	Shoes	Flutter Storm: Forest Song	0	122	42	47	255	43	0	0	0	Sexy
Echoes of the Wind	5	Shoes	Flutter Storm: Forest Song	1	153	53	59	319	54	1350	18	48	Sexy
Echoes of the Wind	5	Shoes	Flutter Storm: Forest Song	2	190	66	73	396	67	4050	54	144	Sexy
Echoes of the Wind	5	Shoes	Flutter Storm: Forest Song	3	232	80	90	485	82	8100	108	289	Sexy
Echoes of the Wind	5	Shoes	Flutter Storm: Forest Song	4	281	0	109	587	99	13230	176	481	Sexy
Echoes of the Wind	5	Shoes	Flutter Storm: Forest Song	5	336	116	130	702	119	19310	257	711	Sexy
Resting in the Rift	5	Shoes	Flutter Storm: Dream Chant	0	122	42	47	255	43	0	0	0	Sexy
Resting in the Rift	5	Shoes	Flutter Storm: Dream Chant	1	153	53	59	319	54	1350	18	48	Sexy
Resting in the Rift	5	Shoes	Flutter Storm: Dream Chant	2	190	66	73	396	67	4050	54	144	Sexy
Resting in the Rift	5	Shoes	Flutter Storm: Dream Chant	3	232	80	90	485	82	8100	108	289	Sexy
Resting in the Rift	5	Shoes	Flutter Storm: Dream Chant	4	281	0	109	587	99	13230	176	481	Sexy
Resting in the Rift	5	Shoes	Flutter Storm: Dream Chant	5	336	116	130	702	119	19310	257	711	Sexy
Embers of the Butterfly	5	Dress	Flutter Storm: Flame Song	0	457	98	95	913	137	0	0	0	Sexy
Embers of the Butterfly	5	Dress	Flutter Storm: Flame Song	1	572	123	19	1142	172	4500	60	128	Sexy
Embers of the Butterfly	5	Dress	Flutter Storm: Flame Song	2	709	152	148	1416	213	13500	180	384	Sexy
Embers of the Butterfly	5	Dress	Flutter Storm: Flame Song	3	869	187	181	1735	261	27000	360	768	Sexy
Embers of the Butterfly	5	Dress	Flutter Storm: Flame Song	4	1052	226	219	2100	316	44100	588	1280	Sexy
Embers of the Butterfly	5	Dress	Flutter Storm: Flame Song	5	1257	270	262	2511	377	64350	858	1894	Sexy
Silent Woodland	5	Dress	Flutter Storm: Forest Song	0	457	98	95	913	137	0	0	0	Sexy
Silent Woodland	5	Dress	Flutter Storm: Forest Song	1	572	123	19	1142	172	4500	60	128	Sexy
Silent Woodland	5	Dress	Flutter Storm: Forest Song	2	709	152	148	1416	213	13500	180	384	Sexy
Silent Woodland	5	Dress	Flutter Storm: Forest Song	3	869	187	181	1735	261	27000	360	768	Sexy
Silent Woodland	5	Dress	Flutter Storm: Forest Song	4	1052	226	219	2100	316	44100	588	1280	Sexy
Silent Woodland	5	Dress	Flutter Storm: Forest Song	5	1257	270	262	2511	377	64350	858	1894	Sexy
Winged Illusions	5	Dress	Flutter Storm: Dream Chant	0	457	98	95	913	137	0	0	0	Sexy
Winged Illusions	5	Dress	Flutter Storm: Dream Chant	1	572	123	19	1142	172	4500	60	128	Sexy
Winged Illusions	5	Dress	Flutter Storm: Dream Chant	2	709	152	148	1416	213	13500	180	384	Sexy
Winged Illusions	5	Dress	Flutter Storm: Dream Chant	3	869	187	181	1735	261	27000	360	768	Sexy
Winged Illusions	5	Dress	Flutter Storm: Dream Chant	4	1052	226	219	2100	316	44100	588	1280	Sexy
Winged Illusions	5	Dress	Flutter Storm: Dream Chant	5	1257	270	262	2511	377	64350	858	1894	Sexy
Fervent Longing	5	Gloves	Flutter Storm: Flame Song	0	66	22	18	132	7	0	0	0	Sexy
Fervent Longing	5	Gloves	Flutter Storm: Flame Song	1	83	28	23	165	22	680	9	19	Sexy
Fervent Longing	5	Gloves	Flutter Storm: Flame Song	2	103	35	28	205	27	2030	27	57	Sexy
Fervent Longing	5	Gloves	Flutter Storm: Flame Song	3	126	42	35	251	33	4060	54	114	Sexy
Fervent Longing	5	Gloves	Flutter Storm: Flame Song	4	152	51	42	304	40	6630	88	190	Sexy
Fervent Longing	5	Gloves	Flutter Storm: Flame Song	5	182	61	50	363	47	9670	129	282	Sexy
Lingering Warmth	5	Gloves	Flutter Storm: Forest Song	0	66	22	18	132	7	0	0	0	Sexy
Lingering Warmth	5	Gloves	Flutter Storm: Forest Song	1	83	28	23	165	22	680	9	19	Sexy
Lingering Warmth	5	Gloves	Flutter Storm: Forest Song	2	103	35	28	205	27	2030	27	57	Sexy
Lingering Warmth	5	Gloves	Flutter Storm: Forest Song	3	126	42	35	251	33	4060	54	114	Sexy
Lingering Warmth	5	Gloves	Flutter Storm: Forest Song	4	152	51	42	304	40	6630	88	190	Sexy
Lingering Warmth	5	Gloves	Flutter Storm: Forest Song	5	182	61	50	363	47	9670	129	282	Sexy
Fluttering Butterfly	5	Gloves	Flutter Storm: Dream Chant	0	66	22	18	132	7	0	0	0	Sexy
Fluttering Butterfly	5	Gloves	Flutter Storm: Dream Chant	1	83	28	23	165	22	680	9	19	Sexy
Fluttering Butterfly	5	Gloves	Flutter Storm: Dream Chant	2	103	35	28	205	27	2030	27	57	Sexy
Fluttering Butterfly	5	Gloves	Flutter Storm: Dream Chant	3	126	42	35	251	33	4060	54	114	Sexy
Fluttering Butterfly	5	Gloves	Flutter Storm: Dream Chant	4	152	51	42	304	40	6630	88	190	Sexy
Fluttering Butterfly	5	Gloves	Flutter Storm: Dream Chant	5	182	61	50	363	47	9670	129	282	Sexy
Cursed Storm	5	Hair	Flutter Storm: Flame Song	0	256	86	86	524	68	0	0	0	Sexy
Cursed Storm	5	Hair	Flutter Storm: Flame Song	1	320	108	108	655	0	2700	36	80	Sexy
Cursed Storm	5	Hair	Flutter Storm: Flame Song	2	397	134	134	813	106	8100	108	240	Sexy
Cursed Storm	5	Hair	Flutter Storm: Flame Song	3	487	164	164	996	130	16200	216	480	Sexy
Cursed Storm	5	Hair	Flutter Storm: Flame Song	4	589	198	198	1206	157	26460	353	800	Sexy
Cursed Storm	5	Hair	Flutter Storm: Flame Song	5	704	237	237	1441	187	38610	515	1184	Sexy
Etched by the Wind	5	Hair	Flutter Storm: Forest Song	0	256	86	86	524	68	0	0	0	Sexy
Etched by the Wind	5	Hair	Flutter Storm: Forest Song	1	320	108	108	655	0	2700	36	80	Sexy
Etched by the Wind	5	Hair	Flutter Storm: Forest Song	2	397	134	134	813	106	8100	108	240	Sexy
Etched by the Wind	5	Hair	Flutter Storm: Forest Song	3	487	164	164	996	130	16200	216	480	Sexy
Etched by the Wind	5	Hair	Flutter Storm: Forest Song	4	589	198	198	1206	157	26460	353	800	Sexy
Etched by the Wind	5	Hair	Flutter Storm: Forest Song	5	704	237	237	1441	187	38610	515	1184	Sexy
Windborne Realm	5	Hair	Flutter Storm: Dream Chant	0	256	86	86	524	68	0	0	0	Sexy
Windborne Realm	5	Hair	Flutter Storm: Dream Chant	1	320	108	108	655	0	2700	36	80	Sexy
Windborne Realm	5	Hair	Flutter Storm: Dream Chant	2	397	134	134	813	106	8100	108	240	Sexy
Windborne Realm	5	Hair	Flutter Storm: Dream Chant	3	487	164	164	996	130	16200	216	480	Sexy
Windborne Realm	5	Hair	Flutter Storm: Dream Chant	4	589	198	198	1206	157	26460	353	800	Sexy
Windborne Realm	5	Hair	Flutter Storm: Dream Chant	5	704	237	237	1441	187	38610	515	1184	Sexy
Beneath the Ashes	5	Headwear	Flutter Storm: Flame Song	0	66	0	15	139	18	0	0	0	Sexy
Beneath the Ashes	5	Headwear	Flutter Storm: Flame Song	1	83	22	19	174	23	680	9	19	Sexy
Beneath the Ashes	5	Headwear	Flutter Storm: Flame Song	2	103	27	24	216	28	2030	27	57	Sexy
Beneath the Ashes	5	Headwear	Flutter Storm: Flame Song	3	126	33	29	265	35	4060	54	114	Sexy
Beneath the Ashes	5	Headwear	Flutter Storm: Flame Song	4	152	40	35	320	42	6630	88	190	Sexy
Beneath the Ashes	5	Headwear	Flutter Storm: Flame Song	5	182	47	42	383	50	9670	129	282	Sexy
Lonely Branches	5	Headwear	Flutter Storm: Forest Song	0	66	0	15	139	18	0	0	0	Sexy
Lonely Branches	5	Headwear	Flutter Storm: Forest Song	1	83	22	19	174	23	680	9	19	Sexy
Lonely Branches	5	Headwear	Flutter Storm: Forest Song	2	103	27	24	216	28	2030	27	57	Sexy
Lonely Branches	5	Headwear	Flutter Storm: Forest Song	3	126	33	29	265	35	4060	54	114	Sexy
Lonely Branches	5	Headwear	Flutter Storm: Forest Song	4	152	40	35	320	42	6630	88	190	Sexy
Lonely Branches	5	Headwear	Flutter Storm: Forest Song	5	182	47	42	383	50	9670	129	282	Sexy
Dreams of the Past	5	Headwear	Flutter Storm: Dream Chant	0	66	0	15	139	18	0	0	0	Sexy
Dreams of the Past	5	Headwear	Flutter Storm: Dream Chant	1	83	22	19	174	23	680	9	19	Sexy
Dreams of the Past	5	Headwear	Flutter Storm: Dream Chant	2	103	27	24	216	28	2030	27	57	Sexy
Dreams of the Past	5	Headwear	Flutter Storm: Dream Chant	3	126	33	29	265	35	4060	54	114	Sexy
Dreams of the Past	5	Headwear	Flutter Storm: Dream Chant	4	152	40	35	320	42	6630	88	190	Sexy
Dreams of the Past	5	Headwear	Flutter Storm: Dream Chant	5	182	47	42	383	50	9670	129	282	Sexy
Amid the Storm	5	Neckwear	Flutter Storm: Flame Song	0	62	19	24	128	21	0	0	0	Sexy
Amid the Storm	5	Neckwear	Flutter Storm: Flame Song	1	78	24	30	160	27	680	9	19	Sexy
Amid the Storm	5	Neckwear	Flutter Storm: Flame Song	2	0	30	38	199	33	2030	27	57	Sexy
Amid the Storm	5	Neckwear	Flutter Storm: Flame Song	3	118	37	46	244	40	4060	54	114	Sexy
Amid the Storm	5	Neckwear	Flutter Storm: Flame Song	4	143	44	56	295	49	6630	88	190	Sexy
Amid the Storm	5	Neckwear	Flutter Storm: Flame Song	5	171	53	66	352	58	9670	129	282	Sexy
Shaded Green	5	Neckwear	Flutter Storm: Forest Song	0	62	19	24	128	21	0	0	0	Sexy
Shaded Green	5	Neckwear	Flutter Storm: Forest Song	1	78	24	30	160	27	680	9	19	Sexy
Shaded Green	5	Neckwear	Flutter Storm: Forest Song	2	0	30	38	199	33	2030	27	57	Sexy
Shaded Green	5	Neckwear	Flutter Storm: Forest Song	3	118	37	46	244	40	4060	54	114	Sexy
Shaded Green	5	Neckwear	Flutter Storm: Forest Song	4	143	44	56	295	49	6630	88	190	Sexy
Shaded Green	5	Neckwear	Flutter Storm: Forest Song	5	171	53	66	352	58	9670	129	282	Sexy
Dreams on Wings	5	Neckwear	Flutter Storm: Dream Chant	0	62	19	24	128	21	0	0	0	Sexy
Dreams on Wings	5	Neckwear	Flutter Storm: Dream Chant	1	78	24	30	160	27	680	9	19	Sexy
Dreams on Wings	5	Neckwear	Flutter Storm: Dream Chant	2	0	30	38	199	33	2030	27	57	Sexy
Dreams on Wings	5	Neckwear	Flutter Storm: Dream Chant	3	118	37	46	244	40	4060	54	114	Sexy
Dreams on Wings	5	Neckwear	Flutter Storm: Dream Chant	4	143	44	56	295	49	6630	88	190	Sexy
Dreams on Wings	5	Neckwear	Flutter Storm: Dream Chant	5	171	53	66	352	58	9670	129	282	Sexy
Butterfly Elegy	5	Earrings	Flutter Storm: Flame Song	0	72	14	19	135	15	0	0	0	Sexy
Butterfly Elegy	5	Earrings	Flutter Storm: Flame Song	1	90	18	24	169	19	680	9	19	Sexy
Butterfly Elegy	5	Earrings	Flutter Storm: Flame Song	2	0	22	30	210	24	2030	27	57	Sexy
Butterfly Elegy	5	Earrings	Flutter Storm: Flame Song	3	137	27	37	257	29	4060	54	114	Sexy
Butterfly Elegy	5	Earrings	Flutter Storm: Flame Song	4	166	33	44	311	35	6630	88	190	Sexy
Butterfly Elegy	5	Earrings	Flutter Storm: Flame Song	5	198	39	53	372	42	9670	129	282	Sexy
Isolated Melody	5	Earrings	Flutter Storm: Forest Song	0	72	14	19	135	15	0	0	0	Sexy
Isolated Melody	5	Earrings	Flutter Storm: Forest Song	1	90	18	24	169	19	680	9	19	Sexy
Isolated Melody	5	Earrings	Flutter Storm: Forest Song	2	0	22	30	210	24	2030	27	57	Sexy
Isolated Melody	5	Earrings	Flutter Storm: Forest Song	3	137	27	37	257	29	4060	54	114	Sexy
Isolated Melody	5	Earrings	Flutter Storm: Forest Song	4	166	33	44	311	35	6630	88	190	Sexy
Isolated Melody	5	Earrings	Flutter Storm: Forest Song	5	198	39	53	372	42	9670	129	282	Sexy
Butterfly's Dance	5	Earrings	Flutter Storm: Dream Chant	0	72	14	19	135	15	0	0	0	Sexy
Butterfly's Dance	5	Earrings	Flutter Storm: Dream Chant	1	90	18	24	169	19	680	9	19	Sexy
Butterfly's Dance	5	Earrings	Flutter Storm: Dream Chant	2	0	22	30	210	24	2030	27	57	Sexy
Butterfly's Dance	5	Earrings	Flutter Storm: Dream Chant	3	137	27	37	257	29	4060	54	114	Sexy
Butterfly's Dance	5	Earrings	Flutter Storm: Dream Chant	4	166	33	44	311	35	6630	88	190	Sexy
Butterfly's Dance	5	Earrings	Flutter Storm: Dream Chant	5	198	39	53	372	42	9670	129	282	Sexy
Fated Chains	5	Choker	Flutter Storm: Flame Song	0	67	24	13	131	20	0	0	0	Sexy
Fated Chains	5	Choker	Flutter Storm: Flame Song	1	84	30	0	164	25	680	9	19	Sexy
Fated Chains	5	Choker	Flutter Storm: Flame Song	2	104	38	21	204	31	2030	27	57	Sexy
Fated Chains	5	Choker	Flutter Storm: Flame Song	3	128	46	25	249	38	4060	54	114	Sexy
Fated Chains	5	Choker	Flutter Storm: Flame Song	4	155	56	30	302	46	6630	88	190	Sexy
Fated Chains	5	Choker	Flutter Storm: Flame Song	5	185	66	36	361	55	9670	129	282	Sexy
Green Slumber	5	Choker	Flutter Storm: Forest Song	0	67	24	13	131	20	0	0	0	Sexy
Green Slumber	5	Choker	Flutter Storm: Forest Song	1	84	30	0	164	25	680	9	19	Sexy
Green Slumber	5	Choker	Flutter Storm: Forest Song	2	104	38	21	204	31	2030	27	57	Sexy
Green Slumber	5	Choker	Flutter Storm: Forest Song	3	128	46	25	249	38	4060	54	114	Sexy
Green Slumber	5	Choker	Flutter Storm: Forest Song	4	155	56	30	302	46	6630	88	190	Sexy
Green Slumber	5	Choker	Flutter Storm: Forest Song	5	185	66	36	361	55	9670	129	282	Sexy
Endless Gaze	5	Choker	Flutter Storm: Dream Chant	0	67	24	13	131	20	0	0	0	Sexy
Endless Gaze	5	Choker	Flutter Storm: Dream Chant	1	84	30	0	164	25	680	9	19	Sexy
Endless Gaze	5	Choker	Flutter Storm: Dream Chant	2	104	38	21	204	31	2030	27	57	Sexy
Endless Gaze	5	Choker	Flutter Storm: Dream Chant	3	128	46	25	249	38	4060	54	114	Sexy
Endless Gaze	5	Choker	Flutter Storm: Dream Chant	4	155	56	30	302	46	6630	88	190	Sexy
Endless Gaze	5	Choker	Flutter Storm: Dream Chant	5	185	66	36	361	55	9670	129	282	Sexy
Land of Winds	5	Socks	Flutter Storm: Flame Song	0	88	21	18	182	31	0	0	0	Sexy
Land of Winds	5	Socks	Flutter Storm: Flame Song	1	110	27	23	228	39	900	12	19	Sexy
Land of Winds	5	Socks	Flutter Storm: Flame Song	2	137	33	28	283	49	2700	36	57	Sexy
Land of Winds	5	Socks	Flutter Storm: Flame Song	3	168	40	35	346	59	5400	72	114	Sexy
Land of Winds	5	Socks	Flutter Storm: Flame Song	4	203	49	42	419	72	8820	118	190	Sexy
Land of Winds	5	Socks	Flutter Storm: Flame Song	5	242	58	50	501	86	12870	172	282	Sexy
Dreamwalker's Forest	5	Socks	Flutter Storm: Forest Song	0	88	21	18	182	31	0	0	0	Sexy
Dreamwalker's Forest	5	Socks	Flutter Storm: Forest Song	1	110	27	23	228	39	900	12	19	Sexy
Dreamwalker's Forest	5	Socks	Flutter Storm: Forest Song	2	137	33	28	283	49	2700	36	57	Sexy
Dreamwalker's Forest	5	Socks	Flutter Storm: Forest Song	3	168	40	35	346	59	5400	72	114	Sexy
Dreamwalker's Forest	5	Socks	Flutter Storm: Forest Song	4	203	49	42	419	72	8820	118	190	Sexy
Dreamwalker's Forest	5	Socks	Flutter Storm: Forest Song	5	242	58	50	501	86	12870	172	282	Sexy
Enduring Ballad	5	Socks	Flutter Storm: Dream Chant	0	88	21	18	182	31	0	0	0	Sexy
Enduring Ballad	5	Socks	Flutter Storm: Dream Chant	1	110	27	23	228	39	900	12	19	Sexy
Enduring Ballad	5	Socks	Flutter Storm: Dream Chant	2	137	33	28	283	49	2700	36	57	Sexy
Enduring Ballad	5	Socks	Flutter Storm: Dream Chant	3	168	40	35	346	59	5400	72	114	Sexy
Enduring Ballad	5	Socks	Flutter Storm: Dream Chant	4	203	49	42	419	72	8820	118	190	Sexy
Enduring Ballad	5	Socks	Flutter Storm: Dream Chant	5	242	58	50	501	86	12870	172	282	Sexy
Starry Dream	4	Headwear	Flowing Colors: Dreamy	0	14	103	53	16	7	0	0	0	Fresh
Starry Dream	4	Headwear	Flowing Colors: Dreamy	1	18	129	67	20	22	410	5	12	Fresh
Starry Dream	4	Headwear	Flowing Colors: Dreamy	2	22	160	83	25	27	1220	16	36	Fresh
Starry Dream	4	Headwear	Flowing Colors: Dreamy	3	27	196	101	31	33	2440	32	72	Fresh
Starry Dream	4	Headwear	Flowing Colors: Dreamy	4	33	237	122	37	40	3980	53	120	Fresh
Starry Dream	4	Headwear	Flowing Colors: Dreamy	5	39	284	146	44	47	5800	77	177	Fresh
Painting the Past	4	Earrings	Flowing Colors: Dreamy	0	19	106	54	12	11	0	0	0	Fresh
Painting the Past	4	Earrings	Flowing Colors: Dreamy	1	24	133	68	15	14	410	5	12	Fresh
Painting the Past	4	Earrings	Flowing Colors: Dreamy	2	30	165	84	19	18	1220	16	36	Fresh
Painting the Past	4	Earrings	Flowing Colors: Dreamy	3	37	202	103	23	21	2440	32	72	Fresh
Painting the Past	4	Earrings	Flowing Colors: Dreamy	4	44	244	125	28	26	3980	53	120	Fresh
Painting the Past	4	Earrings	Flowing Colors: Dreamy	5	53	292	149	33	31	5800	77	177	Fresh
Solo of the Stars	4	Hair	Flowing Colors: Dreamy	0	73	425	224	45	44	0	0	0	Fresh
Solo of the Stars	4	Hair	Flowing Colors: Dreamy	1	92	532	280	57	55	1620	22	50	Fresh
Solo of the Stars	4	Hair	Flowing Colors: Dreamy	2	4	659	348	70	69	4860	65	150	Fresh
Solo of the Stars	4	Hair	Flowing Colors: Dreamy	3	139	808	426	86	84	9720	130	300	Fresh
Solo of the Stars	4	Hair	Flowing Colors: Dreamy	4	168	978	516	104	102	15880	212	500	Fresh
Solo of the Stars	4	Hair	Flowing Colors: Dreamy	5	201	1169	616	124	121	23170	309	740	Fresh
Passing Seasons	4	Top	Flowing Colors: Dreamy	0	43	346	167	55	64	0	0	0	Fresh
Passing Seasons	4	Top	Flowing Colors: Dreamy	1	54	433	209	69	80	1350	18	40	Fresh
Passing Seasons	4	Top	Flowing Colors: Dreamy	2	67	537	259	86	100	4050	54	120	Fresh
Passing Seasons	4	Top	Flowing Colors: Dreamy	3	82	658	318	105	122	8100	108	240	Fresh
Passing Seasons	4	Top	Flowing Colors: Dreamy	4	99	796	385	127	148	13230	176	400	Fresh
Passing Seasons	4	Top	Flowing Colors: Dreamy	5	19	952	460	152	176	19310	257	592	Fresh
Wandering Thoughts	4	Outerwear	Flowing Colors: Dreamy	0	33	174	88	22	22	0	0	0	Fresh
Wandering Thoughts	4	Outerwear	Flowing Colors: Dreamy	1	42	218	110	28	28	680	9	20	Fresh
Wandering Thoughts	4	Outerwear	Flowing Colors: Dreamy	2	52	270	137	35	35	2030	27	60	Fresh
Wandering Thoughts	4	Outerwear	Flowing Colors: Dreamy	3	63	331	168	42	42	4060	54	120	Fresh
Wandering Thoughts	4	Outerwear	Flowing Colors: Dreamy	4	76	401	203	51	51	6630	88	200	Fresh
Wandering Thoughts	4	Outerwear	Flowing Colors: Dreamy	5	91	479	242	61	61	9670	129	296	Fresh
Endless Tracking	4	Bottom	Flowing Colors: Dreamy	0	51	337	174	51	61	0	0	0	Fresh
Endless Tracking	4	Bottom	Flowing Colors: Dreamy	1	64	422	218	64	77	1350	18	40	Fresh
Endless Tracking	4	Bottom	Flowing Colors: Dreamy	2	80	523	270	80	95	4050	54	120	Fresh
Endless Tracking	4	Bottom	Flowing Colors: Dreamy	3	0	641	331	0	116	8100	108	240	Fresh
Endless Tracking	4	Bottom	Flowing Colors: Dreamy	4	118	776	401	118	141	13230	176	400	Fresh
Endless Tracking	4	Bottom	Flowing Colors: Dreamy	5	141	927	479	141	168	19310	257	592	Fresh
Paint-soaked Album	4	Socks	Flowing Colors: Dreamy	0	23	138	67	23	19	0	0	0	Fresh
Paint-soaked Album	4	Socks	Flowing Colors: Dreamy	1	29	173	84	29	24	540	7	12	Fresh
Paint-soaked Album	4	Socks	Flowing Colors: Dreamy	2	36	214	104	36	30	1620	21	36	Fresh
Paint-soaked Album	4	Socks	Flowing Colors: Dreamy	3	44	263	128	44	37	3240	43	72	Fresh
Paint-soaked Album	4	Socks	Flowing Colors: Dreamy	4	53	318	155	53	44	5290	70	120	Fresh
Paint-soaked Album	4	Socks	Flowing Colors: Dreamy	5	64	380	185	64	53	7720	102	177	Fresh
Time Stands Still	4	Shoes	Flowing Colors: Dreamy	0	23	206	102	35	38	0	0	0	Fresh
Time Stands Still	4	Shoes	Flowing Colors: Dreamy	1	29	258	128	44	48	810	11	30	Fresh
Time Stands Still	4	Shoes	Flowing Colors: Dreamy	2	36	320	159	55	59	2430	33	90	Fresh
Time Stands Still	4	Shoes	Flowing Colors: Dreamy	3	44	392	194	67	73	4860	65	180	Fresh
Time Stands Still	4	Shoes	Flowing Colors: Dreamy	4	53	474	235	81	88	7940	106	300	Fresh
Time Stands Still	4	Shoes	Flowing Colors: Dreamy	5	64	567	281	0	105	11590	155	445	Fresh
Starry Poetry	4	Backpiece	Flowing Colors: Dreamy	0	13	107	52	15	15	0	0	0	Fresh
Starry Poetry	4	Backpiece	Flowing Colors: Dreamy	1	0	134	65	19	19	410	5	12	Fresh
Starry Poetry	4	Backpiece	Flowing Colors: Dreamy	2	21	166	81	24	24	1220	16	36	Fresh
Starry Poetry	4	Backpiece	Flowing Colors: Dreamy	3	25	204	99	29	29	2440	32	72	Fresh
Starry Poetry	4	Backpiece	Flowing Colors: Dreamy	4	30	247	120	35	35	3980	53	120	Fresh
Starry Poetry	4	Backpiece	Flowing Colors: Dreamy	5	36	295	143	42	42	5800	77	177	Fresh
Moonlit Chords	5	Hair	Fairytale Swan: Dream	0	0	49	76	261	83	0	0	0	Sexy
Moonlit Chords	5	Hair	Fairytale Swan: Dream	1	689	62	95	327	104	2700	36	80	Elegant
Moonlit Chords	5	Hair	Fairytale Swan: Dream	2	855	76	118	405	129	8100	108	240	Elegant
Moonlit Chords	5	Hair	Fairytale Swan: Dream	3	1047	94	145	496	158	16200	216	480	Elegant
Moonlit Chords	5	Hair	Fairytale Swan: Dream	4	1268	113	175	601	191	26460	353	800	Elegant
Moonlit Chords	5	Hair	Fairytale Swan: Dream	5	1516	135	209	718	229	38610	515	1184	Elegant
Flame's Embers	5	Hair	Fairytale Swan: Mystfire	0	0	49	76	261	83	0	0	0	Sexy
Flame's Embers	5	Hair	Fairytale Swan: Mystfire	1	689	62	95	327	104	2700	36	80	Elegant
Flame's Embers	5	Hair	Fairytale Swan: Mystfire	2	855	76	118	405	129	8100	108	240	Elegant
Flame's Embers	5	Hair	Fairytale Swan: Mystfire	3	1047	94	145	496	158	16200	216	480	Elegant
Flame's Embers	5	Hair	Fairytale Swan: Mystfire	4	1268	113	175	601	191	26460	353	800	Elegant
Flame's Embers	5	Hair	Fairytale Swan: Mystfire	5	1516	135	209	718	229	38610	515	1184	Elegant
Moonlit Glide	5	Hair	Fairytale Swan: Truth	0	0	49	76	261	83	0	0	0	Sexy
Moonlit Glide	5	Hair	Fairytale Swan: Truth	1	689	62	95	327	104	2700	36	80	Elegant
Moonlit Glide	5	Hair	Fairytale Swan: Truth	2	855	76	118	405	129	8100	108	240	Elegant
Moonlit Glide	5	Hair	Fairytale Swan: Truth	3	1047	94	145	496	158	16200	216	480	Elegant
Moonlit Glide	5	Hair	Fairytale Swan: Truth	4	1268	113	175	601	191	26460	353	800	Elegant
Moonlit Glide	5	Hair	Fairytale Swan: Truth	5	1516	135	209	718	229	38610	515	1184	Elegant
Lake of Tears	5	Dress	Fairytale Swan: Dream	0	915	86	146	452	101	0	0	0	Elegant
Lake of Tears	5	Dress	Fairytale Swan: Dream	1	1144	108	183	565	127	4500	60	128	Elegant
Lake of Tears	5	Dress	Fairytale Swan: Dream	2	1419	134	227	701	157	13500	180	384	Elegant
Lake of Tears	5	Dress	Fairytale Swan: Dream	3	1739	164	278	859	192	27000	360	768	Elegant
Lake of Tears	5	Dress	Fairytale Swan: Dream	4	2105	198	336	1040	233	44100	588	1280	Elegant
Lake of Tears	5	Dress	Fairytale Swan: Dream	5	2517	237	402	1243	278	64350	858	1894	Elegant
Swan's Heartfire	5	Dress	Fairytale Swan: Mystfire	0	915	86	146	452	101	0	0	0	Elegant
Swan's Heartfire	5	Dress	Fairytale Swan: Mystfire	1	1144	108	183	565	127	4500	60	128	Elegant
Swan's Heartfire	5	Dress	Fairytale Swan: Mystfire	2	1419	134	227	701	157	13500	180	384	Elegant
Swan's Heartfire	5	Dress	Fairytale Swan: Mystfire	3	1739	164	278	859	192	27000	360	768	Elegant
Swan's Heartfire	5	Dress	Fairytale Swan: Mystfire	4	2105	198	336	1040	233	44100	588	1280	Elegant
Swan's Heartfire	5	Dress	Fairytale Swan: Mystfire	5	2517	237	402	1243	278	64350	858	1894	Elegant
Beyond the Stars	5	Dress	Fairytale Swan: Truth	0	915	86	146	452	101	0	0	0	Elegant
Beyond the Stars	5	Dress	Fairytale Swan: Truth	1	1144	108	183	565	127	4500	60	128	Elegant
Beyond the Stars	5	Dress	Fairytale Swan: Truth	2	1419	134	227	701	157	13500	180	384	Elegant
Beyond the Stars	5	Dress	Fairytale Swan: Truth	3	1739	164	278	859	192	27000	360	768	Elegant
Beyond the Stars	5	Dress	Fairytale Swan: Truth	4	2105	198	336	1040	233	44100	588	1280	Elegant
Beyond the Stars	5	Dress	Fairytale Swan: Truth	5	2517	237	402	1243	278	64350	858	1894	Elegant
Feathered Waltz	5	Shoes	Fairytale Swan: Dream	0	276	29	37	141	27	0	0	0	Elegant
Feathered Waltz	5	Shoes	Fairytale Swan: Dream	1	345	37	47	0	34	1350	18	48	Elegant
Feathered Waltz	5	Shoes	Fairytale Swan: Dream	2	428	45	58	219	42	4050	54	144	Elegant
Feathered Waltz	5	Shoes	Fairytale Swan: Dream	3	525	56	71	268	52	8100	108	289	Elegant
Feathered Waltz	5	Shoes	Fairytale Swan: Dream	4	635	67	86	325	63	13230	176	481	Elegant
Feathered Waltz	5	Shoes	Fairytale Swan: Dream	5	759	80	102	388	0	19310	257	711	Elegant
Omen of Revival	5	Shoes	Fairytale Swan: Mystfire	0	276	29	37	141	27	0	0	0	Elegant
Omen of Revival	5	Shoes	Fairytale Swan: Mystfire	1	345	37	47	0	34	1350	18	48	Elegant
Omen of Revival	5	Shoes	Fairytale Swan: Mystfire	2	428	45	58	219	42	4050	54	144	Elegant
Omen of Revival	5	Shoes	Fairytale Swan: Mystfire	3	525	56	71	268	52	8100	108	289	Elegant
Omen of Revival	5	Shoes	Fairytale Swan: Mystfire	4	635	67	86	325	63	13230	176	481	Elegant
Omen of Revival	5	Shoes	Fairytale Swan: Mystfire	5	759	80	102	388	0	19310	257	711	Elegant
Voyage of Stars	5	Shoes	Fairytale Swan: Truth	0	276	29	37	141	27	0	0	0	Elegant
Voyage of Stars	5	Shoes	Fairytale Swan: Truth	1	345	37	47	0	34	1350	18	48	Elegant
Voyage of Stars	5	Shoes	Fairytale Swan: Truth	2	428	45	58	219	42	4050	54	144	Elegant
Voyage of Stars	5	Shoes	Fairytale Swan: Truth	3	525	56	71	268	52	8100	108	289	Elegant
Voyage of Stars	5	Shoes	Fairytale Swan: Truth	4	635	67	86	325	63	13230	176	481	Elegant
Voyage of Stars	5	Shoes	Fairytale Swan: Truth	5	759	80	102	388	0	19310	257	711	Elegant
Harmonic Wings	5	Gloves	Fairytale Swan: Dream	0	128	21	21	61	24	0	0	0	Elegant
Harmonic Wings	5	Gloves	Fairytale Swan: Dream	1	160	27	27	77	30	680	9	19	Elegant
Harmonic Wings	5	Gloves	Fairytale Swan: Dream	2	199	33	33	95	38	2030	27	57	Elegant
Harmonic Wings	5	Gloves	Fairytale Swan: Dream	3	244	40	40	116	46	4060	54	114	Elegant
Harmonic Wings	5	Gloves	Fairytale Swan: Dream	4	295	49	49	141	56	6630	88	190	Elegant
Harmonic Wings	5	Gloves	Fairytale Swan: Dream	5	352	58	58	168	66	9670	129	282	Elegant
Trial of Wings	5	Gloves	Fairytale Swan: Mystfire	0	128	21	21	61	24	0	0	0	Elegant
Trial of Wings	5	Gloves	Fairytale Swan: Mystfire	1	160	27	27	77	30	680	9	19	Elegant
Trial of Wings	5	Gloves	Fairytale Swan: Mystfire	2	199	33	33	95	38	2030	27	57	Elegant
Trial of Wings	5	Gloves	Fairytale Swan: Mystfire	3	244	40	40	116	46	4060	54	114	Elegant
Trial of Wings	5	Gloves	Fairytale Swan: Mystfire	4	295	49	49	141	56	6630	88	190	Elegant
Trial of Wings	5	Gloves	Fairytale Swan: Mystfire	5	352	58	58	168	66	9670	129	282	Elegant
Glimmer of Hope	5	Gloves	Fairytale Swan: Truth	0	128	21	21	61	24	0	0	0	Elegant
Glimmer of Hope	5	Gloves	Fairytale Swan: Truth	1	160	27	27	77	30	680	9	19	Elegant
Glimmer of Hope	5	Gloves	Fairytale Swan: Truth	2	199	33	33	95	38	2030	27	57	Elegant
Glimmer of Hope	5	Gloves	Fairytale Swan: Truth	3	244	40	40	116	46	4060	54	114	Elegant
Glimmer of Hope	5	Gloves	Fairytale Swan: Truth	4	295	49	49	141	56	6630	88	190	Elegant
Glimmer of Hope	5	Gloves	Fairytale Swan: Truth	5	352	58	58	168	66	9670	129	282	Elegant
Feather's Whisper	5	Earrings	Fairytale Swan: Dream	0	133	16	18	67	21	0	0	0	Elegant
Feather's Whisper	5	Earrings	Fairytale Swan: Dream	1	167	20	23	84	27	680	9	19	Elegant
Feather's Whisper	5	Earrings	Fairytale Swan: Dream	2	207	25	28	104	33	2030	27	57	Elegant
Feather's Whisper	5	Earrings	Fairytale Swan: Dream	3	253	31	35	128	40	4060	54	114	Elegant
Feather's Whisper	5	Earrings	Fairytale Swan: Dream	4	306	37	42	155	49	6630	88	190	Elegant
Feather's Whisper	5	Earrings	Fairytale Swan: Dream	5	366	44	50	185	58	9670	129	282	Elegant
Nest of Dreams and Sleep	5	Earrings	Fairytale Swan: Mystfire	0	133	16	18	67	21	0	0	0	Elegant
Nest of Dreams and Sleep	5	Earrings	Fairytale Swan: Mystfire	1	167	20	23	84	27	680	9	19	Elegant
Nest of Dreams and Sleep	5	Earrings	Fairytale Swan: Mystfire	2	207	25	28	104	33	2030	27	57	Elegant
Nest of Dreams and Sleep	5	Earrings	Fairytale Swan: Mystfire	3	253	31	35	128	40	4060	54	114	Elegant
Nest of Dreams and Sleep	5	Earrings	Fairytale Swan: Mystfire	4	306	37	42	155	49	6630	88	190	Elegant
Nest of Dreams and Sleep	5	Earrings	Fairytale Swan: Mystfire	5	366	44	50	185	58	9670	129	282	Elegant
Sigh of Ether	5	Earrings	Fairytale Swan: Truth	0	133	16	18	67	21	0	0	0	Elegant
Sigh of Ether	5	Earrings	Fairytale Swan: Truth	1	167	20	23	84	27	680	9	19	Elegant
Sigh of Ether	5	Earrings	Fairytale Swan: Truth	2	207	25	28	104	33	2030	27	57	Elegant
Sigh of Ether	5	Earrings	Fairytale Swan: Truth	3	253	31	35	128	40	4060	54	114	Elegant
Sigh of Ether	5	Earrings	Fairytale Swan: Truth	4	306	37	42	155	49	6630	88	190	Elegant
Sigh of Ether	5	Earrings	Fairytale Swan: Truth	5	366	44	50	185	58	9670	129	282	Elegant
Starry Night	5	Headwear	Fairytale Swan: Dream	0	131	24	23	62	15	0	0	0	Elegant
Starry Night	5	Headwear	Fairytale Swan: Dream	1	164	30	29	78	19	680	9	19	Elegant
Starry Night	5	Headwear	Fairytale Swan: Dream	2	204	38	36	0	24	2030	27	57	Elegant
Starry Night	5	Headwear	Fairytale Swan: Dream	3	249	46	44	118	29	4060	54	114	Elegant
Starry Night	5	Headwear	Fairytale Swan: Dream	4	302	56	53	143	35	6630	88	190	Elegant
Starry Night	5	Headwear	Fairytale Swan: Dream	5	361	66	64	171	42	9670	129	282	Elegant
Forged in Flames	5	Headwear	Fairytale Swan: Mystfire	0	131	24	23	62	15	0	0	0	Elegant
Forged in Flames	5	Headwear	Fairytale Swan: Mystfire	1	164	30	29	78	19	680	9	19	Elegant
Forged in Flames	5	Headwear	Fairytale Swan: Mystfire	2	204	38	36	0	24	2030	27	57	Elegant
Forged in Flames	5	Headwear	Fairytale Swan: Mystfire	3	249	46	44	118	29	4060	54	114	Elegant
Forged in Flames	5	Headwear	Fairytale Swan: Mystfire	4	302	56	53	143	35	6630	88	190	Elegant
Forged in Flames	5	Headwear	Fairytale Swan: Mystfire	5	361	66	64	171	42	9670	129	282	Elegant
Covenant of Swans	5	Headwear	Fairytale Swan: Truth	0	131	24	23	62	15	0	0	0	Elegant
Covenant of Swans	5	Headwear	Fairytale Swan: Truth	1	164	30	29	78	19	680	9	19	Elegant
Covenant of Swans	5	Headwear	Fairytale Swan: Truth	2	204	38	36	0	24	2030	27	57	Elegant
Covenant of Swans	5	Headwear	Fairytale Swan: Truth	3	249	46	44	118	29	4060	54	114	Elegant
Covenant of Swans	5	Headwear	Fairytale Swan: Truth	4	302	56	53	143	35	6630	88	190	Elegant
Covenant of Swans	5	Headwear	Fairytale Swan: Truth	5	361	66	64	171	42	9670	129	282	Elegant
Lingering Dreams	5	Ring	Fairytale Swan: Dream	0	133	15	24	64	20	0	0	0	Elegant
Lingering Dreams	5	Ring	Fairytale Swan: Dream	1	167	19	30	80	25	680	9	19	Elegant
Lingering Dreams	5	Ring	Fairytale Swan: Dream	2	207	24	38	100	31	2030	27	57	Elegant
Lingering Dreams	5	Ring	Fairytale Swan: Dream	3	253	29	46	122	38	4060	54	114	Elegant
Lingering Dreams	5	Ring	Fairytale Swan: Dream	4	306	35	56	148	46	6630	88	190	Elegant
Lingering Dreams	5	Ring	Fairytale Swan: Dream	5	366	42	66	176	55	9670	129	282	Elegant
Burnt to Ashes	5	Ring	Fairytale Swan: Mystfire	0	133	15	24	64	20	0	0	0	Elegant
Burnt to Ashes	5	Ring	Fairytale Swan: Mystfire	1	167	19	30	80	25	680	9	19	Elegant
Burnt to Ashes	5	Ring	Fairytale Swan: Mystfire	2	207	24	38	100	31	2030	27	57	Elegant
Burnt to Ashes	5	Ring	Fairytale Swan: Mystfire	3	253	29	46	122	38	4060	54	114	Elegant
Burnt to Ashes	5	Ring	Fairytale Swan: Mystfire	4	306	35	56	148	46	6630	88	190	Elegant
Burnt to Ashes	5	Ring	Fairytale Swan: Mystfire	5	366	42	66	176	55	9670	129	282	Elegant
Path of Stars	5	Ring	Fairytale Swan: Truth	0	133	15	24	64	20	0	0	0	Elegant
Path of Stars	5	Ring	Fairytale Swan: Truth	1	167	19	30	80	25	680	9	19	Elegant
Path of Stars	5	Ring	Fairytale Swan: Truth	2	207	24	38	100	31	2030	27	57	Elegant
Path of Stars	5	Ring	Fairytale Swan: Truth	3	253	29	46	122	38	4060	54	114	Elegant
Path of Stars	5	Ring	Fairytale Swan: Truth	4	306	35	56	148	46	6630	88	190	Elegant
Path of Stars	5	Ring	Fairytale Swan: Truth	5	366	42	66	176	55	9670	129	282	Elegant
Shadow Pacing	5	Socks	Fairytale Swan: Dream	0	186	22	22	87	23	0	0	0	Elegant
Shadow Pacing	5	Socks	Fairytale Swan: Dream	1	233	28	28	109	29	900	12	19	Elegant
Shadow Pacing	5	Socks	Fairytale Swan: Dream	2	289	35	35	135	36	2700	36	57	Elegant
Shadow Pacing	5	Socks	Fairytale Swan: Dream	3	354	42	42	166	44	5400	72	114	Elegant
Shadow Pacing	5	Socks	Fairytale Swan: Dream	4	428	51	51	201	53	8820	118	190	Elegant
Shadow Pacing	5	Socks	Fairytale Swan: Dream	5	512	61	61	240	64	12870	172	282	Elegant
Through the Flames	5	Socks	Fairytale Swan: Mystfire	0	186	22	22	87	23	0	0	0	Elegant
Through the Flames	5	Socks	Fairytale Swan: Mystfire	1	233	28	28	109	29	900	12	19	Elegant
Through the Flames	5	Socks	Fairytale Swan: Mystfire	2	289	35	35	135	36	2700	36	57	Elegant
Through the Flames	5	Socks	Fairytale Swan: Mystfire	3	354	42	42	166	44	5400	72	114	Elegant
Through the Flames	5	Socks	Fairytale Swan: Mystfire	4	428	51	51	201	53	8820	118	190	Elegant
Through the Flames	5	Socks	Fairytale Swan: Mystfire	5	512	61	61	240	64	12870	172	282	Elegant
Plumes of Aurora	5	Socks	Fairytale Swan: Truth	0	186	22	22	87	23	0	0	0	Elegant
Plumes of Aurora	5	Socks	Fairytale Swan: Truth	1	233	28	28	109	29	900	12	19	Elegant
Plumes of Aurora	5	Socks	Fairytale Swan: Truth	2	289	35	35	135	36	2700	36	57	Elegant
Plumes of Aurora	5	Socks	Fairytale Swan: Truth	3	354	42	42	166	44	5400	72	114	Elegant
Plumes of Aurora	5	Socks	Fairytale Swan: Truth	4	428	51	51	201	53	8820	118	190	Elegant
Plumes of Aurora	5	Socks	Fairytale Swan: Truth	5	512	61	61	240	64	12870	172	282	Elegant
Scattered Plume	5	Choker	Fairytale Swan: Dream	0	138	14	18	65	20	0	0	0	Elegant
Scattered Plume	5	Choker	Fairytale Swan: Dream	1	173	18	23	82	25	680	9	19	Elegant
Scattered Plume	5	Choker	Fairytale Swan: Dream	2	214	22	28	101	31	2030	27	57	Elegant
Scattered Plume	5	Choker	Fairytale Swan: Dream	3	263	27	35	124	38	4060	54	114	Elegant
Scattered Plume	5	Choker	Fairytale Swan: Dream	4	318	33	42	150	46	6630	88	190	Elegant
Scattered Plume	5	Choker	Fairytale Swan: Dream	5	380	39	50	179	55	9670	129	282	Elegant
Feathers of Passion	5	Choker	Fairytale Swan: Mystfire	0	138	14	18	65	20	0	0	0	Elegant
Feathers of Passion	5	Choker	Fairytale Swan: Mystfire	1	173	18	23	82	25	680	9	19	Elegant
Feathers of Passion	5	Choker	Fairytale Swan: Mystfire	2	214	22	28	101	31	2030	27	57	Elegant
Feathers of Passion	5	Choker	Fairytale Swan: Mystfire	3	263	27	35	124	38	4060	54	114	Elegant
Feathers of Passion	5	Choker	Fairytale Swan: Mystfire	4	318	33	42	150	46	6630	88	190	Elegant
Feathers of Passion	5	Choker	Fairytale Swan: Mystfire	5	380	39	50	179	55	9670	129	282	Elegant
Tail of Comet	5	Choker	Fairytale Swan: Truth	0	138	14	18	65	20	0	0	0	Elegant
Tail of Comet	5	Choker	Fairytale Swan: Truth	1	173	18	23	82	25	680	9	19	Elegant
Tail of Comet	5	Choker	Fairytale Swan: Truth	2	214	22	28	101	31	2030	27	57	Elegant
Tail of Comet	5	Choker	Fairytale Swan: Truth	3	263	27	35	124	38	4060	54	114	Elegant
Tail of Comet	5	Choker	Fairytale Swan: Truth	4	318	33	42	150	46	6630	88	190	Elegant
Tail of Comet	5	Choker	Fairytale Swan: Truth	5	380	39	50	179	55	9670	129	282	Elegant
\.


--
-- Name: item_details item_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_details
    ADD CONSTRAINT item_details_pkey PRIMARY KEY ("Name");


--
-- Name: level_details level_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_details
    ADD CONSTRAINT level_details_pkey PRIMARY KEY ("Name", "Level");


--
-- Name: level_details level_details_Name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.level_details
    ADD CONSTRAINT "level_details_Name_fkey" FOREIGN KEY ("Name") REFERENCES public.item_details("Name");


--
-- PostgreSQL database dump complete
--

