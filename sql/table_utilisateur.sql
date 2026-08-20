CREATE TABLE utilisateur (
    id BIGSERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

contact@fdl.mg
Fdl@Admin2026#Secure

INSERT INTO u_utilisateur( nom, email, password) VALUES
( 'Administrateur FDL', 'contact@fdl.mg', '$2a$10$orLVd2zY4vVLdlmIEnatWOEcJ6uY0n6NtFPzMuFUq.2JuwesUPL4C');

DB_HOST=dpg-d9u12u3ncjis73a94tu0-a
DB_PORT=5432
DB_NAME=fdl_db_4t9q
DB_USER=fdl_db_4t9q_user

postgresql://fdl_db_4t9q_user:2FM41sqjQxiO8TDNSmbFfFtKb3oJd1PL@dpg-d9u12u3ncjis73a94tu0-a.oregon-postgres.render.com/fdl_db_4t9q

2FM41sqjQxiO8TDNSmbFfFtKb3oJd1PL

-18.97555895785152, 47.533187226549835