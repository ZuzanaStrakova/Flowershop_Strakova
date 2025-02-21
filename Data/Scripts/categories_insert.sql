use dbFlowerShop
go

SET IDENTITY_INSERT Categories ON;
GO

INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (1,  N'Øezané kvìtiny',                 NULL),
    (2,  N'Kvìtinové kytice a aranže',      NULL),
    (3,  N'Pokojové a kanceláøské rostliny', NULL),
    (4,  N'Svatební kvìtiny',              NULL),
    (5,  N'Smuteèní vazby',                NULL),
    (6,  N'Sezonní a tematické kvìtiny',   NULL),
    (7,  N'Zahradní a venkovní rostliny',  NULL),
    (8,  N'Dárkové sady / sety',           NULL),
    (9,  N'Floristické doplòky a dekorace', NULL),
    (10, N'Kreativní workshopy a služby',  NULL);

---------------------------------
-- 3b) Podkategorie
--    (ParentCategoryId = ID rodièovské kategorie)
---------------------------------
-- 1) Øezané kvìtiny (Parent = 1)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (11,  N'Rùže',        1),
    (12,  N'Tulipány',    1),
    (13,  N'Gerbery',     1),
    (14,  N'Lilie',       1),
    (15,  N'Chryzantémy', 1);

-- 2) Kvìtinové kytice a aranže (Parent = 2)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (21,  N'Dárkové kytice',     2),
    (22,  N'Slavnostní aranžmá', 2),
    (23,  N'Firemní aranžmá',    2);

-- 3) Pokojové a kanceláøské rostliny (Parent = 3)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (31,  N'Sukulenty a kaktusy',           3),
    (32,  N'Orchideje',                     3),
    (33,  N'Fikusy a palmy',                3),
    (34,  N'Bonsaje',                       3),
    (35,  N'Bylinky a aromatické rostliny', 3);

-- 4) Svatební kvìtiny (Parent = 4)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (41,  N'Svatební kytice',           4),
    (42,  N'Výzdoba svatebního místa',  4),
    (43,  N'Corsage (kvìtinové ozdoby)', 4),
    (44,  N'Dekorace do klopy',         4);

-- 5) Smuteèní vazby (Parent = 5)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (51,  N'Smuteèní kytice', 5),
    (52,  N'Vìnce',           5),
    (53,  N'Aranžmá na hroby',5);

-- 6) Sezonní a tematické kvìtiny (Parent = 6)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (61,  N'Vánoèní hvìzda (Poinsettia)', 6),
    (62,  N'Velikonoèní osení a aranžmá', 6),
    (63,  N'Podzimní dekorace',          6),
    (64,  N'Jarní cibuloviny',           6);

-- 7) Zahradní a venkovní rostliny (Parent = 7)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (71,  N'Letnièky',                7),
    (72,  N'Trvalky',                 7),
    (73,  N'Keøe a okrasné døeviny',  7),
    (74,  N'Cibuloviny (tulipány...)',7);

-- 8) Dárkové sady / sety (Parent = 8)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (81,  N'Kytice + èokoláda', 8),
    (82,  N'Kytice + víno',      8),
    (83,  N'Kvìtinové boxy',     8),
    (84,  N'Kvìtinová pøedplatná', 8);

-- 9) Floristické doplòky a dekorace (Parent = 9)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (91,  N'Vázy, kvìtináèe, obaly',           9),
    (92,  N'Stuhy, ozdoby, mašle',             9),
    (93,  N'Péèe o kvìtiny (výživa, leštidla)', 9),
    (94,  N'Dekoraèní materiál (hmota...)',    9);

-- 10) Kreativní workshopy a služby (Parent = 10)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (101, N'Floristické kurzy',              10),
    (102, N'Kvìtinová výzdoba interiérù',     10),
    (103, N'Kompletní svatební servis',       10);

SET IDENTITY_INSERT Categories OFF;
GO