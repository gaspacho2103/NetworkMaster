CREATE DATABASE netmasterdb;
USE netmasterdb;

SET SQL_SAFE_UPDATES = 0;

CREATE TABLE `users` (
	ip BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    password VARCHAR(64),
    enableStatus VARCHAR(3),
    image VARCHAR(24),
    
    connection BIGINT,
    
    prava VARCHAR(12)
);

CREATE TABLE `switches` (
	ip BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    enableStatus VARCHAR(3),
    image VARCHAR(24),
    
    lanPort BIGINT, wanPort BIGINT
    
);

CREATE TABLE `routers` (
	ip BIGINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    enableStatus VARCHAR(3),
    image VARCHAR(24),
    
    port1 BIGINT, port2 BIGINT
);

CREATE TABLE `journal` (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	user BIGINT,
    
    description VARCHAR(256),
    
    time DATETIME
);

ALTER TABLE `users`
ADD FOREIGN KEY(connection) REFERENCES `switches`(ip) ON DELETE SET NULL;

ALTER TABLE `switches`
ADD FOREIGN KEY(lanPort) REFERENCES `switches`(ip) ON DELETE SET NULL,
ADD FOREIGN KEY(wanPort) REFERENCES `routers`(ip) ON DELETE SET NULL;

ALTER TABLE `routers`
ADD FOREIGN KEY(port1) REFERENCES `switches`(ip) ON DELETE SET NULL,
ADD FOREIGN KEY(port2) REFERENCES `switches`(ip) ON DELETE SET NULL;

ALTER TABLE `journal`
ADD FOREIGN KEY(user) REFERENCES `users`(ip) ON DELETE SET NULL;

INSERT INTO `users` (ip, password, enableStatus, image, prava) VALUE 
(INET_ATON('192.168.0.1'), '123qwerty', 'on', 'computer', 'admin');

INSERT INTO `switches` (ip, enableStatus, image) VALUES
(INET_ATON('192.168.0.2'), 'on', 'switch');

INSERT INTO `routers` (ip, enableStatus, image) VALUES
(INET_ATON('192.168.0.3'), 'on', 'router');

INSERT INTO `journal` (user, description, time) VALUES
(INET_ATON('192.168.0.1'), 'был создан', '2024-10-25 19:16:12');