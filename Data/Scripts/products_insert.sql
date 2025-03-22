use dbFlowerShop
go

INSERT INTO Products (Name, CategoryId, Description, Price, StorageAmount, ImageUrl, Rating, RatingCount, IsTopProduct)
VALUES
  -- 1) �ezan� kv�tiny - Podkategorie: R��e (Id=11)
  ('�erven� r��e Deluxe', 11, N'Luxusn� kytice �erstv�ch �erven�ch r��� pro zvl�tn� p��le�itosti.', 349.99, 30, 'https://cdn.pixabay.com/photo/2014/04/10/11/29/roses-320868_1280.jpg', 5, 120, 1),
  ('R��ov� kytice', 11, N'Jemn� kytice s r��ov�mi r��emi vhodn� pro ka�dodenn� radost.', 299.99, 40, 'https://cdn.pixabay.com/photo/2020/09/28/23/53/pink-rose-5610276_1280.jpg', 4, 90, 0),
  ('B�l� r��e', 11, N'Elegantn� kytice b�l�ch r��� symbolizuj�c� �istotu a noblesu.', 279.50, 25, 'https://cdn.pixabay.com/photo/2020/07/19/14/52/rose-5428494_1280.jpg', 4, 75, 0),
  
  -- 2) �ezan� kv�tiny - Podkategorie: Tulip�ny (Id=12)
  ('Barevn� tulip�ny', 12, N'Pestr� sm�s tulip�n� v r�zn�ch odst�nech pro radost ka�d�ho domova.', 199.99, 50, 'https://cdn.pixabay.com/photo/2020/04/12/07/12/tulips-5036357_1280.jpg', 4, 100, 0),
  ('Tulip�ny mix', 12, N'Elegantn� mix tulip�n� s r�zn�mi barvami vhodn� pro slavnostn� i b�n� p��le�itosti.', 219.99, 60, 'https://cdn.pixabay.com/photo/2015/03/26/09/39/tulips-690320_1280.jpg', 5, 150, 1),
  
  -- 3) �ezan� kv�tiny - Podkategorie: Gerbery (Id=13)
  ('�lut� gerbery', 13, N'�lut� gerbery, kter� p�in�ej� optimismus a pozitivn� energii.', 159.99, 40, 'https://cdn.pixabay.com/photo/2014/10/21/19/39/yellow-gerbera-496757_1280.jpg', 4, 80, 0),
  ('Mix gerber', 13, N'Sm�s r�znobarevn�ch gerber vhodn� pro ka�dodenn� radost a osv�en� interi�ru.', 169.99, 35, 'https://cdn.pixabay.com/photo/2017/09/26/06/57/gerbera-2789562_1280.jpg', 4, 60, 0),
  
  -- 4) �ezan� kv�tiny - Podkategorie: Lilie (Id=14)
  ('B�l� lilie', 14, N'N�dhern� b�l� lilie pro vyj�d�en� elegance a luxusu.', 189.99, 30, 'https://www.whiteflowerfarm.com/mas_assets/cache/image/6/5/a/6/26022.Jpg', 5, 90, 1),
  ('R��ov� lilie', 14, N'Kr�sn� r��ov� lilie, jemn� a sofistikovan�, ide�ln� do modern�ch interi�r�.', 179.50, 25, 'https://cdn.pixabay.com/photo/2013/08/06/00/12/pink-lily-170637_1280.jpg', 4, 70, 0),
  
  -- 5) �ezan� kv�tiny - Podkategorie: Chryzant�my (Id=15)
  ('Podzimn� chryzant�my', 15, N'Kytice s chryzant�mami vhodn� pro podzimn� dekorace a slavnostn� p��le�itosti.', 129.99, 45, 'https://cdn.pixabay.com/photo/2016/11/21/12/53/chrysanthemums-1845975_1280.jpg', 4, 50, 0),
  ('B�l� chryzant�my', 15, N'Klasick� b�l� chryzant�my pro form�ln� ud�losti a vzpom�nkov� chv�le.', 139.99, 40, 'https://cdn.pixabay.com/photo/2018/09/02/19/34/mums-3647011_1280.jpg', 3, 30, 0),
  
  -- 6) Kv�tinov� kytice a aran�e - Podkategorie: D�rkov� kytice (Id=21)
  ('Luxusn� d�rkov� kytice', 21, N'Exkluzivn� kytice s kombinac� vybran�ch kv�tin a dekorac� pro speci�ln� d�rek.', 399.99, 20, 'https://cdn.pixabay.com/photo/2020/05/11/16/26/florist-5156225_1280.jpg', 5, 110, 1),
  ('Mini d�rkov� kytice', 21, N'Kompaktn� kytice ide�ln� jako mal� pozornost pro va�e bl�zk�.', 99.99, 70, 'https://cdn.pixabay.com/photo/2018/04/02/15/22/flowers-3287740_1280.jpg', 4, 40, 0),
  
  -- 7) Kv�tinov� kytice a aran�e - Podkategorie: Slavnostn� aran�m� (Id=22)
  ('Zlat� aran�m�', 22, N'N�dhern� aran�m� se zlat�mi akcenty pro slavnostn� p��le�itosti.', 499.99, 15, 'https://cdn.pixabay.com/photo/2016/07/28/02/55/flowers-1544316_1280.jpg', 5, 85, 1),
  ('Elegantn� aran�m�', 22, N'Stylov� aran�m� vhodn� pro oslavy a form�ln� akce.', 359.99, 25, 'https://cdn.pixabay.com/photo/2018/10/12/19/55/flowers-3748227_1280.jpg', 4, 60, 0),
  
  -- 8) Kv�tinov� kytice a aran�e - Podkategorie: Firemn� aran�m� (Id=23)
  ('Firemn� kv�tinov� aran�m�', 23, N'Modern� aran�m� pro kancel��sk� prostory a firemn� interi�ry.', 279.99, 30, 'https://cdn.pixabay.com/photo/2015/06/24/00/11/floral-arrangement-820487_1280.jpg', 4, 45, 0),
  
  -- 9) Pokojov� a kancel��sk� rostliny - Podkategorie: Sukulenty a kaktusy (Id=31)
  ('Mix sukulent�', 31, N'Kreativn� mix sukulent� a kaktus� pro dod�n� p��rodn�ho n�dechu do interi�ru.', 149.99, 100, 'https://cdn.pixabay.com/photo/2016/11/22/19/30/succulents-1850895_1280.jpg', 4, 35, 0),
  ('Kaktusov� kompozice', 31, N'Origin�ln� kaktusov� kompozice pro milovn�ky neobvykl�ch a odoln�ch rostlin.', 129.99, 80, 'https://cdn.pixabay.com/photo/2016/10/12/23/08/cactus-1737282_1280.jpg', 3, 25, 0),
  
  -- 10) Pokojov� a kancel��sk� rostliny - Podkategorie: Orchideje (Id=32)
  ('B�l� orchidej', 32, N'Elegantn� b�l� orchidej pro luxusn� interi�ry a slavnostn� okam�iky.', 399.99, 20, 'https://cdn.pixabay.com/photo/2016/11/23/15/37/orchid-1852443_1280.jpg', 5, 60, 1),
  ('R��ov� orchidej', 32, N'N�n� r��ov� orchidej s exkluzivn�m vzhledem vhodn� do modern�ch prostor.', 389.99, 15, 'https://cdn.pixabay.com/photo/2018/08/15/16/46/flower-3614582_1280.jpg', 4, 55, 0),
  
  -- 11) Pokojov� a kancel��sk� rostliny - Podkategorie: Fikusy a palmy (Id=33)
  ('Fikus robusta', 33, N'Odoln� a kr�sn� fikus, kter� se hod� jak do dom�cnost�, tak kancel���.', 199.99, 40, 'https://cdn.pixabay.com/photo/2018/05/15/23/32/tree-3407556_1280.jpg', 4, 70, 0),
  ('Palma elegant', 33, N'Elegantn� palma pro dod�n� p��rodn� atmosf�ry do interi�ru.', 249.99, 30, 'https://cdn.pixabay.com/photo/2016/10/13/09/06/palm-1739824_1280.jpg', 4, 50, 0),
  
  -- 12) Pokojov� a kancel��sk� rostliny - Podkategorie: Bonsaje (Id=34)
  ('Japonsk� bonsaj', 34, N'Tradi�n� japonsk� bonsaj symbolizuj�c� klid a harmonii.', 299.99, 20, 'https://cdn.pixabay.com/photo/2016/08/28/23/06/bonsai-1622586_1280.jpg', 5, 80, 1),
  
  -- 13) Pokojov� a kancel��sk� rostliny - Podkategorie: Bylinky a aromatick� rostliny (Id=35)
  ('Bazalka �erstv�', 35, N'�erstv� bazalka ide�ln� pro dochucen� j�del a dekoraci kuchyn�.', 49.99, 200, 'https://cdn.pixabay.com/photo/2014/04/10/11/00/basil-320733_1280.jpg', 4, 40, 0),
  ('M�ta peprn�', 35, N'Osv�uj�c� m�ta peprn� vhodn� pro p��pravu n�poj� i dezert�.', 39.99, 180, 'https://cdn.pixabay.com/photo/2014/12/21/23/28/mint-575438_1280.jpg', 3, 30, 0),
  
  -- 14) Svatebn� kv�tiny - Podkategorie: Svatebn� kytice (Id=41)
  ('Klasick� svatebn� kytice', 41, N'Elegantn� svatebn� kytice s kombinac� b�l�ch a r��ov�ch kv�tin pro nezapomenuteln� den.', 499.99, 10, 'https://cdn.pixabay.com/photo/2017/03/27/15/32/bridal-bouquet-2178581_1280.jpg', 5, 100, 1),
  
  -- 15) Svatebn� kv�tiny - Podkategorie: V�zdoba svatebn�ho m�sta (Id=42)
  ('Kv�tinov� v�zdoba stol�', 42, N'Elegantn� aran�m� pro dekoraci svatebn�ch stol� a slavnostn�ch prostor.', 299.99, 15, 'https://cdn.pixabay.com/photo/2017/07/22/09/16/table-decoration-2523978_1280.jpg', 4, 45, 0),
  
  -- 16) Svatebn� kv�tiny - Podkategorie: Corsage (kv�tinov� ozdoby) (Id=43)
  ('Elegantn� corsage', 43, N'Stylov� corsage, kter� dopln� vzhled nev�sty a je perfektn�m dopl�kem svatebn�ho dne.', 149.99, 25, 'https://cdn.pixabay.com/photo/2017/08/03/17/21/wrist-corsage-2571967_1280.jpg', 4, 30, 0),
  
  -- 17) Svatebn� kv�tiny - Podkategorie: Dekorace do klopy (Id=44)
  ('Kv�tinov� dekorace do klopy', 44, N'Dekorace do klopy dod�vaj�c� prostoru jemn� kv�tinov� n�dech.', 199.99, 20, 'https://cdn.pixabay.com/photo/2018/06/13/22/32/flowers-3473110_1280.jpg', 4, 25, 0),
  
  -- 18) Smute�n� vazby - Podkategorie: Smute�n� kytice (Id=51)
  ('Smute�n� kytice b�l�ch r���', 51, N'Ok�zal� kytice b�l�ch r��� pro vyj�d�en� �cty a vzpom�nky.', 399.99, 10, 'https://cdn.pixabay.com/photo/2020/04/04/11/47/roses-5004136_1280.jpg', 4, 20, 0),
  
  -- 19) Smute�n� vazby - Podkategorie: V�nce (Id=52)
  ('Klasick� v�nec', 52, N'Tradi�n� v�nec vhodn� k uct�n� pam�tky.', 249.99, 15, 'https://cdn.pixabay.com/photo/2017/10/16/14/16/wreath-2855876_1280.jpg', 3, 10, 0),
  
  -- 20) Smute�n� vazby - Podkategorie: Aran�m� na hroby (Id=53)
  ('Aran�m� na pam�tku', 53, N'Vkusn� aran�m� s jemn�mi kv�tinov�mi akcenty vhodn� na hroby.', 199.99, 10, 'https://cdn.pixabay.com/photo/2016/03/30/10/10/roses-1284224_1280.jpg', 4, 15, 0),
  
  -- 21) Sezonn� a tematick� kv�tiny - Podkategorie: V�no�n� hv�zda (Poinsettia) (Id=61)
  ('Poinsettia �erven�', 61, N'Pestr� v�no�n� hv�zda s �erven�mi kv�ty pro slavnostn� atmosf�ru.', 99.99, 30, 'https://cdn.pixabay.com/photo/2015/12/19/21/59/poinsettia-1107060_1280.jpg', 4, 40, 0),
  ('Poinsettia b�l�', 61, N'Elegantn� v�no�n� hv�zda s b�l�mi kv�ty pro klidnou atmosf�ru.', 109.99, 25, 'https://cdn.pixabay.com/photo/2020/11/29/19/54/poinsettia-5787778_1280.jpg', 4, 35, 0),
  
  -- 22) Sezonn� a tematick� kv�tiny - Podkategorie: Velikono�n� osen� a aran�m� (Id=62)
  ('Jarn� osen� aran�m�', 62, N'Kr�sn� aran�m� se sez�nn�m osen�m vhodn� pro Velikonoce a jarn� slavnosti.', 149.99, 20, 'https://cdn.pixabay.com/photo/2015/04/20/13/00/easter-731492_1280.jpg', 4, 25, 0),
  
  -- 23) Sezonn� a tematick� kv�tiny - Podkategorie: Podzimn� dekorace (Id=63)
  ('Podzimn� dekorace s list�m', 63, N'Dekorace s barevn�m list�m vhodn� do podzimn�ch interi�r� a exteri�r�.', 129.99, 20, 'https://cdn.pixabay.com/photo/2019/09/05/17/48/autumn-4456651_1280.jpg', 3, 20, 0),
  
  -- 24) Sezonn� a tematick� kv�tiny - Podkategorie: Jarn� cibuloviny (Id=64)
  ('Jarn� cibulov� mix', 64, N'V�b�r jarn�ch cibulovin pro osv�en� va�eho domova.', 89.99, 30, 'https://cdn.pixabay.com/photo/2017/03/27/15/32/crocus-2178569_1280.jpg', 4, 25, 0),
  
  -- 25) Zahradn� a venkovn� rostliny - Podkategorie: Letni�ky (Id=71)
  ('Letn� kytice letni�ek', 71, N'Kytice z letni�ek, ide�ln� pro osv�en� interi�ru b�hem hork�ch letn�ch dn�.', 79.99, 50, 'https://cdn.pixabay.com/photo/2017/05/26/20/23/flowers-2345289_1280.jpg', 4, 15, 0),
  
  -- 26) Zahradn� a venkovn� rostliny - Podkategorie: Trvalky (Id=72)
  ('Elegantn� trvalka', 72, N'Trvalka, kter� dod� prostoru nad�asov� vzhled a p��rodn� eleganci.', 59.99, 40, 'https://cdn.pixabay.com/photo/2020/05/10/17/06/purple-lupine-5156911_1280.jpg', 4, 10, 0),
  
  -- 27) Zahradn� a venkovn� rostliny - Podkategorie: Ke�e a okrasn� d�eviny (Id=73)
  ('Dekorativn� ke�', 73, N'Mal� okrasn� ke� vhodn� pro zahradn� design a ter�nn� �pravy.', 199.99, 20, 'https://cdn.pixabay.com/photo/2014/11/21/17/17/shrub-540675_1280.jpg', 4, 15, 0),
  
  -- 28) Zahradn� a venkovn� rostliny - Podkategorie: Cibuloviny (tulip�ny...) (Id=74)
  ('Jarn� tulip�ny', 74, N'Klasick� jarn� kytice tulip�n� pro osv�en� va�eho domova.', 99.99, 30, 'https://cdn.pixabay.com/photo/2014/03/07/21/59/tulips-283612_1280.jpg', 4, 20, 0),
  
  -- 29) D�rkov� sady / sety - Podkategorie: Kytice + �okol�da (Id=81)
  ('Romantick� sada: Kytice + �okol�da', 81, N'Kombinace kr�sn� kytice a kvalitn� �okol�dy pro romantick� chv�le.', 249.99, 15, 'https://cdn.pixabay.com/photo/2018/06/02/23/49/roses-3446849_1280.jpg', 5, 50, 1),
  
  -- 30) D�rkov� sady / sety - Podkategorie: Kytice + v�no (Id=82)
  ('Deluxe sada: Kytice + v�no', 82, N'Exkluzivn� sada obsahuj�c� kytici a vybran� v�no pro slavnostn� p��le�itosti.', 299.99, 10, 'https://cdn.pixabay.com/photo/2016/04/08/19/21/red-wine-1318304_1280.jpg', 5, 45, 1),
  
  -- 31) D�rkov� sady / sety - Podkategorie: Kv�tinov� boxy (Id=83)
  ('Luxusn� kv�tinov� box', 83, N'Elegantn� kv�tinov� box s exkluzivn�m designem pro speci�ln� p��le�itosti.', 349.99, 8, 'https://cdn.pixabay.com/photo/2017/12/27/11/24/roses-3041429_1280.jpg', 5, 35, 1),
  
  -- 32) D�rkov� sady / sety - Podkategorie: Kv�tinov� p�edplatn� (Id=84)
  ('M�s��n� kv�tinov� p�edplatn�', 84, N'P�edplatn�, kter� p�in�� �erstv� kv�tiny ka�d� m�s�c p��mo k v�m dom�.', 99.99, 100, 'https://cdn.pixabay.com/photo/2015/05/15/14/47/flower-bouquet-768305_1280.jpg', 4, 60, 0),
  
  -- 33) Floristick� dopl�ky a dekorace - Podkategorie: V�zy, kv�tin��e, obaly (Id=91)
  ('Modern� v�za', 91, N'Stylov� modern� v�za vhodn� pro ka�dou kytici a aran�m�.', 129.99, 25, 'https://cdn.pixabay.com/photo/2017/06/16/08/44/vase-2403642_1280.jpg', 4, 30, 0),
  ('Dekorativn� kv�tin��', 91, N'Kreativn� kv�tin��, kter� o�iv� ka�d� interi�r sv�m designem.', 89.99, 35, 'https://cdn.pixabay.com/photo/2016/12/27/18/56/pots-1936642_1280.jpg', 3, 20, 0),
  
  -- 34) Floristick� dopl�ky a dekorace - Podkategorie: Stuhy, ozdoby, ma�le (Id=92)
  ('Elegantn� stu�ka', 92, N'Kvalitn� stu�ka, kter� dod� kytici elegantn� vzhled a �mrnc.', 19.99, 100, 'https://cdn.pixabay.com/photo/2017/09/02/14/56/bow-2709592_1280.jpg', 4, 25, 0),
  
  -- 35) Floristick� dopl�ky a dekorace - Podkategorie: P��e o kv�tiny (v��iva, le�tidla) (Id=93)
  ('Kv�tinov� v��iva', 93, N'Speci�ln� sm�s pro zaji�t�n� zdrav�ho r�stu a kr�sy va�ich kv�tin.', 39.99, 60, 'https://cdn.pixabay.com/photo/2016/06/24/16/00/petals-1477721_1280.jpg', 4, 15, 0),
  
  -- 36) Floristick� dopl�ky a dekorace - Podkategorie: Dekora�n� materi�l (hmota...) (Id=94)
  ('Dekora�n� p�na', 94, N'P�na pro stabilizaci a aran�m� kv�tinov�ch dekorac�.', 29.99, 50, 'https://cdn.pixabay.com/photo/2016/06/03/16/25/flowers-1430320_1280.jpg', 3, 10, 0),
  
  -- 37) Kreativn� workshopy a slu�by - Podkategorie: Floristick� kurzy (Id=101)
  ('Z�klady floristick�ho um�n�', 101, N'Kurz z�klad� floristick�ho um�n� pro za��te�n�ky s praktick�mi uk�zkami.', 499.99, 5, 'https://cdn.pixabay.com/photo/2017/01/17/11/26/woman-1987846_1280.jpg', 5, 20, 1),
  
  -- 38) Kreativn� workshopy a slu�by - Podkategorie: Kv�tinov� v�zdoba interi�r� (Id=102)
  ('Interi�rov� kv�tinov� aran�m�', 102, N'Kreativn� aran�m� pro vylep�en� interi�ru va�eho domova �i kancel��e.', 299.99, 10, 'https://cdn.pixabay.com/photo/2016/09/18/17/32/flowers-1671688_1280.jpg', 4, 15, 0),
  
  -- 39) Kreativn� workshopy a slu�by - Podkategorie: Kompletn� svatebn� servis (Id=103)
  ('Svatebn� servis na kl��', 103, N'Kompletn� servis zahrnuj�c� n�vrh, p��pravu a realizaci svatebn�ch kv�tin.', 999.99, 3, 'https://cdn.pixabay.com/photo/2018/09/29/22/07/wedding-3717310_1280.jpg', 5, 10, 1)