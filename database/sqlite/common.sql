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

INSERT INTO category (name, min_height, max_height) VALUES
	('Small',   0, 35),
	('Medium', 35, 43),
	('Large',  43,  0);

INSERT INTO level (name) VALUES
	('Pre-Agility'), -- club dependent level
	('Grau 0'), 
	('Grau 1'), -- FCI Level 1
	('Grau 2'), -- FCI Level 2
	('Grau 3'), -- FCI Level 3
	('Veteranos'),
	('Infantis'); -- this is weird, as this level is dependent on the handler's age, not the dog's

	