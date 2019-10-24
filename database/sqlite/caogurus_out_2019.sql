
INSERT INTO competition (name, date) VALUES
	('82º Trofeu de Agility "Os Caogurus"', '2019-10-12'),
	('83º Trofeu de Agility "Os Caogurus"', '2019-10-13') ;

INSERT INTO course (name, competition_id, judge_id) VALUES
	('Agility 0 - Manga 1 20 cm', 1, 48),
	('Agility 0 - Manga 1 30 cm', 1, 48),
	('Agility 0 - Manga 1 40 cm', 1, 48),

	('Agility 0 - Manga 2 20 cm', 1, 48),
	('Agility 0 - Manga 2 30 cm', 1, 48),
	('Agility 0 - Manga 2 40 cm', 1, 48),

	('Agility 1 - Manga 1 mini', 1, 48),
	('Agility 1 - Manga 1 midi', 1, 48),
	('Agility 1 - Manga 1 standard', 1, 48),

	('Agility 1 - Manga 2 mini', 1, 48),
	('Agility 1 - Manga 2 midi', 1, 48),
	('Agility 1 - Manga 2 standard', 1, 48),

	('Agility 2 - mini', 1, 48),
	('Agility 2 - midi', 1, 48),
	('Agility 2 - standard', 1, 48),

	('Agility 3 - mini', 1, 4),
	('Agility 3 - midi', 1, 4),
	('Agility 3 - standard', 1, 4),

	('Jumping 2 - mini', 1, 48),
	('Jumping 2 - midi', 1, 48),
	('Jumping 2 - standard', 1, 48),

	('Jumping 3 - mini', 1, 4),
	('Jumping 3 - midi', 1, 4),
	('Jumping 3 - standard', 1, 4),


	('Agility 0 - Manga 1 20 cm', 2, 48),
	('Agility 0 - Manga 1 30 cm', 2, 48),
	('Agility 0 - Manga 1 40 cm', 2, 48),

	('Agility 0 - Manga 2 20 cm', 2, 48),
	('Agility 0 - Manga 2 30 cm', 2, 48),
	('Agility 0 - Manga 2 40 cm', 2, 48),

	('Agility 1 - Manga 1 mini', 2, 48),
	('Agility 1 - Manga 1 midi', 2, 48),
	('Agility 1 - Manga 1 standard', 2, 48),

	('Agility 1 - Manga 2 mini', 2, 48),
	('Agility 1 - Manga 2 midi', 2, 48),
	('Agility 1 - Manga 2 standard', 2, 48),

	('Agility 2 - mini', 2, 48),
	('Agility 2 - midi', 2, 48),
	('Agility 2 - standard', 2, 48),

	('Agility 3 - mini', 2, 4),
	('Agility 3 - midi', 2, 4),
	('Agility 3 - standard', 2, 4),

	('Jumping 2 - mini', 2, 48),
	('Jumping 2 - midi', 2, 48),
	('Jumping 2 - standard', 2, 48),

	('Jumping 3 - mini', 2, 4),
	('Jumping 3 - midi', 2, 4),
	('Jumping 3 - standard', 2, 4);


INSERT INTO team (dog_id, person_id) VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6),
	(7,7),
	(8,8),
	(9,9),
	(10,10),
	(11,11),
	(12,12),
	(13,13),
	(14,13),
	(15,14),
	(16,15),
	(17,16),
	(18,17),
	(19,18),
	(20,19),
	(21,20),
	(22,21),
	(23,22),
	(24,23),
	(25,24),
	(26,24),
	(27,25),
	(28,26),
	(29,27),
	(30,28),
	(31,28),
	(32,29),
	(33,30),
	(34,31),
	(35,32),
	(36,33),
	(37,34),
	(38,35),
	(39,36),
	(40,37),
	(41,38),
	(42,39),
	(43,40),
	(44,41),
	(45,42),
	(46,43),
	(47,43),
	(48,44),
	(49,45),
	(50,46),
	(51,46),
	(52,47),
	(53,48),
	(54,48),
	(55,49),
	(56,50),
	(57,51),
	(58,52),
	(59,53),
	(60,61),
	(61,54),
	(62,55),
	(63,56),
	(64,57),
	(65,58),
	(66,59),
	(67,60),
	(68,62),
	(69,63),
	(70,64),
	(71,65),
	(72,65) ;


INSERT INTO startlist (course_id, team_id) VALUES
	-- 82º Trofeu de Agility "Os Caogurus"
	-- Agility 0 - Manga 1 20 cm
	(1, 6),  -- Ana Silva       + Simao
	(1, 34), -- Mariana Ribeiro + Foxy
	(1, 41), -- Paulo Cristao   + RAFA
	(1, 57), -- Tania Fernandes + Shorty
	(1, 68), -- Hugo Simoes     + Ozzy
	(1, 70), -- Joao Fernandes  + Kuka

	-- Agility 0 - Manga 1 30 cm
	(2, 3),  -- Ana Emauz            + Kurt 
	(2, 4),  -- Ana Faria            + Finn
	(2, 36), -- Marta Martins        + Sonic
	(2, 47), -- Rita Nunes           + Thor
	(2, 56), -- Susana Roncon Chaves + Goa
	(2, 58), -- Teresa Leitão        + Zoe
	(2, 62), -- Volodymyr Nikulin    + Bacho

	-- Agility 0 - Manga 1 40 cm
	(3, 27), -- Leonor Reis      + Flicka
	(3, 28), -- Lúcia Marcos     + Amelie
	(3, 29), -- Luís Santos      + Letty
	(3, 31), -- Luísa Oliveira   + Skye
	(3, 32), -- Madalena Correia + Maggie
	(3, 33), -- Mariana Fino     + Estrela
	(3, 39), -- Melissa Costa    + Ghallie
	(3, 45), -- Ricardo Silva    + Lyra
	(3, 46), -- Rita Nunes       + Alex
	(3, 48), -- Rita Santos      + Bacco
	(3, 61), -- Vitor Ribeiro    + Pipa

	-- Agility 0 - Manga 2 20 cm
	(4, 6),  -- Ana Silva       + Simao
	(4, 34), -- Mariana Ribeiro + Foxy
	(4, 41), -- Paulo Cristao   + RAFA
	(4, 57), -- Tania Fernandes + Shorty
	(4, 68), -- Hugo Simoes     + Ozzy
	(4, 70), -- Joao Fernandes  + Kuka

	-- Agility 0 - Manga 3 30 cm
	(5, 3),  -- Ana Emauz            + Kurt 
	(5, 4),  -- Ana Faria            + Finn
	(5, 36), -- Marta Martins        + Sonic
	(5, 47), -- Rita Nunes           + Thor
	(5, 56), -- Susana Roncon Chaves + Goa
	(5, 58), -- Teresa Leitão        + Zoe
	(5, 62), -- Volodymyr Nikulin    + Bacho

	-- Agility 0 - Manga 4 40 cm
	(6, 27), -- Leonor Reis      + Flicka
	(6, 28), -- Lúcia Marcos     + Amelie
	(6, 29), -- Luís Santos      + Letty
	(6, 31), -- Luísa Oliveira   + Skye
	(6, 32), -- Madalena Correia + Maggie
	(6, 33), -- Mariana Fino     + Estrela
	(6, 39), -- Melissa Costa    + Ghallie
	(6, 45), -- Ricardo Silva    + Lyra
	(6, 46), -- Rita Nunes       + Alex
	(6, 48), -- Rita Santos      + Bacco
	(6, 61), -- Vitor Ribeiro    + Pipa

	-- Agility 1 - Manga 1 mini
	(7, 5),  -- Ana Paula Jorge  + Yasmine
	(7, 69), -- Carla Cruz       + Elsa

	-- Agility 1 - Manga 1 midi
	(8, 12), -- Carla Almeida + Luna
	(8, 66), -- João Narciso  + Smash
	(8, 43), -- Paulo Sousa   + NAVY
	(8, 52), -- Sandra Silva  + Giló

	-- Agility 1 - Manga 1 standard
	(9, 1),  -- Alexandra Gomes + Choco
	(9, 8),  -- Angela Pereira  + Fox
	(9, 14), -- Carlos Telo     + Bela
	(9, 15), -- Dulce Sameiro   + SHEILA
	(9, 44), -- Rafael          + Pingo
	(9, 50), -- Sandra Cordeiro + Flash
	(9, 55), -- Sofia Alves     + KIRA
	(9, 71), -- Gonçalo Amorim  + Bu

	-- Agility 1 - Manga 2 mini
	(10, 5), -- Ana Paula Jorge  + Yasmine
	(10, 69), -- Carla Cruz       + Elsa

	-- Agility 1 - Manga 2 midi
	(11, 12), -- Carla Almeida + Luna
	(11, 66), -- João Narciso  + Smash
	(11, 43), -- Paulo Sousa   + NAVY
	(11, 52), -- Sandra Silva  + Giló

	-- Agility 1 - Manga 2 standard
	(12, 1),  -- Alexandra Gomes + Choco
	(12, 8),  -- Angela Pereira  + Fox
	(12, 14), -- Carlos Telo     + Bela
	(12, 15), -- Dulce Sameiro   + SHEILA
	(12, 44), -- Rafael          + Pingo
	(12, 50), -- Sandra Cordeiro + Flash
	(12, 55), -- Sofia Alves     + KIRA
	(12, 71), -- Gonçalo Amorim  + Bu

	-- Agility 2 - mini
	(13, 9),  -- Beatriz Rodrigues + Sweet
	(13, 16), -- Elisabete Mendes  + Freddy
	(13, 22), -- Isabel Serrão     + Ishka
	(13, 24), -- João Fernandes    + Mel

	-- Agility 2 - midi
	(14, 38), -- Matilde Chora  + Mia
	(14, 59), -- Uriel Oliveira + Dili

	-- Agility 2 - standard	
	(15, 2),  -- Alexandra Rodrigues + Elfie
	(15, 11), -- Bruno Branco + Shuva
	(15, 35), -- Mário Araújo + Bruna
	(15, 40), -- Miguel Freire + Tofu
	(15, 64), -- Pánczél Gyöngyi + Kylo
	(15, 51), -- Sandra Cordeiro + Kaya

	-- Agility 3 - mini
	(16, 10), -- Belmiro             + Be
	(16, 13), -- Carlos Telo         + Nocas
	(16, 20), -- Ines Figueiredo     + Twix
	(16, 63), -- Wendy Oliver Beavis + Zoom

	-- Agility 3 - midi
	(17, 17), -- Francisco Esteves + Noa
	(17, 19), -- Hugo Santos       + Nyugi
	(17, 67), -- Sofia Narciso     + Salina
	(17, 72), -- Gonçalo Amorim    + Zip

	-- Agility 3 - standard
	(18, 7),  -- Andreia Duarte + Tobias
	(18, 18), -- Hugo Alves           + Lupi
	(18, 21), -- Isabel Guedes        + Shakira
	(18, 23), -- João Carlos Oliveira + Shep
	(18, 25), -- Júlio Rodrigues      + Belota
	(18, 26), -- Júlio Rodrigues      + Luna
	(18, 30), -- Luísa Oliveira       + King
	(18, 37), -- Marta Maya Brandão   + Yuuki
	(18, 42), -- Paulo Mateus         + Zor
	(18, 49), -- Rui Abreu            + Sookie
	(18, 53), -- Sérgio de Sousa      + Turbo Toby
	(18, 54), -- Sérgio de Sousa      + Cat
	(18, 60), -- Vasco Ribeiro        + Holly

	-- Jumping 2 - mini
	(19, 9),  -- Beatriz Rodrigues + Sweet
	(19, 16), -- Elisabete Mendes  + Freddy
	(19, 22), -- Isabel Serrão     + Ishka
	(19, 24), -- João Fernandes    + Mel

	-- Jumping 2 - midi
	(20, 38), -- Matilde Chora  + Mia
	(20, 59), -- Uriel Oliveira + Dili

	-- Jumping 2 - standard
	(21, 2),  -- Alexandra Rodrigues + Elfie
	(21, 11), -- Bruno Branco + Shuva
	(21, 35), -- Mário Araújo + Bruna
	(21, 40), -- Miguel Freire + Tofu
	(21, 64), -- Pánczél Gyöngyi + Kylo
	(21, 51), -- Sandra Cordeiro + Kaya

	-- Jumping 3 - mini
	(22, 10), -- Belmiro             + Be
	(22, 13), -- Carlos Telo         + Nocas
	(22, 20), -- Ines Figueiredo     + Twix
	(22, 63), -- Wendy Oliver Beavis + Zoom

	-- Jumping 3 - midi
	(23, 17), -- Francisco Esteves + Noa
	(23, 19), -- Hugo Santos       + Nyugi
	(23, 67), -- Sofia Narciso     + Salina
	(23, 72), -- Gonçalo Amorim    + Zip

	-- Jumping 3 - standard
	(24, 7),  -- Andreia Duarte + Tobias
	(24, 18), -- Hugo Alves           + Lupi
	(24, 21), -- Isabel Guedes        + Shakira
	(24, 23), -- João Carlos Oliveira + Shep
	(24, 25), -- Júlio Rodrigues      + Belota
	(24, 26), -- Júlio Rodrigues      + Luna
	(24, 30), -- Luísa Oliveira       + King
	(24, 37), -- Marta Maya Brandão   + Yuuki
	(24, 42), -- Paulo Mateus         + Zor
	(24, 49), -- Rui Abreu            + Sookie
	(24, 53), -- Sérgio de Sousa      + Turbo Toby
	(24, 54), -- Sérgio de Sousa      + Cat
	(24, 60), -- Vasco Ribeiro        + Holly

	-- 83º Trofeu de Agility "Os Caogurus"
	-- Agility 0 - Manga 1 20 cm
	(25, 6),  -- Ana Silva       + Simao
	(25, 34), -- Mariana Ribeiro + Foxy
	(25, 41), -- Paulo Cristao   + RAFA
	(25, 57), -- Tania Fernandes + Shorty
	(25, 68), -- Hugo Simoes     + Ozzy
	(25, 70), -- Joao Fernandes  + Kuka

	-- Agility 0 - Manga 1 30 cm
	(26, 3),  -- Ana Emauz            + Kurt 
	(26, 4),  -- Ana Faria            + Finn
	(26, 36), -- Marta Martins        + Sonic
	(26, 47), -- Rita Nunes           + Thor
	(26, 56), -- Susana Roncon Chaves + Goa
	(26, 58), -- Teresa Leitão        + Zoe
	(26, 62), -- Volodymyr Nikulin    + Bacho

	-- Agility 0 - Manga 1 40 cm
	(27, 27), -- Leonor Reis      + Flicka
	(27, 28), -- Lúcia Marcos     + Amelie
	(27, 29), -- Luís Santos      + Letty
	(27, 31), -- Luísa Oliveira   + Skye
	(27, 32), -- Madalena Correia + Maggie
	(27, 33), -- Mariana Fino     + Estrela
	(27, 39), -- Melissa Costa    + Ghallie
	(27, 45), -- Ricardo Silva    + Lyra
	(27, 46), -- Rita Nunes       + Alex
	(27, 48), -- Rita Santos      + Bacco
	(27, 61), -- Vitor Ribeiro    + Pipa

	-- Agility 0 - Manga 2 20 cm
	(28, 6),  -- Ana Silva       + Simao
	(28, 34), -- Mariana Ribeiro + Foxy
	(28, 41), -- Paulo Cristao   + RAFA
	(28, 57), -- Tania Fernandes + Shorty
	(28, 68), -- Hugo Simoes     + Ozzy
	(28, 70), -- Joao Fernandes  + Kuka

	-- Agility 0 - Manga 3 30 cm
	(29, 3),  -- Ana Emauz            + Kurt 
	(29, 4),  -- Ana Faria            + Finn
	(29, 36), -- Marta Martins        + Sonic
	(29, 47), -- Rita Nunes           + Thor
	(29, 56), -- Susana Roncon Chaves + Goa
	(29, 58), -- Teresa Leitão        + Zoe
	(29, 62), -- Volodymyr Nikulin    + Bacho

	-- Agility 0 - Manga 4 40 cm
	(30, 27), -- Leonor Reis      + Flicka
	(30, 28), -- Lúcia Marcos     + Amelie
	(30, 29), -- Luís Santos      + Letty
	(30, 31), -- Luísa Oliveira   + Skye
	(30, 32), -- Madalena Correia + Maggie
	(30, 33), -- Mariana Fino     + Estrela
	(30, 39), -- Melissa Costa    + Ghallie
	(30, 45), -- Ricardo Silva    + Lyra
	(30, 46), -- Rita Nunes       + Alex
	(30, 48), -- Rita Santos      + Bacco
	(30, 61), -- Vitor Ribeiro    + Pipa

	-- Agility 1 - Manga 1 mini
	(31, 5), -- Ana Paula Jorge  + Yasmine
	(31, 69), -- Carla Cruz       + Elsa

	-- Agility 1 - Manga 1 midi
	(32, 12), -- Carla Almeida + Luna
	(32, 66), -- João Narciso  + Smash
	(32, 43), -- Paulo Sousa   + NAVY
	(32, 52), -- Sandra Silva  + Giló

	-- Agility 1 - Manga 1 standard
	(33, 1),  -- Alexandra Gomes + Choco
	(33, 8),  -- Angela Pereira  + Fox
	(33, 14), -- Carlos Telo     + Bela
	(33, 15), -- Dulce Sameiro   + SHEILA
	(33, 44), -- Rafael          + Pingo
	(33, 50), -- Sandra Cordeiro + Flash
	(33, 55), -- Sofia Alves     + KIRA
	(33, 71), -- Gonçalo Amorim  + Bu

	-- Agility 1 - Manga 2 mini
	(34, 5), -- Ana Paula Jorge  + Yasmine
	(34, 69), -- Carla Cruz       + Elsa

	-- Agility 1 - Manga 2 midi
	(35, 12), -- Carla Almeida + Luna
	(35, 66), -- João Narciso  + Smash
	(35, 43), -- Paulo Sousa   + NAVY
	(35, 52), -- Sandra Silva  + Giló

	-- Agility 1 - Manga 2 standard
	(36, 1),  -- Alexandra Gomes + Choco
	(36, 8),  -- Angela Pereira  + Fox
	(36, 14), -- Carlos Telo     + Bela
	(36, 15), -- Dulce Sameiro   + SHEILA
	(36, 44), -- Rafael          + Pingo
	(36, 50), -- Sandra Cordeiro + Flash
	(36, 55), -- Sofia Alves     + KIRA
	(36, 71), -- Gonçalo Amorim  + Bu

	-- Agility 2 - mini
	(37, 9),  -- Beatriz Rodrigues + Sweet
	(37, 16), -- Elisabete Mendes  + Freddy
	(37, 22), -- Isabel Serrão     + Ishka
	(37, 24), -- João Fernandes    + Mel

	-- Agility 2 - midi
	(38, 38), -- Matilde Chora  + Mia
	(38, 59), -- Uriel Oliveira + Dili

	-- Agility 2 - standard	
	(39, 2),  -- Alexandra Rodrigues + Elfie
	(39, 11), -- Bruno Branco + Shuva
	(39, 35), -- Mário Araújo + Bruna
	(39, 40), -- Miguel Freire + Tofu
	(39, 64), -- Pánczél Gyöngyi + Kylo
	(39, 51), -- Sandra Cordeiro + Kaya

	-- Agility 3 - mini
	(40, 10), -- Belmiro             + Be
	(40, 13), -- Carlos Telo         + Nocas
	(40, 20), -- Ines Figueiredo     + Twix
	(40, 63), -- Wendy Oliver Beavis + Zoom

	-- Agility 3 - midi
	(41, 17), -- Francisco Esteves + Noa
	(41, 19), -- Hugo Santos       + Nyugi
	(41, 67), -- Sofia Narciso     + Salina
	(41, 72), -- Gonçalo Amorim    + Zip

	-- Agility 3 - standard
	(42, 7),  -- Andreia Duarte + Tobias
	(42, 18), -- Hugo Alves           + Lupi
	(42, 21), -- Isabel Guedes        + Shakira
	(42, 23), -- João Carlos Oliveira + Shep
	(42, 25), -- Júlio Rodrigues      + Belota
	(42, 26), -- Júlio Rodrigues      + Luna
	(42, 30), -- Luísa Oliveira       + King
	(42, 37), -- Marta Maya Brandão   + Yuuki
	(42, 42), -- Paulo Mateus         + Zor
	(42, 49), -- Rui Abreu            + Sookie
	(42, 53), -- Sérgio de Sousa      + Turbo Toby
	(42, 54), -- Sérgio de Sousa      + Cat
	(42, 60), -- Vasco Ribeiro        + Holly

	-- Jumping 2 - mini
	(43, 9),  -- Beatriz Rodrigues + Sweet
	(43, 16), -- Elisabete Mendes  + Freddy
	(43, 22), -- Isabel Serrão     + Ishka
	(43, 24), -- João Fernandes    + Mel

	-- Jumping 2 - midi
	(44, 38), -- Matilde Chora  + Mia
	(44, 59), -- Uriel Oliveira + Dili

	-- Jumping 2 - standard
	(45, 2),  -- Alexandra Rodrigues + Elfie
	(45, 11), -- Bruno Branco + Shuva
	(45, 35), -- Mário Araújo + Bruna
	(45, 40), -- Miguel Freire + Tofu
	(45, 64), -- Pánczél Gyöngyi + Kylo
	(45, 51), -- Sandra Cordeiro + Kaya

	-- Jumping 3 - mini
	(46, 10), -- Belmiro             + Be
	(46, 13), -- Carlos Telo         + Nocas
	(46, 20), -- Ines Figueiredo     + Twix
	(46, 63), -- Wendy Oliver Beavis + Zoom

	-- Jumping 3 - midi
	(47, 17), -- Francisco Esteves + Noa
	(47, 19), -- Hugo Santos       + Nyugi
	(47, 67), -- Sofia Narciso     + Salina
	(47, 72), -- Gonçalo Amorim    + Zip

	-- Jumping 3 - standard
	(48, 7),  -- Andreia Duarte + Tobias
	(48, 18), -- Hugo Alves           + Lupi
	(48, 21), -- Isabel Guedes        + Shakira
	(48, 23), -- João Carlos Oliveira + Shep
	(48, 25), -- Júlio Rodrigues      + Belota
	(48, 26), -- Júlio Rodrigues      + Luna
	(48, 30), -- Luísa Oliveira       + King
	(48, 37), -- Marta Maya Brandão   + Yuuki
	(48, 42), -- Paulo Mateus         + Zor
	(48, 49), -- Rui Abreu            + Sookie
	(48, 53), -- Sérgio de Sousa      + Turbo Toby
	(48, 54), -- Sérgio de Sousa      + Cat
	(48, 60)  -- Vasco Ribeiro        + Holly


;

UPDATE startlist
SET start_order = 0
WHERE start_order IS NULL ;