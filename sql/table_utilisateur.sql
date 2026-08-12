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

"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjb250YWN0QGZkbC5tZyIsImlhdCI6MTc4NjAwNDgxNCwiZXhwIjoxNzg2MDkxMjE0fQ.S6wAgopCfZyRxQ-sZ_zPLWQRS5nS1DhmJ71fZsnu13Q"

"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjb250YWN0QGZkbC5tZyIsImlhdCI6MTc4NjAwNTI4MCwiZXhwIjoxNzg2MDkxNjgwfQ.T-1nBM0BXcKbnuiHLSfIypjBhlyIn27rVAmrSPmsE9o"