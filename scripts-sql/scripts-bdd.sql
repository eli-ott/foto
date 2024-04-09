CREATE DATABASE Foto;
USE Foto;

CREATE TABLE `user` (
    id_user INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pseudo varchar(30) NOT NULL,
    nom varchar(50) NOT NULL,
    prenom varchar(50) NOT NULL,
    email varchar(100) NOT NULL,
    age INT NOT NULL,
    type_photo_pref varchar(50) NOT NULL,
    date_creation DATETIME NOT NULL,
    warn BOOLEAN NOT NULL
);

CREATE TABLE `photo` (
    id_photo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_user INT NOT NULL,
    titre varchar(50) NOT NULL,
    date_prise_vue DATETIME NOT NULL,
    source BLOB NOT NULL,
    date_publication DATETIME NOT NULL,
    warn BOOLEAN NOT NULL,
    CONSTRAINT id_user_FK FOREIGN KEY (id_user) REFERENCES user(id_user)
);

CREATE TABLE `envoyer` (
    id_envoyeur INT NOT NULL,
    id_receveur INT NOT NULL,
    `message` text NOT NULL,
    CONSTRAINT id_envoyeur_FK FOREIGN KEY (id_envoyeur) REFERENCES user(id_user),
    CONSTRAINT id_receveur_FK FOREIGN KEY (id_receveur) REFERENCES user(id_user)
);