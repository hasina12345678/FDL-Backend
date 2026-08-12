
CREATE TABLE r_region (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    code VARCHAR(20)
);

CREATE TABLE r_district (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(20),
    region_id BIGINT NOT NULL,

    CONSTRAINT fk_district_region FOREIGN KEY(region_id) REFERENCES region(id) ON DELETE RESTRICT,
    CONSTRAINT uq_district UNIQUE(name, region_id)
);

CREATE TABLE r_commune (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    district_id BIGINT NOT NULL,

    CONSTRAINT fk_commune_district FOREIGN KEY(district_id) REFERENCES district(id) ON DELETE RESTRICT,
    CONSTRAINT uq_commune UNIQUE(name, district_id)
);

CREATE TABLE r_categorie (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Education
-- Santé
-- Eau potable
-- Route
-- Pont
-- Marché
-- Agriculture
-- Assainissement
-- Administration

CREATE TABLE r_programme (
    id BIGSERIAL PRIMARY KEY,
    code VARCHAR(30) UNIQUE,
    name VARCHAR(150) NOT NULL,
    description TEXT
);

CREATE TABLE r_source_financement (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL UNIQUE,
    description TEXT
);

CREATE TABLE r_realisation (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    summary TEXT,
    description TEXT,
    commune_id BIGINT NOT NULL,
    categorie_id BIGINT,
    programme_id BIGINT,
    source_financement_id BIGINT,
    annee INTEGER,
    date_realisation DATE,
    montant NUMERIC(18,2),
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    photo VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_realisation_commune FOREIGN KEY(commune_id) REFERENCES commune(id),
    CONSTRAINT fk_realisation_categorie FOREIGN KEY(categorie_id) REFERENCES categorie(id),
    CONSTRAINT fk_realisation_programme FOREIGN KEY(programme_id) REFERENCES programme(id),
    CONSTRAINT fk_realisation_source_financement FOREIGN KEY(source_financement_id) REFERENCES source_financement(id)
);