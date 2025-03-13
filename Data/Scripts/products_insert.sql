use dbFlowerShop
go

INSERT INTO Products (Name, CategoryId, Description, Price, StorageAmount, ImageUrl, Rating, RatingCount, IsTopProduct)
VALUES
  -- 1) Øezané kvìtiny - Podkategorie: Rùže (Id=11)
  ('Èervené rùže Deluxe',         11, N'Luxusní kytice èerstvých èervených rùží pro zvláštní pøíležitosti.',           349.99, 30, 'https://example.com/images/cervene_ruze_deluxe.jpg', 5, 120, 1),
  ('Rùžová kytice',               11, N'Jemná kytice s rùžovými rùžemi vhodná pro každodenní radost.',                        299.99, 40, 'https://example.com/images/ruzova_kytice.jpg',         4,  90, 0),
  ('Bílé rùže',                  11, N'Elegantní kytice bílých rùží symbolizující èistotu a noblesu.',                         279.50, 25, 'https://example.com/images/bile_ruze.jpg',             4,  75, 0),
  
  -- 2) Øezané kvìtiny - Podkategorie: Tulipány (Id=12)
  ('Barevné tulipány',            12, N'Pestrá smìs tulipánù v rùzných odstínech pro radost každého domova.',                  199.99, 50, 'https://example.com/images/barevne_tulipany.jpg',      4, 100, 0),
  ('Tulipány mix',                12, N'Elegantní mix tulipánù s rùznými barvami vhodný pro slavnostní i bìžné pøíležitosti.', 219.99, 60, 'https://example.com/images/tulipany_mix.jpg',          5, 150, 1),
  
  -- 3) Øezané kvìtiny - Podkategorie: Gerbery (Id=13)
  ('Žluté gerbery',               13, N'Žluté gerbery, které pøinášejí optimismus a pozitivní energii.',                      159.99, 40, 'https://example.com/images/zlute_gerbery.jpg',         4,  80, 0),
  ('Mix gerber',                 13, N'Smìs rùznobarevných gerber vhodná pro každodenní radost a osvìžení interiéru.',         169.99, 35, 'https://example.com/images/mix_gerber.jpg',            4,  60, 0),
  
  -- 4) Øezané kvìtiny - Podkategorie: Lilie (Id=14)
  ('Bílé lilie',                 14, N'Nádherné bílé lilie pro vyjádøení elegance a luxusu.',                                189.99, 30, 'https://example.com/images/bile_lilie.jpg',            5,  90, 1),
  ('Rùžové lilie',               14, N'Krásné rùžové lilie, jemné a sofistikované, ideální do moderních interiérù.',            179.50, 25, 'https://example.com/images/ruzove_lilie.jpg',          4,  70, 0),
  
  -- 5) Øezané kvìtiny - Podkategorie: Chryzantémy (Id=15)
  ('Podzimní chryzantémy',        15, N'Kytice s chryzantémami vhodná pro podzimní dekorace a slavnostní pøíležitosti.',       129.99, 45, 'https://example.com/images/podzimni_chryzantemy.jpg',  4,  50, 0),
  ('Bílé chryzantémy',           15, N'Klasické bílé chryzantémy pro formální události a vzpomínkové chvíle.',                139.99, 40, 'https://example.com/images/bile_chryzantemy.jpg',       3,  30, 0),
  
  -- 6) Kvìtinové kytice a aranže - Podkategorie: Dárkové kytice (Id=21)
  ('Luxusní dárková kytice',      21, N'Exkluzivní kytice s kombinací vybraných kvìtin a dekorací pro speciální dárek.',      399.99, 20, 'https://example.com/images/luxusni_darkova_kytice.jpg', 5, 110, 1),
  ('Mini dárková kytice',         21, N'Kompaktní kytice ideální jako malá pozornost pro vaše blízké.',                      99.99,  70, 'https://example.com/images/mini_darkova_kytice.jpg',    4,  40, 0),
  
  -- 7) Kvìtinové kytice a aranže - Podkategorie: Slavnostní aranžmá (Id=22)
  ('Zlaté aranžmá',               22, N'Nádherné aranžmá se zlatými akcenty pro slavnostní pøíležitosti.',                     499.99, 15, 'https://example.com/images/zlate_aranzma.jpg',         5,  85, 1),
  ('Elegantní aranžmá',           22, N'Stylové aranžmá vhodné pro oslavy a formální akce.',                                   359.99, 25, 'https://example.com/images/elegantni_aranzma.jpg',     4,  60, 0),
  
  -- 8) Kvìtinové kytice a aranže - Podkategorie: Firemní aranžmá (Id=23)
  ('Firemní kvìtinové aranžmá',    23, N'Moderní aranžmá pro kanceláøské prostory a firemní interiéry.',                      279.99, 30, 'https://example.com/images/firemni_aranzma.jpg',       4,  45, 0),
  
  -- 9) Pokojové a kanceláøské rostliny - Podkategorie: Sukulenty a kaktusy (Id=31)
  ('Mix sukulentù',             31, N'Kreativní mix sukulentù a kaktusù pro dodání pøírodního nádechu do interiéru.',       149.99,100, 'https://example.com/images/mix_sukulentu.jpg',         4,  35, 0),
  ('Kaktusová kompozice',         31, N'Originální kaktusová kompozice pro milovníky neobvyklých a odolných rostlin.',         129.99, 80, 'https://example.com/images/kaktusova_kompozice.jpg',     3,  25, 0),
  
  -- 10) Pokojové a kanceláøské rostliny - Podkategorie: Orchideje (Id=32)
  ('Bílá orchidej',              32, N'Elegantní bílá orchidej pro luxusní interiéry a slavnostní okamžiky.',               399.99, 20, 'https://example.com/images/bila_orchidej.jpg',         5,  60, 1),
  ('Rùžová orchidej',            32, N'Nìžná rùžová orchidej s exkluzivním vzhledem vhodná do moderních prostor.',           389.99, 15, 'https://example.com/images/ruzova_orchidej.jpg',       4,  55, 0),
  
  -- 11) Pokojové a kanceláøské rostliny - Podkategorie: Fikusy a palmy (Id=33)
  ('Fikus robusta',             33, N'Odolný a krásný fikus, který se hodí jak do domácností, tak kanceláøí.',              199.99, 40, 'https://example.com/images/fikus_robusta.jpg',         4,  70, 0),
  ('Palma elegant',             33, N'Elegantní palma pro dodání pøírodní atmosféry do interiéru.',                          249.99, 30, 'https://example.com/images/palma_elegant.jpg',         4,  50, 0),
  
  -- 12) Pokojové a kanceláøské rostliny - Podkategorie: Bonsaje (Id=34)
  ('Japonský bonsaj',            34, N'Tradièní japonský bonsaj symbolizující klid a harmonii.',                              299.99, 20, 'https://example.com/images/japonsky_bonsaj.jpg',         5,  80, 1),
  
  -- 13) Pokojové a kanceláøské rostliny - Podkategorie: Bylinky a aromatické rostliny (Id=35)
  ('Bazalka èerstvá',            35, N'Èerstvá bazalka ideální pro dochucení jídel a dekoraci kuchynì.',                       49.99, 200, 'https://example.com/images/bazalka.jpg',               4,  40, 0),
  ('Máta peprná',               35, N'Osvìžující máta peprná vhodná pro pøípravu nápojù i dezertù.',                          39.99, 180, 'https://example.com/images/mata_peprna.jpg',           3,  30, 0),
  
  -- 14) Svatební kvìtiny - Podkategorie: Svatební kytice (Id=41)
  ('Klasická svatební kytice',    41, N'Elegantní svatební kytice s kombinací bílých a rùžových kvìtin pro nezapomenutelný den.', 499.99, 10, 'https://example.com/images/klasicni_svatebni_kytice.jpg', 5, 100, 1),
  
  -- 15) Svatební kvìtiny - Podkategorie: Výzdoba svatebního místa (Id=42)
  ('Kvìtinová výzdoba stolù',     42, N'Elegantní aranžmá pro dekoraci svatebních stolù a slavnostních prostor.',           299.99, 15, 'https://example.com/images/vyzdoba_stolu.jpg',         4,  45, 0),
  
  -- 16) Svatební kvìtiny - Podkategorie: Corsage (kvìtinové ozdoby) (Id=43)
  ('Elegantní corsage',          43, N'Stylový corsage, který doplní vzhled nevìsty a je perfektním doplòkem svatebního dne.', 149.99, 25, 'https://example.com/images/elegantni_corsage.jpg',       4,  30, 0),
  
  -- 17) Svatební kvìtiny - Podkategorie: Dekorace do klopy (Id=44)
  ('Kvìtinové dekorace do klopy',  44, N'Dekorace do klopy dodávající prostoru jemný kvìtinový nádech.',                     199.99, 20, 'https://example.com/images/dekorace_do_klopy.jpg',       4,  25, 0),
  
  -- 18) Smuteèní vazby - Podkategorie: Smuteèní kytice (Id=51)
  ('Smuteèní kytice bílých rùží', 51, N'Okázalá kytice bílých rùží pro vyjádøení úcty a vzpomínky.',                      399.99, 10, 'https://example.com/images/smutecni_kytice.jpg',        4,  20, 0),
  
  -- 19) Smuteèní vazby - Podkategorie: Vìnce (Id=52)
  ('Klasický vìnec',             52, N'Tradièní vìnec vhodný k uctìní památky.',                                             249.99, 15, 'https://example.com/images/klasicky_venc.jpg',           3,  10, 0),
  
  -- 20) Smuteèní vazby - Podkategorie: Aranžmá na hroby (Id=53)
  ('Aranžmá na památku',         53, N'Vkusné aranžmá s jemnými kvìtinovými akcenty vhodné na hroby.',                      199.99, 10, 'https://example.com/images/aranzma_na_hroby.jpg',        4,  15, 0),
  
  -- 21) Sezonní a tematické kvìtiny - Podkategorie: Vánoèní hvìzda (Poinsettia) (Id=61)
  ('Poinsettia èervená',         61, N'Pestrá vánoèní hvìzda s èervenými kvìty pro slavnostní atmosféru.',                    99.99,  30, 'https://example.com/images/poinsettia_cervena.jpg',     4,  40, 0),
  ('Poinsettia bílá',            61, N'Elegantní vánoèní hvìzda s bílými kvìty pro klidnou atmosféru.',                       109.99, 25, 'https://example.com/images/poinsettia_bila.jpg',        4,  35, 0),
  
  -- 22) Sezonní a tematické kvìtiny - Podkategorie: Velikonoèní osení a aranžmá (Id=62)
  ('Jarní osení aranžmá',         62, N'Krásné aranžmá se sezónním osením vhodné pro Velikonoce a jarní slavnosti.',          149.99, 20, 'https://example.com/images/jarni_oseni_aranzma.jpg',     4,  25, 0),
  
  -- 23) Sezonní a tematické kvìtiny - Podkategorie: Podzimní dekorace (Id=63)
  ('Podzimní dekorace s listím',  63, N'Dekorace s barevným listím vhodné do podzimních interiérù a exteriérù.',             129.99, 20, 'https://example.com/images/podzimni_dekorace.jpg',      3,  20, 0),
  
  -- 24) Sezonní a tematické kvìtiny - Podkategorie: Jarní cibuloviny (Id=64)
  ('Jarní cibulový mix',         64, N'Výbìr jarních cibulovin pro osvìžení vašeho domova.',                                  89.99,  30, 'https://example.com/images/jarni_cibuloviny.jpg',      4,  25, 0),
  
  -- 25) Zahradní a venkovní rostliny - Podkategorie: Letnièky (Id=71)
  ('Letní kytice letnièek',       71, N'Kytice z letnièek, ideální pro osvìžení interiéru bìhem horkých letních dnù.',         79.99,  50, 'https://example.com/images/letsnice_kytice.jpg',       4,  15, 0),
  
  -- 26) Zahradní a venkovní rostliny - Podkategorie: Trvalky (Id=72)
  ('Elegantní trvalka',           72, N'Trvalka, která dodá prostoru nadèasový vzhled a pøírodní eleganci.',                  59.99,  40, 'https://example.com/images/elegantni_trvalka.jpg',     4,  10, 0),
  
  -- 27) Zahradní a venkovní rostliny - Podkategorie: Keøe a okrasné døeviny (Id=73)
  ('Dekorativní keø',            73, N'Malý okrasný keø vhodný pro zahradní design a terénní úpravy.',                         199.99, 20, 'https://example.com/images/dekorativni_ker.jpg',        4,  15, 0),
  
  -- 28) Zahradní a venkovní rostliny - Podkategorie: Cibuloviny (tulipány...) (Id=74)
  ('Jarní tulipány',             74, N'Klasická jarní kytice tulipánù pro osvìžení vašeho domova.',                           99.99,  30, 'https://example.com/images/jarni_tulipany.jpg',         4,  20, 0),
  
  -- 29) Dárkové sady / sety - Podkategorie: Kytice + èokoláda (Id=81)
  ('Romantická sada: Kytice + èokoláda', 81, N'Kombinace krásné kytice a kvalitní èokolády pro romantické chvíle.',          249.99, 15, 'https://example.com/images/romanticka_sada_cokolada.jpg', 5, 50, 1),
  
  -- 30) Dárkové sady / sety - Podkategorie: Kytice + víno (Id=82)
  ('Deluxe sada: Kytice + víno',  82, N'Exkluzivní sada obsahující kytici a vybrané víno pro slavnostní pøíležitosti.',       299.99, 10, 'https://example.com/images/deluxe_sada_vino.jpg',       5, 45, 1),
  
  -- 31) Dárkové sady / sety - Podkategorie: Kvìtinové boxy (Id=83)
  ('Luxusní kvìtinový box',      83, N'Elegantní kvìtinový box s exkluzivním designem pro speciální pøíležitosti.',         349.99, 8,  'https://example.com/images/luxusni_box.jpg',            5, 35, 1),
  
  -- 32) Dárkové sady / sety - Podkategorie: Kvìtinová pøedplatná (Id=84)
  ('Mìsíèní kvìtinová pøedplatná',84, N'Pøedplatné, které pøináší èerstvé kvìtiny každý mìsíc pøímo k vám domù.',         99.99, 100, 'https://example.com/images/mesicni_predplatne.jpg',     4, 60, 0),
  
  -- 33) Floristické doplòky a dekorace - Podkategorie: Vázy, kvìtináèe, obaly (Id=91)
  ('Moderní váza',              91, N'Stylová moderní váza vhodná pro každou kytici a aranžmá.',                              129.99, 25, 'https://example.com/images/moderni_vaza.jpg',          4, 30, 0),
  ('Dekorativní kvìtináè',       91, N'Kreativní kvìtináè, který oživí každý interiér svým designem.',                       89.99,  35, 'https://example.com/images/dekorativni_kvetinac.jpg',  3, 20, 0),
  
  -- 34) Floristické doplòky a dekorace - Podkategorie: Stuhy, ozdoby, mašle (Id=92)
  ('Elegantní stužka',           92, N'Kvalitní stužka, která dodá kytici elegantní vzhled a šmrnc.',                         19.99, 100, 'https://example.com/images/elegantni_stuzka.jpg',       4, 25, 0),
  
  -- 35) Floristické doplòky a dekorace - Podkategorie: Péèe o kvìtiny (výživa, leštidla) (Id=93)
  ('Kvìtinová výživa',            93, N'Speciální smìs pro zajištìní zdravého rùstu a krásy vašich kvìtin.',                 39.99,  60, 'https://example.com/images/kvetinova_vyziva.jpg',       4, 15, 0),
  
  -- 36) Floristické doplòky a dekorace - Podkategorie: Dekoraèní materiál (hmota...) (Id=94)
  ('Dekoraèní pìna',             94, N'Pìna pro stabilizaci a aranžmá kvìtinových dekorací.',                               29.99,  50, 'https://example.com/images/dekoracni_pena.jpg',         3, 10, 0),
  
  -- 37) Kreativní workshopy a služby - Podkategorie: Floristické kurzy (Id=101)
  ('Základy floristického umìní',101, N'Kurz základù floristického umìní pro zaèáteèníky s praktickými ukázkami.',         499.99,  5, 'https://example.com/images/zaklady_floristiky.jpg',     5, 20, 1),
  
  -- 38) Kreativní workshopy a služby - Podkategorie: Kvìtinová výzdoba interiérù (Id=102)
  ('Interiérová kvìtinová aranžmá',102, N'Kreativní aranžmá pro vylepšení interiéru vašeho domova èi kanceláøe.',          299.99, 10, 'https://example.com/images/interierova_aranzma.jpg',     4, 15, 0),
  
  -- 39) Kreativní workshopy a služby - Podkategorie: Kompletní svatební servis (Id=103)
  ('Svatební servis na klíè',    103, N'Kompletní servis zahrnující návrh, pøípravu a realizaci svatebních kvìtin.',           999.99, 3,  'https://example.com/images/svatebni_servis.jpg',       5, 10, 1)
;
