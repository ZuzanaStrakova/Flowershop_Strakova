use dbFlowerShop
go

SET IDENTITY_INSERT Categories ON;
GO

INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (1,  N'�ezan� kv�tiny',                 NULL),
    (2,  N'Kv�tinov� kytice a aran�e',      NULL),
    (3,  N'Pokojov� a kancel��sk� rostliny', NULL),
    (4,  N'Svatebn� kv�tiny',              NULL),
    (5,  N'Smute�n� vazby',                NULL),
    (6,  N'Sezonn� a tematick� kv�tiny',   NULL),
    (7,  N'Zahradn� a venkovn� rostliny',  NULL),
    (8,  N'D�rkov� sady / sety',           NULL),
    (9,  N'Floristick� dopl�ky a dekorace', NULL),
    (10, N'Kreativn� workshopy a slu�by',  NULL);

---------------------------------
-- 3b) Podkategorie
--    (ParentCategoryId = ID rodi�ovsk� kategorie)
---------------------------------
-- 1) �ezan� kv�tiny (Parent = 1)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (11,  N'R��e',        1),
    (12,  N'Tulip�ny',    1),
    (13,  N'Gerbery',     1),
    (14,  N'Lilie',       1),
    (15,  N'Chryzant�my', 1);

-- 2) Kv�tinov� kytice a aran�e (Parent = 2)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (21,  N'D�rkov� kytice',     2),
    (22,  N'Slavnostn� aran�m�', 2),
    (23,  N'Firemn� aran�m�',    2);

-- 3) Pokojov� a kancel��sk� rostliny (Parent = 3)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (31,  N'Sukulenty a kaktusy',           3),
    (32,  N'Orchideje',                     3),
    (33,  N'Fikusy a palmy',                3),
    (34,  N'Bonsaje',                       3),
    (35,  N'Bylinky a aromatick� rostliny', 3);

-- 4) Svatebn� kv�tiny (Parent = 4)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (41,  N'Svatebn� kytice',           4),
    (42,  N'V�zdoba svatebn�ho m�sta',  4),
    (43,  N'Corsage (kv�tinov� ozdoby)', 4),
    (44,  N'Dekorace do klopy',         4);

-- 5) Smute�n� vazby (Parent = 5)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (51,  N'Smute�n� kytice', 5),
    (52,  N'V�nce',           5),
    (53,  N'Aran�m� na hroby',5);

-- 6) Sezonn� a tematick� kv�tiny (Parent = 6)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (61,  N'V�no�n� hv�zda (Poinsettia)', 6),
    (62,  N'Velikono�n� osen� a aran�m�', 6),
    (63,  N'Podzimn� dekorace',          6),
    (64,  N'Jarn� cibuloviny',           6);

-- 7) Zahradn� a venkovn� rostliny (Parent = 7)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (71,  N'Letni�ky',                7),
    (72,  N'Trvalky',                 7),
    (73,  N'Ke�e a okrasn� d�eviny',  7),
    (74,  N'Cibuloviny (tulip�ny...)',7);

-- 8) D�rkov� sady / sety (Parent = 8)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (81,  N'Kytice + �okol�da', 8),
    (82,  N'Kytice + v�no',      8),
    (83,  N'Kv�tinov� boxy',     8),
    (84,  N'Kv�tinov� p�edplatn�', 8);

-- 9) Floristick� dopl�ky a dekorace (Parent = 9)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (91,  N'V�zy, kv�tin��e, obaly',           9),
    (92,  N'Stuhy, ozdoby, ma�le',             9),
    (93,  N'P��e o kv�tiny (v��iva, le�tidla)', 9),
    (94,  N'Dekora�n� materi�l (hmota...)',    9);

-- 10) Kreativn� workshopy a slu�by (Parent = 10)
INSERT INTO Categories (Id, Name, ParentCategoryId)
VALUES
    (101, N'Floristick� kurzy',              10),
    (102, N'Kv�tinov� v�zdoba interi�r�',     10),
    (103, N'Kompletn� svatebn� servis',       10);

SET IDENTITY_INSERT Categories OFF;
GO