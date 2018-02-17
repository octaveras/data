DELETE FROM words;
DELETE FROM users;

DROP TABLE IF EXISTS words;

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id                  varchar(255) NOT NULL,
    name                varchar(50) NOT NULL,
    dow                 INT unsigned NOT NULL, -- 0 = monday, 6 = sunday
    is_active           boolean NOT NULL,
    alarm_time          TIME NOT NULL,
    notification_time   TIME NOT NULL,
    should_notify       boolean NOT NULL,
    creation_date       TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY         (id)
);

CREATE TABLE words
(
    id              INT unsigned NOT NULL AUTO_INCREMENT,
    user_id         VARCHAR(255) NOT NULL,
    word            VARCHAR(50) NOT NULL,
    creation_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY     (id),
    FOREIGN KEY     (user_id) REFERENCES users(id)
);
