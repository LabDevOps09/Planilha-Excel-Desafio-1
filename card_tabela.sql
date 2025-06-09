CREATE TABLE tbl_type (
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_stage (
    id SERIAL PRIMARY KEY,
    stage_name VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_cards_types (
    card_id INT,
    type_id INT,
    PRIMARY KEY (card_id, type_id),
    CONSTRAINT fk_card_type FOREIGN KEY (card_id) REFERENCES tbl_cards(id) ON DELETE CASCADE,
    CONSTRAINT fk_type FOREIGN KEY (type_id) REFERENCES tbl_type(id) ON DELETE CASCADE
);

CREATE TABLE tbl_cards_stage (
    card_id INT PRIMARY KEY,
    stage_id INT NOT NULL,
    CONSTRAINT fk_card_stage FOREIGN KEY (card_id) REFERENCES tbl_cards(id) ON DELETE CASCADE,
    CONSTRAINT fk_stage FOREIGN KEY (stage_id) REFERENCES tbl_stage(id) ON DELETE CASCADE
);

  
