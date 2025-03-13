use dbFlowerShop
go

INSERT INTO Products (Name, CategoryId, Description, Price, StorageAmount, ImageUrl, Rating, RatingCount, IsTopProduct)
VALUES
  -- 1) �ezan� kv�tiny - Podkategorie: R��e (Id=11)
  ('�erven� r��e Deluxe',         11, N'Luxusn� kytice �erstv�ch �erven�ch r��� pro zvl�tn� p��le�itosti.',           349.99, 30, 'https://example.com/images/cervene_ruze_deluxe.jpg', 5, 120, 1),
  ('R��ov� kytice',               11, N'Jemn� kytice s r��ov�mi r��emi vhodn� pro ka�dodenn� radost.',                        299.99, 40, 'https://example.com/images/ruzova_kytice.jpg',         4,  90, 0),
  ('B�l� r��e',                  11, N'Elegantn� kytice b�l�ch r��� symbolizuj�c� �istotu a noblesu.',                         279.50, 25, 'https://example.com/images/bile_ruze.jpg',             4,  75, 0),
  
  -- 2) �ezan� kv�tiny - Podkategorie: Tulip�ny (Id=12)
  ('Barevn� tulip�ny',            12, N'Pestr� sm�s tulip�n� v r�zn�ch odst�nech pro radost ka�d�ho domova.',                  199.99, 50, 'https://example.com/images/barevne_tulipany.jpg',      4, 100, 0),
  ('Tulip�ny mix',                12, N'Elegantn� mix tulip�n� s r�zn�mi barvami vhodn� pro slavnostn� i b�n� p��le�itosti.', 219.99, 60, 'https://example.com/images/tulipany_mix.jpg',          5, 150, 1),
  
  -- 3) �ezan� kv�tiny - Podkategorie: Gerbery (Id=13)
  ('�lut� gerbery',               13, N'�lut� gerbery, kter� p�in�ej� optimismus a pozitivn� energii.',                      159.99, 40, 'https://example.com/images/zlute_gerbery.jpg',         4,  80, 0),
  ('Mix gerber',                 13, N'Sm�s r�znobarevn�ch gerber vhodn� pro ka�dodenn� radost a osv�en� interi�ru.',         169.99, 35, 'https://example.com/images/mix_gerber.jpg',            4,  60, 0),
  
  -- 4) �ezan� kv�tiny - Podkategorie: Lilie (Id=14)
  ('B�l� lilie',                 14, N'N�dhern� b�l� lilie pro vyj�d�en� elegance a luxusu.',                                189.99, 30, 'https://example.com/images/bile_lilie.jpg',            5,  90, 1),
  ('R��ov� lilie',               14, N'Kr�sn� r��ov� lilie, jemn� a sofistikovan�, ide�ln� do modern�ch interi�r�.',            179.50, 25, 'https://example.com/images/ruzove_lilie.jpg',          4,  70, 0),
  
  -- 5) �ezan� kv�tiny - Podkategorie: Chryzant�my (Id=15)
  ('Podzimn� chryzant�my',        15, N'Kytice s chryzant�mami vhodn� pro podzimn� dekorace a slavnostn� p��le�itosti.',       129.99, 45, 'https://example.com/images/podzimni_chryzantemy.jpg',  4,  50, 0),
  ('B�l� chryzant�my',           15, N'Klasick� b�l� chryzant�my pro form�ln� ud�losti a vzpom�nkov� chv�le.',                139.99, 40, 'https://example.com/images/bile_chryzantemy.jpg',       3,  30, 0),
  
  -- 6) Kv�tinov� kytice a aran�e - Podkategorie: D�rkov� kytice (Id=21)
  ('Luxusn� d�rkov� kytice',      21, N'Exkluzivn� kytice s kombinac� vybran�ch kv�tin a dekorac� pro speci�ln� d�rek.',      399.99, 20, 'https://example.com/images/luxusni_darkova_kytice.jpg', 5, 110, 1),
  ('Mini d�rkov� kytice',         21, N'Kompaktn� kytice ide�ln� jako mal� pozornost pro va�e bl�zk�.',                      99.99,  70, 'https://example.com/images/mini_darkova_kytice.jpg',    4,  40, 0),
  
  -- 7) Kv�tinov� kytice a aran�e - Podkategorie: Slavnostn� aran�m� (Id=22)
  ('Zlat� aran�m�',               22, N'N�dhern� aran�m� se zlat�mi akcenty pro slavnostn� p��le�itosti.',                     499.99, 15, 'https://example.com/images/zlate_aranzma.jpg',         5,  85, 1),
  ('Elegantn� aran�m�',           22, N'Stylov� aran�m� vhodn� pro oslavy a form�ln� akce.',                                   359.99, 25, 'https://example.com/images/elegantni_aranzma.jpg',     4,  60, 0),
  
  -- 8) Kv�tinov� kytice a aran�e - Podkategorie: Firemn� aran�m� (Id=23)
  ('Firemn� kv�tinov� aran�m�',    23, N'Modern� aran�m� pro kancel��sk� prostory a firemn� interi�ry.',                      279.99, 30, 'https://example.com/images/firemni_aranzma.jpg',       4,  45, 0),
  
  -- 9) Pokojov� a kancel��sk� rostliny - Podkategorie: Sukulenty a kaktusy (Id=31)
  ('Mix sukulent�',             31, N'Kreativn� mix sukulent� a kaktus� pro dod�n� p��rodn�ho n�dechu do interi�ru.',       149.99,100, 'https://example.com/images/mix_sukulentu.jpg',         4,  35, 0),
  ('Kaktusov� kompozice',         31, N'Origin�ln� kaktusov� kompozice pro milovn�ky neobvykl�ch a odoln�ch rostlin.',         129.99, 80, 'https://example.com/images/kaktusova_kompozice.jpg',     3,  25, 0),
  
  -- 10) Pokojov� a kancel��sk� rostliny - Podkategorie: Orchideje (Id=32)
  ('B�l� orchidej',              32, N'Elegantn� b�l� orchidej pro luxusn� interi�ry a slavnostn� okam�iky.',               399.99, 20, 'https://example.com/images/bila_orchidej.jpg',         5,  60, 1),
  ('R��ov� orchidej',            32, N'N�n� r��ov� orchidej s exkluzivn�m vzhledem vhodn� do modern�ch prostor.',           389.99, 15, 'https://example.com/images/ruzova_orchidej.jpg',       4,  55, 0),
  
  -- 11) Pokojov� a kancel��sk� rostliny - Podkategorie: Fikusy a palmy (Id=33)
  ('Fikus robusta',             33, N'Odoln� a kr�sn� fikus, kter� se hod� jak do dom�cnost�, tak kancel���.',              199.99, 40, 'https://example.com/images/fikus_robusta.jpg',         4,  70, 0),
  ('Palma elegant',             33, N'Elegantn� palma pro dod�n� p��rodn� atmosf�ry do interi�ru.',                          249.99, 30, 'https://example.com/images/palma_elegant.jpg',         4,  50, 0),
  
  -- 12) Pokojov� a kancel��sk� rostliny - Podkategorie: Bonsaje (Id=34)
  ('Japonsk� bonsaj',            34, N'Tradi�n� japonsk� bonsaj symbolizuj�c� klid a harmonii.',                              299.99, 20, 'https://example.com/images/japonsky_bonsaj.jpg',         5,  80, 1),
  
  -- 13) Pokojov� a kancel��sk� rostliny - Podkategorie: Bylinky a aromatick� rostliny (Id=35)
  ('Bazalka �erstv�',            35, N'�erstv� bazalka ide�ln� pro dochucen� j�del a dekoraci kuchyn�.',                       49.99, 200, 'https://example.com/images/bazalka.jpg',               4,  40, 0),
  ('M�ta peprn�',               35, N'Osv�uj�c� m�ta peprn� vhodn� pro p��pravu n�poj� i dezert�.',                          39.99, 180, 'https://example.com/images/mata_peprna.jpg',           3,  30, 0),
  
  -- 14) Svatebn� kv�tiny - Podkategorie: Svatebn� kytice (Id=41)
  ('Klasick� svatebn� kytice',    41, N'Elegantn� svatebn� kytice s kombinac� b�l�ch a r��ov�ch kv�tin pro nezapomenuteln� den.', 499.99, 10, 'https://example.com/images/klasicni_svatebni_kytice.jpg', 5, 100, 1),
  
  -- 15) Svatebn� kv�tiny - Podkategorie: V�zdoba svatebn�ho m�sta (Id=42)
  ('Kv�tinov� v�zdoba stol�',     42, N'Elegantn� aran�m� pro dekoraci svatebn�ch stol� a slavnostn�ch prostor.',           299.99, 15, 'https://example.com/images/vyzdoba_stolu.jpg',         4,  45, 0),
  
  -- 16) Svatebn� kv�tiny - Podkategorie: Corsage (kv�tinov� ozdoby) (Id=43)
  ('Elegantn� corsage',          43, N'Stylov� corsage, kter� dopln� vzhled nev�sty a je perfektn�m dopl�kem svatebn�ho dne.', 149.99, 25, 'https://example.com/images/elegantni_corsage.jpg',       4,  30, 0),
  
  -- 17) Svatebn� kv�tiny - Podkategorie: Dekorace do klopy (Id=44)
  ('Kv�tinov� dekorace do klopy',  44, N'Dekorace do klopy dod�vaj�c� prostoru jemn� kv�tinov� n�dech.',                     199.99, 20, 'https://example.com/images/dekorace_do_klopy.jpg',       4,  25, 0),
  
  -- 18) Smute�n� vazby - Podkategorie: Smute�n� kytice (Id=51)
  ('Smute�n� kytice b�l�ch r���', 51, N'Ok�zal� kytice b�l�ch r��� pro vyj�d�en� �cty a vzpom�nky.',                      399.99, 10, 'https://example.com/images/smutecni_kytice.jpg',        4,  20, 0),
  
  -- 19) Smute�n� vazby - Podkategorie: V�nce (Id=52)
  ('Klasick� v�nec',             52, N'Tradi�n� v�nec vhodn� k uct�n� pam�tky.',                                             249.99, 15, 'https://example.com/images/klasicky_venc.jpg',           3,  10, 0),
  
  -- 20) Smute�n� vazby - Podkategorie: Aran�m� na hroby (Id=53)
  ('Aran�m� na pam�tku',         53, N'Vkusn� aran�m� s jemn�mi kv�tinov�mi akcenty vhodn� na hroby.',                      199.99, 10, 'https://example.com/images/aranzma_na_hroby.jpg',        4,  15, 0),
  
  -- 21) Sezonn� a tematick� kv�tiny - Podkategorie: V�no�n� hv�zda (Poinsettia) (Id=61)
  ('Poinsettia �erven�',         61, N'Pestr� v�no�n� hv�zda s �erven�mi kv�ty pro slavnostn� atmosf�ru.',                    99.99,  30, 'https://example.com/images/poinsettia_cervena.jpg',     4,  40, 0),
  ('Poinsettia b�l�',            61, N'Elegantn� v�no�n� hv�zda s b�l�mi kv�ty pro klidnou atmosf�ru.',                       109.99, 25, 'https://example.com/images/poinsettia_bila.jpg',        4,  35, 0),
  
  -- 22) Sezonn� a tematick� kv�tiny - Podkategorie: Velikono�n� osen� a aran�m� (Id=62)
  ('Jarn� osen� aran�m�',         62, N'Kr�sn� aran�m� se sez�nn�m osen�m vhodn� pro Velikonoce a jarn� slavnosti.',          149.99, 20, 'https://example.com/images/jarni_oseni_aranzma.jpg',     4,  25, 0),
  
  -- 23) Sezonn� a tematick� kv�tiny - Podkategorie: Podzimn� dekorace (Id=63)
  ('Podzimn� dekorace s list�m',  63, N'Dekorace s barevn�m list�m vhodn� do podzimn�ch interi�r� a exteri�r�.',             129.99, 20, 'https://example.com/images/podzimni_dekorace.jpg',      3,  20, 0),
  
  -- 24) Sezonn� a tematick� kv�tiny - Podkategorie: Jarn� cibuloviny (Id=64)
  ('Jarn� cibulov� mix',         64, N'V�b�r jarn�ch cibulovin pro osv�en� va�eho domova.',                                  89.99,  30, 'https://example.com/images/jarni_cibuloviny.jpg',      4,  25, 0),
  
  -- 25) Zahradn� a venkovn� rostliny - Podkategorie: Letni�ky (Id=71)
  ('Letn� kytice letni�ek',       71, N'Kytice z letni�ek, ide�ln� pro osv�en� interi�ru b�hem hork�ch letn�ch dn�.',         79.99,  50, 'https://example.com/images/letsnice_kytice.jpg',       4,  15, 0),
  
  -- 26) Zahradn� a venkovn� rostliny - Podkategorie: Trvalky (Id=72)
  ('Elegantn� trvalka',           72, N'Trvalka, kter� dod� prostoru nad�asov� vzhled a p��rodn� eleganci.',                  59.99,  40, 'https://example.com/images/elegantni_trvalka.jpg',     4,  10, 0),
  
  -- 27) Zahradn� a venkovn� rostliny - Podkategorie: Ke�e a okrasn� d�eviny (Id=73)
  ('Dekorativn� ke�',            73, N'Mal� okrasn� ke� vhodn� pro zahradn� design a ter�nn� �pravy.',                         199.99, 20, 'https://example.com/images/dekorativni_ker.jpg',        4,  15, 0),
  
  -- 28) Zahradn� a venkovn� rostliny - Podkategorie: Cibuloviny (tulip�ny...) (Id=74)
  ('Jarn� tulip�ny',             74, N'Klasick� jarn� kytice tulip�n� pro osv�en� va�eho domova.',                           99.99,  30, 'https://example.com/images/jarni_tulipany.jpg',         4,  20, 0),
  
  -- 29) D�rkov� sady / sety - Podkategorie: Kytice + �okol�da (Id=81)
  ('Romantick� sada: Kytice + �okol�da', 81, N'Kombinace kr�sn� kytice a kvalitn� �okol�dy pro romantick� chv�le.',          249.99, 15, 'https://example.com/images/romanticka_sada_cokolada.jpg', 5, 50, 1),
  
  -- 30) D�rkov� sady / sety - Podkategorie: Kytice + v�no (Id=82)
  ('Deluxe sada: Kytice + v�no',  82, N'Exkluzivn� sada obsahuj�c� kytici a vybran� v�no pro slavnostn� p��le�itosti.',       299.99, 10, 'https://example.com/images/deluxe_sada_vino.jpg',       5, 45, 1),
  
  -- 31) D�rkov� sady / sety - Podkategorie: Kv�tinov� boxy (Id=83)
  ('Luxusn� kv�tinov� box',      83, N'Elegantn� kv�tinov� box s exkluzivn�m designem pro speci�ln� p��le�itosti.',         349.99, 8,  'https://example.com/images/luxusni_box.jpg',            5, 35, 1),
  
  -- 32) D�rkov� sady / sety - Podkategorie: Kv�tinov� p�edplatn� (Id=84)
  ('M�s��n� kv�tinov� p�edplatn�',84, N'P�edplatn�, kter� p�in�� �erstv� kv�tiny ka�d� m�s�c p��mo k v�m dom�.',         99.99, 100, 'https://example.com/images/mesicni_predplatne.jpg',     4, 60, 0),
  
  -- 33) Floristick� dopl�ky a dekorace - Podkategorie: V�zy, kv�tin��e, obaly (Id=91)
  ('Modern� v�za',              91, N'Stylov� modern� v�za vhodn� pro ka�dou kytici a aran�m�.',                              129.99, 25, 'https://example.com/images/moderni_vaza.jpg',          4, 30, 0),
  ('Dekorativn� kv�tin��',       91, N'Kreativn� kv�tin��, kter� o�iv� ka�d� interi�r sv�m designem.',                       89.99,  35, 'https://example.com/images/dekorativni_kvetinac.jpg',  3, 20, 0),
  
  -- 34) Floristick� dopl�ky a dekorace - Podkategorie: Stuhy, ozdoby, ma�le (Id=92)
  ('Elegantn� stu�ka',           92, N'Kvalitn� stu�ka, kter� dod� kytici elegantn� vzhled a �mrnc.',                         19.99, 100, 'https://example.com/images/elegantni_stuzka.jpg',       4, 25, 0),
  
  -- 35) Floristick� dopl�ky a dekorace - Podkategorie: P��e o kv�tiny (v��iva, le�tidla) (Id=93)
  ('Kv�tinov� v��iva',            93, N'Speci�ln� sm�s pro zaji�t�n� zdrav�ho r�stu a kr�sy va�ich kv�tin.',                 39.99,  60, 'https://example.com/images/kvetinova_vyziva.jpg',       4, 15, 0),
  
  -- 36) Floristick� dopl�ky a dekorace - Podkategorie: Dekora�n� materi�l (hmota...) (Id=94)
  ('Dekora�n� p�na',             94, N'P�na pro stabilizaci a aran�m� kv�tinov�ch dekorac�.',                               29.99,  50, 'https://example.com/images/dekoracni_pena.jpg',         3, 10, 0),
  
  -- 37) Kreativn� workshopy a slu�by - Podkategorie: Floristick� kurzy (Id=101)
  ('Z�klady floristick�ho um�n�',101, N'Kurz z�klad� floristick�ho um�n� pro za��te�n�ky s praktick�mi uk�zkami.',         499.99,  5, 'https://example.com/images/zaklady_floristiky.jpg',     5, 20, 1),
  
  -- 38) Kreativn� workshopy a slu�by - Podkategorie: Kv�tinov� v�zdoba interi�r� (Id=102)
  ('Interi�rov� kv�tinov� aran�m�',102, N'Kreativn� aran�m� pro vylep�en� interi�ru va�eho domova �i kancel��e.',          299.99, 10, 'https://example.com/images/interierova_aranzma.jpg',     4, 15, 0),
  
  -- 39) Kreativn� workshopy a slu�by - Podkategorie: Kompletn� svatebn� servis (Id=103)
  ('Svatebn� servis na kl��',    103, N'Kompletn� servis zahrnuj�c� n�vrh, p��pravu a realizaci svatebn�ch kv�tin.',           999.99, 3,  'https://example.com/images/svatebni_servis.jpg',       5, 10, 1)
;
