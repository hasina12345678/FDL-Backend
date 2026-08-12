INSERT INTO r_region (name, code) VALUES
('ANALAMANGA','ANL'),
('BONGOLAVA','BGO'),
('ITASY','ITY'),
('VAKINANKARATRA','VAK'),
('DIANA','DIA'),
('SAVA','SAV'),
('AMORON''I MANIA','AMM'),
('ATSIMO-ATSINANANA','AAT'),
('HAUTE MATSIATRA','HMA'),
('IHOROMBE','IHO'),
('FITOVINANY','FIT'),
('VATOVAVY','VAT'),
('BETSIBOKA','BET'),
('BOENY','BOE'),
('MELAKY','MEL'),
('SOFIA','SOF'),
('ALAOTRA-MANGORO','ALM'),
('ANALANJIROFO','ANJ'),
('ATSINANANA','ATN'),
('ANDROY','AND'),
('ANOSY','ANO'),
('ATSIMO-ANDREFANA','AAR'),
('MENABE','MEN');

INSERT INTO r_district (name,code,region_id)
SELECT 'Ambohidratrimo','AMT',id FROM r_region WHERE name='ANALAMANGA';

INSERT INTO r_district (name,code,region_id)
SELECT 'Andramasina','AND',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Anjozorobe','ANJ',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Ankazobe','ANK',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo Atsimondrano','AAT',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo Avaradrano','AAV',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Manjakandriana','MAN',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo-I','TNR1',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo-II','TNR2',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo-III','TNR3',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo-IV','TNR4',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo-V','TNR5',id FROM r_region WHERE name='ANALAMANGA';
INSERT INTO r_district (name,code,region_id)
SELECT 'Antananarivo-VI','TNR6',id FROM r_region WHERE name='ANALAMANGA';

INSERT INTO r_district (name,code,region_id)
SELECT 'FENOARIVOBE','FEN',id FROM r_region WHERE name='BONGOLAVA';
INSERT INTO r_district (name,code,region_id)
SELECT 'TSIROANOMANDIDY','TSI',id FROM r_region WHERE name='BONGOLAVA';

INSERT INTO r_district (name,code,region_id)
SELECT 'ARIVONIMAMO','ARI',id FROM r_region WHERE name='ITASY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MIARINARIVO','MIA',id FROM r_region WHERE name='ITASY';
INSERT INTO r_district (name,code,region_id)
SELECT 'SOAVINANDRIANA','SOA',id FROM r_region WHERE name='ITASY';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBATOLAMPY','AMB',id FROM r_region WHERE name='VAKINANKARATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTANIFOTSY','ANT',id FROM r_region WHERE name='VAKINANKARATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTSIRABE I','ANT1',id FROM r_region WHERE name='VAKINANKARATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTSIRABE II','ANT2',id FROM r_region WHERE name='VAKINANKARATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'BETAFO','BET',id FROM r_region WHERE name='VAKINANKARATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'FARATSIHO','FAR',id FROM r_region WHERE name='VAKINANKARATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MANDOTO','MAN',id FROM r_region WHERE name='VAKINANKARATRA';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBANJA','AMB',id FROM r_region WHERE name='DIANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'AMBILOBE','AMBI',id FROM r_region WHERE name='DIANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTSIRANANA I','ANT1',id FROM r_region WHERE name='DIANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTSIRANANA II','ANT2',id FROM r_region WHERE name='DIANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'NOSY-BE','NOS',id FROM r_region WHERE name='DIANA';

INSERT INTO r_district (name,code,region_id)
SELECT 'ANDAPA','AND',id FROM r_region WHERE name='SAVA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTALAHA','ANT',id FROM r_region WHERE name='SAVA';
INSERT INTO r_district (name,code,region_id)
SELECT 'SAMBAVA','SAM',id FROM r_region WHERE name='SAVA';
INSERT INTO r_district (name,code,region_id)
SELECT 'VOHEMAR','VOH',id FROM r_region WHERE name='SAVA';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBATOFINANDRAHANA','AMB',id FROM r_region WHERE name='AMORON''I MANIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'AMBOSITRA','AMB',id FROM r_region WHERE name='AMORON''I MANIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'FANDRIANA','FAN',id FROM r_region WHERE name='AMORON''I MANIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MANANDRIANA','MAN',id FROM r_region WHERE name='AMORON''I MANIA';

INSERT INTO r_district (name,code,region_id)
SELECT 'BEFOTAKA ATSIMO','BEF',id FROM r_region WHERE name='ATSIMO-ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'FARAFANGANA','FAR',id FROM r_region WHERE name='ATSIMO-ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MIDONGY SUD','MID',id FROM r_region WHERE name='ATSIMO-ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'VANGAINDRANO','VAN',id FROM r_region WHERE name='ATSIMO-ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'VONDROZO','VON',id FROM r_region WHERE name='ATSIMO-ATSINANANA';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBALAVAO','AMB',id FROM r_region WHERE name='HAUTE MATSIATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'AMBOHIMAHASOA','AMH',id FROM r_region WHERE name='HAUTE MATSIATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'FIANARANTSOA','FIA',id FROM r_region WHERE name='HAUTE MATSIATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ISANDRA','ISA',id FROM r_region WHERE name='HAUTE MATSIATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'IKALAMAVONY','IKA',id FROM r_region WHERE name='HAUTE MATSIATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'VOHIBATO','VOH',id FROM r_region WHERE name='HAUTE MATSIATRA';
INSERT INTO r_district (name,code,region_id)
SELECT 'LALANGINA','LAL',id FROM r_region WHERE name='HAUTE MATSIATRA';

INSERT INTO r_district (name,code,region_id)
SELECT 'IAKORA','IAK',id FROM r_region WHERE name='IHOROMBE';
INSERT INTO r_district (name,code,region_id)
SELECT 'IHOSY','IHO',id FROM r_region WHERE name='IHOROMBE';
INSERT INTO r_district (name,code,region_id)
SELECT 'IVOHIBE','IVO',id FROM r_region WHERE name='IHOROMBE';

INSERT INTO r_district (name,code,region_id)
SELECT 'IKONGO','IKO',id FROM r_region WHERE name='FITOVINANY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MANAKARA','MAN',id FROM r_region WHERE name='FITOVINANY';
INSERT INTO r_district (name,code,region_id)
SELECT 'VOHIPENO','VOH',id FROM r_region WHERE name='FITOVINANY';

INSERT INTO r_district (name,code,region_id)
SELECT 'IFANADIANA','IFA',id FROM r_region WHERE name='VATOVAVY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MANANJARY','MAN',id FROM r_region WHERE name='VATOVAVY';
INSERT INTO r_district (name,code,region_id)
SELECT 'NOSY VARIKA','NOS',id FROM r_region WHERE name='VATOVAVY';

INSERT INTO r_district (name,code,region_id)
SELECT 'KANDREHO','KAN',id FROM r_region WHERE name='BETSIBOKA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAEVATANANA','MAE',id FROM r_region WHERE name='BETSIBOKA';
INSERT INTO r_district (name,code,region_id)
SELECT 'TSARATANANA','TSA',id FROM r_region WHERE name='BETSIBOKA';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBATO BOENI','AMB',id FROM r_region WHERE name='BOENY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAHAJANGA I','MAH1',id FROM r_region WHERE name='BOENY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAHAJANGA II','MAH2',id FROM r_region WHERE name='BOENY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAROVOAY','MAR',id FROM r_region WHERE name='BOENY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MITSINJO','MIT',id FROM r_region WHERE name='BOENY';
INSERT INTO r_district (name,code,region_id)
SELECT 'SOALALA','SOA',id FROM r_region WHERE name='BOENY';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBATOMAINTY','AMB',id FROM r_region WHERE name='MELAKY';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTSALOVA','ANT',id FROM r_region WHERE name='MELAKY';
INSERT INTO r_district (name,code,region_id)
SELECT 'BESALAMPY','BES',id FROM r_region WHERE name='MELAKY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAINTIRANO','MAI',id FROM r_region WHERE name='MELAKY';
INSERT INTO r_district (name,code,region_id)
SELECT 'MORAFENOBE','MOR',id FROM r_region WHERE name='MELAKY';

INSERT INTO r_district (name,code,region_id)
SELECT 'ANALALAVA','ANA',id FROM r_region WHERE name='SOFIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANTSOHIHY','ANT',id FROM r_region WHERE name='SOFIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'BEALANANA','BEA',id FROM r_region WHERE name='SOFIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'BEFANDRIANA NORD','BEF',id FROM r_region WHERE name='SOFIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAMPIKONY','MAM',id FROM r_region WHERE name='SOFIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MANDRITSARA','MAN',id FROM r_region WHERE name='SOFIA';
INSERT INTO r_district (name,code,region_id)
SELECT 'PORT-BERGE','POR',id FROM r_region WHERE name='SOFIA';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBATONDRAZAKA','AMB',id FROM r_region WHERE name='ALAOTRA-MANGORO';
INSERT INTO r_district (name,code,region_id)
SELECT 'AMPARAFARAVOLA','AMP',id FROM r_region WHERE name='ALAOTRA-MANGORO';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANDILAMENA','AND',id FROM r_region WHERE name='ALAOTRA-MANGORO';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANOSIBE AN ALA','ANO',id FROM r_region WHERE name='ALAOTRA-MANGORO';
INSERT INTO r_district (name,code,region_id)
SELECT 'MORAMANGA','MOR',id FROM r_region WHERE name='ALAOTRA-MANGORO';

INSERT INTO r_district (name,code,region_id)
SELECT 'FENERIVE EST','FEN',id FROM r_region WHERE name='ANALANJIROFO';
INSERT INTO r_district (name,code,region_id)
SELECT 'MANANARA-NORD','MAN',id FROM r_region WHERE name='ANALANJIROFO';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAROANTSETRA','MAR',id FROM r_region WHERE name='ANALANJIROFO';
INSERT INTO r_district (name,code,region_id)
SELECT 'SAINTE MARIE','STM',id FROM r_region WHERE name='ANALANJIROFO';
INSERT INTO r_district (name,code,region_id)
SELECT 'SOANIERANA IVONGO','SOA',id FROM r_region WHERE name='ANALANJIROFO';
INSERT INTO r_district (name,code,region_id)
SELECT 'VAVATENINA','VAV',id FROM r_region WHERE name='ANALANJIROFO';

INSERT INTO r_district (name,code,region_id)
SELECT 'ANTANAMBAO MANAMPO','ANT',id FROM r_region WHERE name='ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'BRICKAVILLE','BRI',id FROM r_region WHERE name='ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAHANORO','MAH',id FROM r_region WHERE name='ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAROLAMBO','MAR',id FROM r_region WHERE name='ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'TOAMASINA I','TOA1',id FROM r_region WHERE name='ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'TOAMASINA II','TOA2',id FROM r_region WHERE name='ATSINANANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'VATOMANDRY','VAT',id FROM r_region WHERE name='ATSINANANA';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBOVOMBE ANDROY','AMB',id FROM r_region WHERE name='ANDROY';
INSERT INTO r_district (name,code,region_id)
SELECT 'BEKILY','BEK',id FROM r_region WHERE name='ANDROY';
INSERT INTO r_district (name,code,region_id)
SELECT 'BELOHA ANDROY','BEL',id FROM r_region WHERE name='ANDROY';
INSERT INTO r_district (name,code,region_id)
SELECT 'TSIHOMBE','TSI',id FROM r_region WHERE name='ANDROY';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMBOASARY SUD','AMB',id FROM r_region WHERE name='ANOSY';
INSERT INTO r_district (name,code,region_id)
SELECT 'BETROKA','BET',id FROM r_region WHERE name='ANOSY';
INSERT INTO r_district (name,code,region_id)
SELECT 'TAOLANARO','TAO',id FROM r_region WHERE name='ANOSY';

INSERT INTO r_district (name,code,region_id)
SELECT 'AMPANIHY OUEST','AMP',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'ANKAZOABO SUD','ANK',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'BENENITRA','BEN',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'BEROROHA','BER',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'BETIOKY SUD','BET',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'MOROMBE','MOR',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'SAKARAHA','SAK',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'TOLIARY I','TOL1',id FROM r_region WHERE name='ATSIMO-ANDREFANA';
INSERT INTO r_district (name,code,region_id)
SELECT 'TOLIARY II','TOL2',id FROM r_region WHERE name='ATSIMO-ANDREFANA';

INSERT INTO r_district (name,code,region_id)
SELECT 'BELO SUR TSIRIBIHINA','BEL',id FROM r_region WHERE name='MENABE';
INSERT INTO r_district (name,code,region_id)
SELECT 'MAHABO','MAH',id FROM r_region WHERE name='MENABE';
INSERT INTO r_district (name,code,region_id)
SELECT 'MANJA','MAN',id FROM r_region WHERE name='MENABE';
INSERT INTO r_district (name,code,region_id)
SELECT 'MIANDRIVAZO','MIA',id FROM r_region WHERE name='MENABE';
INSERT INTO r_district (name,code,region_id)
SELECT 'MORONDAVA','MOR',id FROM r_region WHERE name='MENABE';

-- Communes
INSERT INTO r_commune (name,district_id)
SELECT 'Ambato',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambatolampy',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Antehiroka',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohidratrimo',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimanjaka',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohipihaonana',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohitrimanjaka',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ampangabe',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ampanotokana',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Anjanadoria',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Anosiala',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Antanetibe',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Antsahafilo',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Avaratsena',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Fiadanana',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Iarinarivo',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Ivato',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Mahabo',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Mahereza',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Mahitsy',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Mananjara',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Manjakavaradrano',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Merimandroso',id FROM r_district WHERE name='Ambohidratrimo';
INSERT INTO r_commune (name,district_id)
SELECT 'Talatamaty',id FROM r_district WHERE name='Ambohidratrimo';

INSERT INTO r_commune (name,district_id)
SELECT 'Alarobia Vatosola',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Alatsinainy Bakaro',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimiadana',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Andohariana',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Andramasina',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Anjoma Faliarivo',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Anosibe Trimoloharano',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Antotohazo',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Fitsinjovana Bakaro',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Mandrosoa',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Morarano Soa Firaisana',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Sabotsy Ambohitromby',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Sabotsy Manjakavahoaka',id FROM r_district WHERE name='Andramasina';
INSERT INTO r_commune (name,district_id)
SELECT 'Tankafatra',id FROM r_district WHERE name='Andramasina';

INSERT INTO r_commune (name,district_id)
SELECT 'Alakamisy',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambatomanoina',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Amboasary Nord',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohibary Vohilena',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimarina Marovazaha',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimirary',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambongamarina',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Amparatanjona',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Analaroa',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Andranomisa',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Androvakely',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Anjozorobe',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Antanetibe',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Belanitra',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Beronono',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Betatao',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Mangamila',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Marotsipoy',id FROM r_district WHERE name='Anjozorobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Tsarasaotra Andona',id FROM r_district WHERE name='Anjozorobe';

INSERT INTO r_commune (name,district_id)
SELECT 'Ambohitromby',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambolotarakely',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Andranomiely',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Ankazobe',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Antakavana',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Antotohazo',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Fiadanana',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Fihaonana',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Kiangara',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Mahavelona',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Mangasoavina',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Marondry',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Miantso',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Talata-Angavo',id FROM r_district WHERE name='Ankazobe';
INSERT INTO r_commune (name,district_id)
SELECT 'Tsaramasoandro',id FROM r_district WHERE name='Ankazobe';

INSERT INTO r_commune (name,district_id)
SELECT 'Alakamisy Fenoarivo',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Alatsinainy Ambazaha',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambalavao',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambatofahavalo',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambavahaditokana',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohidrapeto',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohijanaka',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ampahitrosy',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ampanefy',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ampitatafika',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Andoharanofotsy',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Andranonahoatra',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Androhibe',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ankadimanga',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ankaraobato',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Anosizato Andrefana',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Antanetikely',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Bemasoandro',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Bongatsara',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Fenoarivo',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Fiombonana',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Itaosy',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Soalandy',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Soavina',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Tanjombato',id FROM r_district WHERE name='Antananarivo Atsimondrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Tsiafahy',id FROM r_district WHERE name='Antananarivo Atsimondrano';

INSERT INTO r_commune (name,district_id)
SELECT 'Alasora',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimalaza Miray',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimanambola',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimanga Rova',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohimangakely',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohidrabiby',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Anjeva Gara',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ankadikely Ilafy',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Ankadinandriana',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Anosy Avaratra',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Fieferana',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Manandriana',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Masindray',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Sabotsy Namehana',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Talata Volonondry',id FROM r_district WHERE name='Antananarivo Avaradrano';
INSERT INTO r_commune (name,district_id)
SELECT 'Vilihazo',id FROM r_district WHERE name='Antananarivo Avaradrano';

INSERT INTO r_commune (name,district_id)
SELECT 'Alarobia',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambanitsena',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambatolaona',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambatomanga',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambatomena',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohibao Sud',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohibary',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohitrandriamanitra',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohitrolomahitsy',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohitrony',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ambohitseheno',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ampaneva',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Anjepy',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Anjoma Betoho',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ankazodandy',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Antsahalalina',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Manjakandriana',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Mantasoa',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Merikanjaka',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Miadanandriana',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Nandihizana Carion',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Ranovao',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Sadabe',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Sambaina',id FROM r_district WHERE name='Manjakandriana';
INSERT INTO r_commune (name,district_id)
SELECT 'Soavinandriana (Ambohidratrimoanala)',id FROM r_district WHERE name='Manjakandriana';

INSERT INTO r_commune (name,district_id)
SELECT 'Commune Urbaine d''Antananarivo',id FROM r_district WHERE name='Antananarivo-I';
INSERT INTO r_commune (name,district_id)
SELECT 'Commune Urbaine d''Antananarivo',id FROM r_district WHERE name='Antananarivo-II';
INSERT INTO r_commune (name,district_id)
SELECT 'Commune Urbaine d''Antananarivo',id FROM r_district WHERE name='Antananarivo-III';
INSERT INTO r_commune (name,district_id)
SELECT 'Commune Urbaine d''Antananarivo',id FROM r_district WHERE name='Antananarivo-IV';
INSERT INTO r_commune (name,district_id)
SELECT 'Commune Urbaine d''Antananarivo',id FROM r_district WHERE name='Antananarivo-V';
INSERT INTO r_commune (name,district_id)
SELECT 'Commune Urbaine d''Antananarivo',id FROM r_district WHERE name='Antananarivo-VI';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOMAINTY SUD',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHITROMBY',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'FENOARIVOBE',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'FIRAVAHANA',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'KIRANOMENA',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHAJEBY',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'MORARANO MARITAMPONA',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'TSINJOARIVO 22',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'MANGATANY',id FROM r_district WHERE name='FENOARIVOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRIAMPOTSY',id FROM r_district WHERE name='FENOARIVOBE';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBALANIRANA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBARARATABE',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOLAMPY',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKADINONDRY SAKAY',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKERANA NORD',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANOSY',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'BELOBAKA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'BEMAHATAZANA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'BEVATO',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'FIERENANA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHASOLO',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROHARONA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'MARITAMPONA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'MIANDRARIVO',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'SOANIERANA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'TSINJOARIVO-IMANGA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'TSIROANOMANDIDY FIHAONANA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'TSIROANOMANDIDY VILLE',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAHALAVA',id FROM r_district WHERE name='TSIROANOMANDIDY';
INSERT INTO r_commune (name,district_id)
SELECT 'FIADANANTSOA',id FROM r_district WHERE name='TSIROANOMANDIDY';

-- ITASY
INSERT INTO r_commune (name,district_id)
SELECT 'ALAKAMISIKELY',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOMANGA',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOMIRAHAVAVY',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOANANA',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMANDRY',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMASINA',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIPANDRANO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHITRAMBO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPAHIMANGA',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOMIELY',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTAMBOLO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTENIMBE',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'ARIVONIMAMO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'ARIVONIMAMO II',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'IMERINTSIATOSIKA',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHATSINJO EST',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'MANALALONDO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROFANGADY',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'MIANDRANDRA',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'MIANTSOARIVO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'MORAFENO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'MORARANO',id FROM r_district WHERE name='ARIVONIMAMO';
INSERT INTO r_commune (name,district_id)
SELECT 'TALATA TSIMADILO',id FROM r_district WHERE name='ARIVONIMAMO';

INSERT INTO r_commune (name,district_id)
SELECT 'ALATSINAINIKELY',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOMANJAKA',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANALAVORY',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDOLOFOTSY',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANOSIBE-IFANJA',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTOBY EST',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'MANAZARY',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'MANDIAVATO',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'MIARINARIVO',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'MIARINARIVO II',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'SAROBARATRA',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'SOAMAHAMANINA',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'SOAVIMBAZAHA',id FROM r_district WHERE name='MIARINARIVO';
INSERT INTO r_commune (name,district_id)
SELECT 'ZOMA BEALOKA',id FROM r_district WHERE name='MIARINARIVO';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOASANA CENTRE',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBEROMANGA',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPARAKY',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPARIBOHITRA',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPARY',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPEFY',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKARANANA',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKISABE',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANETIBE',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'DONDONA',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHAVELONA',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'MANANASY',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'MASINDRAY',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'SOAVINANDRIANA',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'TAMPONALA',id FROM r_district WHERE name='SOAVINANDRIANA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIDANERANA',id FROM r_district WHERE name='SOAVINANDRIANA';

-- VAKINANKARATRA
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOLAMPY',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATONDRAKALAVAO',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIFARIHY',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMPIHAONANA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOVELONA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRAVOLA VOHIPENO',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRIAMBILANY',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTAKASINA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANAMALAZA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANIMASAKA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAMPANDRANO',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'BEHENJY',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'BELAMBO FIRAISANA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'MANJAKATOMPO',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'MORARANO',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'SABOTSY NAMATOANA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'TSIAFAJAVONA ANKARATRA',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'TSINJOARIVO',id FROM r_district WHERE name='AMBATOLAMPY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRIANTSIVALANA',id FROM r_district WHERE name='AMBATOLAMPY';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOLAHY',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOMIADY',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOTSIPIHANA',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIRIANA',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMANDROSO',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHITOMPOINA',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPITATAFIKA',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOFITO',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANIFOTSY',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAHALAVA',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAMPANDRANO',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'BELANITRA',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'ANJAMANGA',id FROM r_district WHERE name='ANTANIFOTSY';
INSERT INTO r_commune (name,district_id)
SELECT 'SOAMANANDRARINY',id FROM r_district WHERE name='ANTANIFOTSY';

INSERT INTO r_commune (name,district_id)
SELECT 'ANTSIRABE',id FROM r_district WHERE name='ANTSIRABE I';

INSERT INTO r_commune (name,district_id)
SELECT 'ALAKAMISY',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'ALATSINAINY IBITY',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBANO',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOMENA',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIBARY',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIDRANANDRIANA',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMIARIVO',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHITSIMANOVA',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOMANELATRA',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANAMBAO',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANIMANDRY',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSOANTANY',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'BELAZAO',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'MANANDONA',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'MANDROSOHASINA',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'MANGARANO',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'SAHANIVOTRY MANANDONA',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'SOANINDRARINY',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'TSARAHONENANA SAHANIVOTRY',id FROM r_district WHERE name='ANTSIRABE II';
INSERT INTO r_commune (name,district_id)
SELECT 'VINANINKARENA',id FROM r_district WHERE name='ANTSIRABE II';

INSERT INTO r_commune (name,district_id)
SELECT 'ALAKAMISY ANATIVATO',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'ALAKAMISY MAROSOSONA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'ALAROBIA BEMAHA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATONIKOLAHY',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMANAMBOLA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMASINA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOMAFANA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDREMBESOA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'MANOHISOA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'MANDRITSARA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANOSIARIVO MANAPA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'SOAVINA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTOHOBE',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSOSO',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'BETAFO',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'TRITRIVA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHAIZA',id FROM r_district WHERE name='BETAFO';
INSERT INTO r_commune (name,district_id)
SELECT 'INANANTONANA',id FROM r_district WHERE name='BETAFO';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIBORONA',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOMIADY',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAMPANIMAHAZO',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'FARATSIHO',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'MIANDRARIVO',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'RAMAINANDRO',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'VALABETOKANA',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'FARAVOHITRA',id FROM r_district WHERE name='FARATSIHO';
INSERT INTO r_commune (name,district_id)
SELECT 'VINANINONY SUD',id FROM r_district WHERE name='FARATSIHO';

INSERT INTO r_commune (name,district_id)
SELECT 'MANDOTO',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'VASIANA',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANAMBAO AMBARY',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'BETSOHANA',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKAZOMIRIOTRA',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'VINANY',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'ANJOMA RAMARTINA',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'FIDIRANA',id FROM r_district WHERE name='MANDOTO';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROMANDRAY',id FROM r_district WHERE name='MANDOTO';

-- DIANA
INSERT INTO r_commune (name,district_id)
SELECT 'AMBALAHONKO',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBALIHA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBANJA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIMANGA RAMENA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMARINA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMENA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHITRANDRIANA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKATAFA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKINGAMELOKA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANOROTSANGANA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTAFIAMBOTRY',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTRANOKARANY',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAKOAMANONDRO',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSATSAKA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSIRABE',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'BEMANEVIKA HAUT-SAMBIRANO',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'BEMANEVIKA OUEST',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'BENAVONY',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'DJANGOA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAEVATANANA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHERIVARATRA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROTOLANA',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROVATO',id FROM r_district WHERE name='AMBANJA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAHABE CENTRE',id FROM r_district WHERE name='AMBANJA';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBAKIRANO',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBARAKARAKA',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOBEN '' ANJAVY',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBILOBE',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIBONARA',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPONDRALAVA',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'ANABORANO IFASY',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'ANJIABE HAUT',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSARAVIBE',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSOHIMBONDRONA',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'BERAMANJA',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'BETSIAKA',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'MANAMBATO',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'MANTALY',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'TANAMBAO MARIVORAHONA',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANABE',id FROM r_district WHERE name='AMBILOBE';
INSERT INTO r_commune (name,district_id)
SELECT 'SIRAMA',id FROM r_district WHERE name='AMBILOBE';

INSERT INTO r_commune (name,district_id)
SELECT 'ANTSIRANANA',id FROM r_district WHERE name='ANTSIRANANA I';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBONDRONA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRAFIABE',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOFANJAVA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOVONDRONINA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANIVORANO NORD',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKARONGANA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKETRAKABE',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANAMITARANA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAHAMPANO',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSALAKA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSOHA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'BOBAKILANDY',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'BOBASAKOA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'JOFFRE-VILLE',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHALINA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHAVANONA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'MANGAOKA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'MOSOROLAVA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'RAMENA',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'SADJOAVATO',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'SAKARAMY',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAKOABE',id FROM r_district WHERE name='ANTSIRANANA II';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOLOBOZOBE',id FROM r_district WHERE name='ANTSIRANANA II';

INSERT INTO r_commune (name,district_id)
SELECT 'CU NOSY-BE',id FROM r_district WHERE name='NOSY-BE';

-- SAVA
INSERT INTO r_commune (name,district_id)
SELECT 'AMBALAMANASY II',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIANGEZOKA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIMANGA I',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDAPA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRAKATA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRANOMENA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANJIALAVABE',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANKIAKABE NORD',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANOVIARA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAHAMENA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'BEALAMPONA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'BELAOKA LOKOHO',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'BELAOKA MAROVATO',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'BETSAKOTSAKO ANDRANOTSARA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'DOANY',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROVATO',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'MATSOHELY',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'TANANDAVA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIDIVAINA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDASIBE KOBAHINA',id FROM r_district WHERE name='ANDAPA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBALAVELONA',id FROM r_district WHERE name='ANDAPA';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBALABE',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBINANIFAHO',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHITRALANANA',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPAHANA',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPANAVOANA',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPOHIBE',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDAMPY',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTALAHA',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTANANAMBO',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTOMBANA',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAHANORO',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAMBALAHY',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'LANJARIVO',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROFINARITRA',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'SARAHANDRANO',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'VINANIVAO',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'SAHANTAHA',id FROM r_district WHERE name='ANTALAHA';
INSERT INTO r_commune (name,district_id)
SELECT 'MANAKAMBAHINY ANKAVIA',id FROM r_district WHERE name='ANTALAHA';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBATOAFO',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOANGIBE',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIAMPANA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODIVOARA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMALAZA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBOHIMITSINJO',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANALAMAHO',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRAHANJO',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRATAMARINA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDREMBONA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANJANGOVERATRA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANJIALAVA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANJINJAOMBY',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTINDRA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAHAVARIBE',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSAMBAHARO',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'BEMANEVIKA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'BEVONOTRA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'FARAHALANA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROAMBIHY',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROGAONA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROJALA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'MORAFENO',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'NOSIARINA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'SAMBAVA',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'TANAMBAO DAOUD',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDAPABE',id FROM r_district WHERE name='SAMBAVA';
INSERT INTO r_commune (name,district_id)
SELECT 'MAHASOA ANTINDRA',id FROM r_district WHERE name='SAMBAVA';

INSERT INTO r_commune (name,district_id)
SELECT 'AMBALASATRANA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBINANIN '' ANDRAVORY',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBORIALA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPANEFENA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPISIKINANA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'AMPONDRA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRAFAINKONA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'ANDRAVORY',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'AMBODISAMBALAHY',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'ANTSIRABE NORD',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'BELAMBO',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'BOBAKINDRO',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'DARAINA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'FANAMBANA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'MAROMOKOTRA LOKY',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'MILANOA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'NOSIBE',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'TSARABARIA',id FROM r_district WHERE name='VOHEMAR';
INSERT INTO r_commune (name,district_id)
SELECT 'VOHEMAR',id FROM r_district WHERE name='VOHEMAR';

-- Vérification
SELECT COUNT(*) AS regions FROM r_region;
SELECT COUNT(*) AS districts FROM r_district;
SELECT COUNT(*) AS communes FROM r_commune;