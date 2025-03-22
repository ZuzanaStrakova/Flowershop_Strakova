use dbFlowerShop
go

INSERT INTO Products (Name, CategoryId, Description, Price, StorageAmount, ImageUrl, Rating, RatingCount, IsTopProduct)
VALUES
  -- 1) Øezané kvìtiny - Podkategorie: Rùže (Id=11)
  ('Èervené rùže Deluxe', 11, N'Luxusní kytice èerstvých èervených rùží pro zvláštní pøíležitosti.', 349.99, 30, 'https://cdn.pixabay.com/photo/2014/04/10/11/29/roses-320868_1280.jpg', 5, 120, 1),
  ('Rùžová kytice', 11, N'Jemná kytice s rùžovými rùžemi vhodná pro každodenní radost.', 299.99, 40, 'https://cdn.pixabay.com/photo/2020/09/28/23/53/pink-rose-5610276_1280.jpg', 4, 90, 0),
  ('Bílé rùže', 11, N'Elegantní kytice bílých rùží symbolizující èistotu a noblesu.', 279.50, 25, 'https://cdn.pixabay.com/photo/2020/07/19/14/52/rose-5428494_1280.jpg', 4, 75, 0),
  
  -- 2) Øezané kvìtiny - Podkategorie: Tulipány (Id=12)
  ('Barevné tulipány', 12, N'Pestrá smìs tulipánù v rùzných odstínech pro radost každého domova.', 199.99, 50, 'https://cdn.pixabay.com/photo/2020/04/12/07/12/tulips-5036357_1280.jpg', 4, 100, 0),
  ('Tulipány mix', 12, N'Elegantní mix tulipánù s rùznými barvami vhodný pro slavnostní i bìžné pøíležitosti.', 219.99, 60, 'https://cdn.pixabay.com/photo/2015/03/26/09/39/tulips-690320_1280.jpg', 5, 150, 1),
  
  -- 3) Øezané kvìtiny - Podkategorie: Gerbery (Id=13)
  ('Žluté gerbery', 13, N'Žluté gerbery, které pøinášejí optimismus a pozitivní energii.', 159.99, 40, 'https://cdn.pixabay.com/photo/2014/10/21/19/39/yellow-gerbera-496757_1280.jpg', 4, 80, 0),
  ('Mix gerber', 13, N'Smìs rùznobarevných gerber vhodná pro každodenní radost a osvìžení interiéru.', 169.99, 35, 'https://cdn.pixabay.com/photo/2017/09/26/06/57/gerbera-2789562_1280.jpg', 4, 60, 0),
  
  -- 4) Øezané kvìtiny - Podkategorie: Lilie (Id=14)
  ('Bílé lilie', 14, N'Nádherné bílé lilie pro vyjádøení elegance a luxusu.', 189.99, 30, 'https://www.whiteflowerfarm.com/mas_assets/cache/image/6/5/a/6/26022.Jpg', 5, 90, 1),
  ('Rùžové lilie', 14, N'Krásné rùžové lilie, jemné a sofistikované, ideální do moderních interiérù.', 179.50, 25, 'https://cdn.pixabay.com/photo/2013/08/06/00/12/pink-lily-170637_1280.jpg', 4, 70, 0),
  
  -- 5) Øezané kvìtiny - Podkategorie: Chryzantémy (Id=15)
  ('Podzimní chryzantémy', 15, N'Kytice s chryzantémami vhodná pro podzimní dekorace a slavnostní pøíležitosti.', 129.99, 45, 'https://cdn.pixabay.com/photo/2016/11/21/12/53/chrysanthemums-1845975_1280.jpg', 4, 50, 0),
  ('Bílé chryzantémy', 15, N'Klasické bílé chryzantémy pro formální události a vzpomínkové chvíle.', 139.99, 40, 'https://cdn.pixabay.com/photo/2018/09/02/19/34/mums-3647011_1280.jpg', 3, 30, 0),
  
  -- 6) Kvìtinové kytice a aranže - Podkategorie: Dárkové kytice (Id=21)
  ('Luxusní dárková kytice', 21, N'Exkluzivní kytice s kombinací vybraných kvìtin a dekorací pro speciální dárek.', 399.99, 20, 'https://cdn.pixabay.com/photo/2020/05/11/16/26/florist-5156225_1280.jpg', 5, 110, 1),
  ('Mini dárková kytice', 21, N'Kompaktní kytice ideální jako malá pozornost pro vaše blízké.', 99.99, 70, 'https://cdn.pixabay.com/photo/2018/04/02/15/22/flowers-3287740_1280.jpg', 4, 40, 0),
  
  -- 7) Kvìtinové kytice a aranže - Podkategorie: Slavnostní aranžmá (Id=22)
  ('Zlaté aranžmá', 22, N'Nádherné aranžmá se zlatými akcenty pro slavnostní pøíležitosti.', 499.99, 15, 'https://cdn.pixabay.com/photo/2016/07/28/02/55/flowers-1544316_1280.jpg', 5, 85, 1),
  ('Elegantní aranžmá', 22, N'Stylové aranžmá vhodné pro oslavy a formální akce.', 359.99, 25, 'https://cdn.pixabay.com/photo/2018/10/12/19/55/flowers-3748227_1280.jpg', 4, 60, 0),
  
  -- 8) Kvìtinové kytice a aranže - Podkategorie: Firemní aranžmá (Id=23)
  ('Firemní kvìtinové aranžmá', 23, N'Moderní aranžmá pro kanceláøské prostory a firemní interiéry.', 279.99, 30, 'https://cdn.pixabay.com/photo/2015/06/24/00/11/floral-arrangement-820487_1280.jpg', 4, 45, 0),
  
  -- 9) Pokojové a kanceláøské rostliny - Podkategorie: Sukulenty a kaktusy (Id=31)
  ('Mix sukulentù', 31, N'Kreativní mix sukulentù a kaktusù pro dodání pøírodního nádechu do interiéru.', 149.99, 100, 'https://cdn.pixabay.com/photo/2016/11/22/19/30/succulents-1850895_1280.jpg', 4, 35, 0),
  ('Kaktusová kompozice', 31, N'Originální kaktusová kompozice pro milovníky neobvyklých a odolných rostlin.', 129.99, 80, 'https://cdn.pixabay.com/photo/2016/10/12/23/08/cactus-1737282_1280.jpg', 3, 25, 0),
  
  -- 10) Pokojové a kanceláøské rostliny - Podkategorie: Orchideje (Id=32)
  ('Bílá orchidej', 32, N'Elegantní bílá orchidej pro luxusní interiéry a slavnostní okamžiky.', 399.99, 20, 'https://cdn.pixabay.com/photo/2016/11/23/15/37/orchid-1852443_1280.jpg', 5, 60, 1),
  ('Rùžová orchidej', 32, N'Nìžná rùžová orchidej s exkluzivním vzhledem vhodná do moderních prostor.', 389.99, 15, 'https://cdn.pixabay.com/photo/2018/08/15/16/46/flower-3614582_1280.jpg', 4, 55, 0),
  
  -- 11) Pokojové a kanceláøské rostliny - Podkategorie: Fikusy a palmy (Id=33)
  ('Fikus robusta', 33, N'Odolný a krásný fikus, který se hodí jak do domácností, tak kanceláøí.', 199.99, 40, 'https://cdn.pixabay.com/photo/2018/05/15/23/32/tree-3407556_1280.jpg', 4, 70, 0),
  ('Palma elegant', 33, N'Elegantní palma pro dodání pøírodní atmosféry do interiéru.', 249.99, 30, 'https://cdn.pixabay.com/photo/2016/10/13/09/06/palm-1739824_1280.jpg', 4, 50, 0),
  
  -- 12) Pokojové a kanceláøské rostliny - Podkategorie: Bonsaje (Id=34)
  ('Japonský bonsaj', 34, N'Tradièní japonský bonsaj symbolizující klid a harmonii.', 299.99, 20, 'https://cdn.pixabay.com/photo/2016/08/28/23/06/bonsai-1622586_1280.jpg', 5, 80, 1),
  
  -- 13) Pokojové a kanceláøské rostliny - Podkategorie: Bylinky a aromatické rostliny (Id=35)
  ('Bazalka èerstvá', 35, N'Èerstvá bazalka ideální pro dochucení jídel a dekoraci kuchynì.', 49.99, 200, 'https://cdn.pixabay.com/photo/2014/04/10/11/00/basil-320733_1280.jpg', 4, 40, 0),
  ('Máta peprná', 35, N'Osvìžující máta peprná vhodná pro pøípravu nápojù i dezertù.', 39.99, 180, 'https://cdn.pixabay.com/photo/2014/12/21/23/28/mint-575438_1280.jpg', 3, 30, 0),
  
  -- 14) Svatební kvìtiny - Podkategorie: Svatební kytice (Id=41)
  ('Klasická svatební kytice', 41, N'Elegantní svatební kytice s kombinací bílých a rùžových kvìtin pro nezapomenutelný den.', 499.99, 10, 'https://cdn.pixabay.com/photo/2017/03/27/15/32/bridal-bouquet-2178581_1280.jpg', 5, 100, 1),
  
  -- 15) Svatební kvìtiny - Podkategorie: Výzdoba svatebního místa (Id=42)
  ('Kvìtinová výzdoba stolù', 42, N'Elegantní aranžmá pro dekoraci svatebních stolù a slavnostních prostor.', 299.99, 15, 'https://cdn.pixabay.com/photo/2017/07/22/09/16/table-decoration-2523978_1280.jpg', 4, 45, 0),
  
  -- 16) Svatební kvìtiny - Podkategorie: Corsage (kvìtinové ozdoby) (Id=43)
  ('Elegantní corsage', 43, N'Stylový corsage, který doplní vzhled nevìsty a je perfektním doplòkem svatebního dne.', 149.99, 25, 'https://cdn.pixabay.com/photo/2017/08/03/17/21/wrist-corsage-2571967_1280.jpg', 4, 30, 0),
  
  -- 17) Svatební kvìtiny - Podkategorie: Dekorace do klopy (Id=44)
  ('Kvìtinové dekorace do klopy', 44, N'Dekorace do klopy dodávající prostoru jemný kvìtinový nádech.', 199.99, 20, 'https://cdn.pixabay.com/photo/2018/06/13/22/32/flowers-3473110_1280.jpg', 4, 25, 0),
  
  -- 18) Smuteèní vazby - Podkategorie: Smuteèní kytice (Id=51)
  ('Smuteèní kytice bílých rùží', 51, N'Okázalá kytice bílých rùží pro vyjádøení úcty a vzpomínky.', 399.99, 10, 'https://cdn.pixabay.com/photo/2020/04/04/11/47/roses-5004136_1280.jpg', 4, 20, 0),
  
  -- 19) Smuteèní vazby - Podkategorie: Vìnce (Id=52)
  ('Klasický vìnec', 52, N'Tradièní vìnec vhodný k uctìní památky.', 249.99, 15, 'https://cdn.pixabay.com/photo/2017/10/16/14/16/wreath-2855876_1280.jpg', 3, 10, 0),
  
  -- 20) Smuteèní vazby - Podkategorie: Aranžmá na hroby (Id=53)
  ('Aranžmá na památku', 53, N'Vkusné aranžmá s jemnými kvìtinovými akcenty vhodné na hroby.', 199.99, 10, 'https://cdn.pixabay.com/photo/2016/03/30/10/10/roses-1284224_1280.jpg', 4, 15, 0),
  
  -- 21) Sezonní a tematické kvìtiny - Podkategorie: Vánoèní hvìzda (Poinsettia) (Id=61)
  ('Poinsettia èervená', 61, N'Pestrá vánoèní hvìzda s èervenými kvìty pro slavnostní atmosféru.', 99.99, 30, 'https://cdn.pixabay.com/photo/2015/12/19/21/59/poinsettia-1107060_1280.jpg', 4, 40, 0),
  ('Poinsettia bílá', 61, N'Elegantní vánoèní hvìzda s bílými kvìty pro klidnou atmosféru.', 109.99, 25, 'https://cdn.pixabay.com/photo/2020/11/29/19/54/poinsettia-5787778_1280.jpg', 4, 35, 0),
  
  -- 22) Sezonní a tematické kvìtiny - Podkategorie: Velikonoèní osení a aranžmá (Id=62)
  ('Jarní osení aranžmá', 62, N'Krásné aranžmá se sezónním osením vhodné pro Velikonoce a jarní slavnosti.', 149.99, 20, 'https://cdn.pixabay.com/photo/2015/04/20/13/00/easter-731492_1280.jpg', 4, 25, 0),
  
  -- 23) Sezonní a tematické kvìtiny - Podkategorie: Podzimní dekorace (Id=63)
  ('Podzimní dekorace s listím', 63, N'Dekorace s barevným listím vhodné do podzimních interiérù a exteriérù.', 129.99, 20, 'https://cdn.pixabay.com/photo/2019/09/05/17/48/autumn-4456651_1280.jpg', 3, 20, 0),
  
  -- 24) Sezonní a tematické kvìtiny - Podkategorie: Jarní cibuloviny (Id=64)
  ('Jarní cibulový mix', 64, N'Výbìr jarních cibulovin pro osvìžení vašeho domova.', 89.99, 30, 'https://cdn.pixabay.com/photo/2017/03/27/15/32/crocus-2178569_1280.jpg', 4, 25, 0),
  
  -- 25) Zahradní a venkovní rostliny - Podkategorie: Letnièky (Id=71)
  ('Letní kytice letnièek', 71, N'Kytice z letnièek, ideální pro osvìžení interiéru bìhem horkých letních dnù.', 79.99, 50, 'https://cdn.pixabay.com/photo/2017/05/26/20/23/flowers-2345289_1280.jpg', 4, 15, 0),
  
  -- 26) Zahradní a venkovní rostliny - Podkategorie: Trvalky (Id=72)
  ('Elegantní trvalka', 72, N'Trvalka, která dodá prostoru nadèasový vzhled a pøírodní eleganci.', 59.99, 40, 'https://cdn.pixabay.com/photo/2020/05/10/17/06/purple-lupine-5156911_1280.jpg', 4, 10, 0),
  
  -- 27) Zahradní a venkovní rostliny - Podkategorie: Keøe a okrasné døeviny (Id=73)
  ('Dekorativní keø', 73, N'Malý okrasný keø vhodný pro zahradní design a terénní úpravy.', 199.99, 20, 'https://cdn.pixabay.com/photo/2014/11/21/17/17/shrub-540675_1280.jpg', 4, 15, 0),
  
  -- 28) Zahradní a venkovní rostliny - Podkategorie: Cibuloviny (tulipány...) (Id=74)
  ('Jarní tulipány', 74, N'Klasická jarní kytice tulipánù pro osvìžení vašeho domova.', 99.99, 30, 'https://cdn.pixabay.com/photo/2014/03/07/21/59/tulips-283612_1280.jpg', 4, 20, 0),
  
  -- 29) Dárkové sady / sety - Podkategorie: Kytice + èokoláda (Id=81)
  ('Romantická sada: Kytice + èokoláda', 81, N'Kombinace krásné kytice a kvalitní èokolády pro romantické chvíle.', 249.99, 15, 'https://cdn.pixabay.com/photo/2018/06/02/23/49/roses-3446849_1280.jpg', 5, 50, 1),
  
  -- 30) Dárkové sady / sety - Podkategorie: Kytice + víno (Id=82)
  ('Deluxe sada: Kytice + víno', 82, N'Exkluzivní sada obsahující kytici a vybrané víno pro slavnostní pøíležitosti.', 299.99, 10, 'https://cdn.pixabay.com/photo/2016/04/08/19/21/red-wine-1318304_1280.jpg', 5, 45, 1),
  
  -- 31) Dárkové sady / sety - Podkategorie: Kvìtinové boxy (Id=83)
  ('Luxusní kvìtinový box', 83, N'Elegantní kvìtinový box s exkluzivním designem pro speciální pøíležitosti.', 349.99, 8, 'https://cdn.pixabay.com/photo/2017/12/27/11/24/roses-3041429_1280.jpg', 5, 35, 1),
  
  -- 32) Dárkové sady / sety - Podkategorie: Kvìtinová pøedplatná (Id=84)
  ('Mìsíèní kvìtinová pøedplatná', 84, N'Pøedplatné, které pøináší èerstvé kvìtiny každý mìsíc pøímo k vám domù.', 99.99, 100, 'https://cdn.pixabay.com/photo/2015/05/15/14/47/flower-bouquet-768305_1280.jpg', 4, 60, 0),
  
  -- 33) Floristické doplòky a dekorace - Podkategorie: Vázy, kvìtináèe, obaly (Id=91)
  ('Moderní váza', 91, N'Stylová moderní váza vhodná pro každou kytici a aranžmá.', 129.99, 25, 'https://cdn.pixabay.com/photo/2017/06/16/08/44/vase-2403642_1280.jpg', 4, 30, 0),
  ('Dekorativní kvìtináè', 91, N'Kreativní kvìtináè, který oživí každý interiér svým designem.', 89.99, 35, 'https://cdn.pixabay.com/photo/2016/12/27/18/56/pots-1936642_1280.jpg', 3, 20, 0),
  
  -- 34) Floristické doplòky a dekorace - Podkategorie: Stuhy, ozdoby, mašle (Id=92)
  ('Elegantní stužka', 92, N'Kvalitní stužka, která dodá kytici elegantní vzhled a šmrnc.', 19.99, 100, 'https://cdn.pixabay.com/photo/2017/09/02/14/56/bow-2709592_1280.jpg', 4, 25, 0),
  
  -- 35) Floristické doplòky a dekorace - Podkategorie: Péèe o kvìtiny (výživa, leštidla) (Id=93)
  ('Kvìtinová výživa', 93, N'Speciální smìs pro zajištìní zdravého rùstu a krásy vašich kvìtin.', 39.99, 60, 'https://cdn.pixabay.com/photo/2016/06/24/16/00/petals-1477721_1280.jpg', 4, 15, 0),
  
  -- 36) Floristické doplòky a dekorace - Podkategorie: Dekoraèní materiál (hmota...) (Id=94)
  ('Dekoraèní pìna', 94, N'Pìna pro stabilizaci a aranžmá kvìtinových dekorací.', 29.99, 50, 'https://cdn.pixabay.com/photo/2016/06/03/16/25/flowers-1430320_1280.jpg', 3, 10, 0),
  
  -- 37) Kreativní workshopy a služby - Podkategorie: Floristické kurzy (Id=101)
  ('Základy floristického umìní', 101, N'Kurz základù floristického umìní pro zaèáteèníky s praktickými ukázkami.', 499.99, 5, 'https://cdn.pixabay.com/photo/2017/01/17/11/26/woman-1987846_1280.jpg', 5, 20, 1),
  
  -- 38) Kreativní workshopy a služby - Podkategorie: Kvìtinová výzdoba interiérù (Id=102)
  ('Interiérová kvìtinová aranžmá', 102, N'Kreativní aranžmá pro vylepšení interiéru vašeho domova èi kanceláøe.', 299.99, 10, 'https://cdn.pixabay.com/photo/2016/09/18/17/32/flowers-1671688_1280.jpg', 4, 15, 0),
  
  -- 39) Kreativní workshopy a služby - Podkategorie: Kompletní svatební servis (Id=103)
  ('Svatební servis na klíè', 103, N'Kompletní servis zahrnující návrh, pøípravu a realizaci svatebních kvìtin.', 999.99, 3, 'https://cdn.pixabay.com/photo/2018/09/29/22/07/wedding-3717310_1280.jpg', 5, 10, 1)