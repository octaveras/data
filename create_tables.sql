DELETE FROM words;
DELETE FROM outlooks;
DELETE FROM users;

DROP TABLE IF EXISTS words;

DROP TABLE IF EXISTS outlooks;

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id                  varchar(255) NOT NULL,
    name                varchar(50) NOT NULL,
    dow                 INT unsigned, -- 0 = monday, 6 = sunday
    should_inspire      boolean,
    creation_date       TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY         (id)
);

CREATE TABLE words
(
    id              INT unsigned NOT NULL AUTO_INCREMENT,
    user_id         VARCHAR(255) NOT NULL,
    word            VARCHAR(50) NOT NULL,
    creation_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                              ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY     (id),
    FOREIGN KEY     (user_id) REFERENCES users(id)
);

CREATE TABLE outlooks
(
    id              INT unsigned NOT NULL AUTO_INCREMENT,
    user_id         VARCHAR(255) NOT NULL,
    outlook         VARCHAR(999) NOT NULL,
    creation_date   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_updated    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
                              ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY     (id),
    FOREIGN KEY     (user_id) REFERENCES users(id)
);
