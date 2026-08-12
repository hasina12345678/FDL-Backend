
CREATE TABLE auteur (
    id BIGSERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100),
    fonction VARCHAR(150),
    email VARCHAR(150)
);

CREATE TABLE actualite (
    id BIGSERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    summary TEXT,
    location VARCHAR(255),
    cover VARCHAR(255),
    id_auteur BIGINT NOT NULL,
    published_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_actualite FOREIGN KEY (id_auteur) REFERENCES auteur(id) ON DELETE CASCADE
);

CREATE TABLE categorie (
    id BIGSERIAL PRIMARY KEY,
    categorie VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE actualite_categorie (
    id BIGSERIAL PRIMARY KEY,
    id_actualite BIGINT NOT NULL,
    id_categorie BIGINT NOT NULL,

    CONSTRAINT fk_actualite FOREIGN KEY (id_actualite) REFERENCES actualite(id) ON DELETE CASCADE,
    CONSTRAINT fk_categorie FOREIGN KEY (id_categorie) REFERENCES categorie(id) ON DELETE CASCADE,
    CONSTRAINT uq_actualite_categorie UNIQUE (id_actualite, id_categorie)
);

CREATE TABLE actualite_detail (
    id BIGSERIAL PRIMARY KEY,
    id_actualite BIGINT NOT NULL,
    subtitle VARCHAR(255),
    paragraphe TEXT,

    CONSTRAINT fk_actualite_detail FOREIGN KEY (id_actualite) REFERENCES actualite(id) ON DELETE CASCADE
);

CREATE TABLE actualite_photo (
    id BIGSERIAL PRIMARY KEY,
    id_detail BIGINT NOT NULL,
    photo VARCHAR(255) NOT NULL,
    description TEXT,
    ordre INTEGER NOT NULL DEFAULT 1,

    CONSTRAINT fk_detail_photo FOREIGN KEY (id_detail) REFERENCES actualite_detail(id) ON DELETE CASCADE
);

CREATE TABLE actualite_video (
    id BIGSERIAL PRIMARY KEY,
    id_detail BIGINT NOT NULL,
    video VARCHAR(255) NOT NULL,
    description TEXT,
    ordre INTEGER NOT NULL DEFAULT 1,

    CONSTRAINT fk_detail_video FOREIGN KEY (id_detail) REFERENCES actualite_detail(id) ON DELETE CASCADE
);

CREATE TABLE actualite_document (
    id BIGSERIAL PRIMARY KEY,
    id_detail BIGINT NOT NULL,
    document VARCHAR(255) NOT NULL,
    description TEXT,
    ordre INTEGER NOT NULL DEFAULT 1,

    CONSTRAINT fk_detail_document FOREIGN KEY (id_detail) REFERENCES actualite_detail(id) ON DELETE CASCADE
);


Actualité
│
├── Titre
├── Résumé
├── Image de couverture
├── Lieu
├── Date de publication
├── Catégories (plusieurs)
│
└── Détails (plusieurs)
      │
      ├── Sous-titre
      ├── Paragraphe
      ├── Photos (plusieurs)
      ├── Vidéos (plusieurs)
      └── Documents (plusieurs)

INSERT INTO categorie (categorie) VALUES
('Projets'),
('Réalisations'),
('Programmes'),
('Financement'),
('Subventions'),
('Partenariats'),
('Formation'),
('Atelier'),
('Rapport'),
('Communiqué'),
('Gouvernance'),
('Développement local'),
('Infrastructure'),
('Événement'),
('Recrutement'),
('Appel d''offres'),
('Innovation'),
('Numérique'),
('Environnement'),
('Résilience climatique'),
('Coopération internationale'),
('Renforcement des capacités'),
('Mission'),
('Publication'),
('Statistiques');