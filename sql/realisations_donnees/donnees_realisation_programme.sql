INSERT INTO r_programme (code, name, description) VALUES
('PFDL-001', 'Programme de Developpement Local', 'Programme principal du FDL visant a financer les projets prioritaires des collectivites territoriales decentralisees.'),
('PFDL-002', 'Programme d''Appui aux Communes', 'Programme destine au renforcement des capacites et au financement des infrastructures communales.'),
('PFDL-003', 'Programme d''Investissements Communaux', 'Programme consacre au financement des infrastructures et equipements publics au niveau des communes.'),
('PFDL-004', 'Programme de Developpement Regional', 'Programme visant a soutenir les projets structurants des regions de Madagascar.'),
('PFDL-005', 'Programme de Reduction des Inegalites Territoriales', 'Programme destine a ameliorer l''acces aux services publics essentiels dans les zones defavorisees.'),
('PFDL-006', 'Programme d''Amelioration des Services de Base', 'Programme visant l''amelioration de l''acces aux services essentiels comme l''education, la sante et l''eau potable.'),
('PFDL-007', 'Programme d''Infrastructures Rurales', 'Programme consacre aux infrastructures rurales telles que routes, ponts et ouvrages communautaires.'),
('PFDL-008', 'Programme de Resilience et Developpement Durable', 'Programme soutenant les projets lies a la resilience climatique et au developpement durable.'),
('PFDL-009', 'Programme de Gouvernance Locale', 'Programme visant a ameliorer la gestion administrative et institutionnelle des collectivites locales.');




-- INSERT INTO r_programme (code, name, description) VALUES
-- ('PFDL-001', 'Programme de Développement Local', 'Programme principal du FDL visant à financer les projets prioritaires des collectivités territoriales décentralisées.'),
-- ('PFDL-002', 'Programme d''Appui aux Communes', 'Programme destiné au renforcement des capacités et au financement des infrastructures communales.'),
-- ('PFDL-003', 'Programme d''Investissements Communaux', 'Programme consacré au financement des infrastructures et équipements publics au niveau des communes.'),
-- ('PFDL-004', 'Programme de Développement Régional', 'Programme visant à soutenir les projets structurants des régions de Madagascar.'),
-- ('PFDL-005', 'Programme de Réduction des Inégalités Territoriales', 'Programme destiné à améliorer l''accès aux services publics essentiels dans les zones défavorisées.'),
-- ('PFDL-006', 'Programme d''Amélioration des Services de Base', 'Programme visant l''amélioration de l''accès aux services essentiels comme l''éducation, la santé et l''eau potable.'),
-- ('PFDL-007', 'Programme d''Infrastructures Rurales', 'Programme consacré aux infrastructures rurales telles que routes, ponts et ouvrages communautaires.'),
-- ('PFDL-008', 'Programme de Résilience et Développement Durable', 'Programme soutenant les projets liés à la résilience climatique et au développement durable.'),
-- ('PFDL-009', 'Programme de Gouvernance Locale', 'Programme visant à améliorer la gestion administrative et institutionnelle des collectivités locales.');






r_programme
    |
    |-- Realisation
            |
            |-- r_categorie
            |       Education
            |       Santé
            |       Route
            |
            |-- r_source_financement
                    FDL
                    Etat Malagasy
                    Banque Mondiale