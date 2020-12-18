create table if not exists playlist(
    id bigint auto_increment PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    created_on DATE default CURRENT_TIMESTAMP
);

create table if not exists song(
    id bigint auto_increment PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    artist VARCHAR(250) NOT NULL,
    playlist_id bigint NOT NULL,
    cover_url VARCHAR(250) NOT NULL,
    created_on DATE default CURRENT_TIMESTAMP,
    FOREIGN KEY(playlist_id) REFERENCES playlist(id) ON UPDATE CASCADE
);

insert into playlist(
    id,
    name,
    created_on
) values(
    1,
    'My Jazz Faves',
    CURRENT_TIMESTAMP
);

insert into playlist(
    id,
    name,
    created_on
) values(
    2,
    'Rock Anthems',
    CURRENT_TIMESTAMP
);

insert into song(
    id,
    name,
    artist,
    playlist_id,
    cover_url,
    created_on
) values(
    1,
    'So What',
    'Miles Davis',
    1,
    'https://images-na.ssl-images-amazon.com/images/I/8169C1-UkyL._AC_SL1500_.jpg',
    CURRENT_TIMESTAMP
);

insert into song(
    id,
    name,
    artist,
    playlist_id,
    cover_url,
    created_on
) values(
    2,
    'Naima, Pt 2',
    'John Coltrane',
    1,
    'https://direct.rhapsody.com/imageserver/images/alb.313452845/600x600.jpg',
    CURRENT_TIMESTAMP
);

insert into song(
    id,
    name,
    artist,
    playlist_id,
    cover_url,
    created_on
) values(
    3,
    'Thunderstruck',
    'ACDC',
    2,
    'https://i1.sndcdn.com/artworks-000129437053-bgvku6-t500x500.jpg',
    CURRENT_TIMESTAMP
);

insert into song(
    id,
    name,
    artist,
    playlist_id,
    cover_url,
    created_on
) values(
    4,
    'All The Small Things',
    'Blink-182',
    2,
    'https://upload.wikimedia.org/wikipedia/en/2/29/Blink-182_-_All_the_Small_Things_cover.jpg',
    CURRENT_TIMESTAMP
);