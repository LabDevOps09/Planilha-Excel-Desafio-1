CREATE VIEW vw_cards AS
SELECT 
    c.id,
    c.name,
    c.hp,
    t.type_name AS type,
    s.stage_name AS stage,
    c.info,
    c.attack,
    c.damage,
    c.weak,
    c.resist,
    c.retreat,
    col.collectionSetName AS collection_name
FROM tbl_cards c
LEFT JOIN tbl_cards_types ct ON c.id = ct.card_id
LEFT JOIN tbl_type t ON ct.type_id = t.id
LEFT JOIN tbl_cards_stage cs ON c.id = cs.card_id
LEFT JOIN tbl_stage s ON cs.stage_id = s.id
LEFT JOIN tbl_collection col ON c.collection_id = col.id;
