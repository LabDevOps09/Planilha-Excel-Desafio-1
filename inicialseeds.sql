-- Insert collections
INSERT INTO tbl_collection (collectionSetName, totalInCollections) VALUES 
('Base Set', 102),
('Jungle', 64),
('Fossil', 62);

-- Insert types
INSERT INTO tbl_type (type_name) VALUES 
('Fire'),
('Water'),
('Grass'),
('Electric'),
('Psychic'),
('Fighting'),
('Dark'),
('Metal'),
('Fairy'),
('Dragon');

-- Insert stages
INSERT INTO tbl_stage (stage_name) VALUES 
('Basic'),
('Stage 1'),
('Stage 2');

-- Insert Pokémon cards
INSERT INTO tbl_cards (name, hp, type, stage, info, attack, damage, weak, resist, retreat, collection_id) VALUES 
('Charizard', 120, 'Fire', 'Stage 2', 'A powerful Fire-type Pokémon.', 'Fire Spin', '100', 'Water', '', 3, 1),
('Blastoise', 100, 'Water', 'Stage 2', 'A Water-type Pokémon with strong defense.', 'Hydro Pump', '60+', 'Electric', '', 3, 1),
('Venusaur', 100, 'Grass', 'Stage 2', 'A Grass-type Pokémon with healing abilities.', 'Solarbeam', '80', 'Fire', '', 2, 1);

-- Link cards to types
INSERT INTO tbl_cards_types (card_id, type_id) VALUES 
(1, 1), -- Charizard (Fire)
(2, 2), -- Blastoise (Water)
(3, 3); -- Venusaur (Grass)

-- Link cards to stages
INSERT INTO tbl_cards_stage (card_id, stage_id) VALUES 
(1, 3), -- Charizard (Stage 2)
(2, 3), -- Blastoise (Stage 2)
(3, 3); -- Venusaur (Stage 2)
