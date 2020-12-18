create table if not exists playlist(
    id bigint auto_increment PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    created_on DATE default CURRENT_TIMESTAMP
);

create table if not exists song(
    id bigint auto_increment PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
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
    'My Jazz Playlist',
    CURRENT_TIMESTAMP
);

insert into song(
    id,
    name,
    playlist_id,
    cover_url,
    created_on
) values(
    1,
    'Jazz Song 1',
    1,
    'https://cdn.kqed.org/wp-content/uploads/sites/23/2014/04/jazz.jpg',
    CURRENT_TIMESTAMP
);

insert into song(
    id,
    name,
    playlist_id,
    cover_url,
    created_on
) values(
    2,
    'Jazz Song 2',
    1,
    'https://cdn.kqed.org/wp-content/uploads/sites/23/2014/04/jazz.jpg',
    CURRENT_TIMESTAMP
);