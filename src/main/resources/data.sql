create table if not exists playlist(
    id bigint auto_increment PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    created_on DATE default CURRENT_TIMESTAMP
);

create table if not exists song(
    id bigint auto_increment PRIMARY KEY,
    playlist_id bigint NOT NULL,
    name VARCHAR(250) NOT NULL,
    cover_url VARCHAR(250) NOT NULL,
    created_on DATE default CURRENT_TIMESTAMP,
    FOREIGN KEY(playlist_id) REFERENCES playlist(id) ON UPDATE CASCADE
);