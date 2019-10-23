INSERT INTO breed (name, fci_id) VALUES
	('SRD',                              000), -- 1
	('Border Collie',                    297), -- 2
	('Continental Toy Spaniel Papillon', 077), -- 3
	('Continental Toy Spaniel Phalène',  077), -- 4
	('Belgian Shepherd Dog Groenendael', 015), -- 5
	('Belgian Shepherd Dog Laekenois',   015), -- 6
	('Belgian Shepherd Dog Malinois',    015), -- 7
	('Belgian Shepherd Dog Tervueren',   015), -- 8
	('Mudi',                             238), -- 9
	('Portuguese Water Dog',             037); -- 10


INSERT INTO person (name, is_judge) VALUES 
	('Ricardo Silva',       0),
	('Tarquinio Mota',      0),
	('Rita Rocha',          0),
	('Alexandra Rodrigues', 1);


INSERT INTO dog (name, reg_name, date_of_birth, height, chip_id, breed_id) VALUES
	('Puma',    'Puma Joana',        '2017-11-21', 47, '120983712093871', 1),
	('Lyra',    'Lyra Soja',         '2019-05-01', 48, '938472659823476', 1),
	('Bitoque', 'Bitoque Voador',    '2018-07-22', 45, '129317232329312', 2),
	('Bifana',  'Bifana Sonic Boom', '2018-07-22', 46, '987454224123213', 2),
	('Mia',     'Mia Martins',       '2016-14-12', 42, '267517634572312', 1);


