USE LiquorStoreDB;

CREATE TABLE IF NOT EXISTS brandsInventory(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    brand VARCHAR(255),
    quantity INT,
    PRIMARY KEY (id)
);

ALTER TABLE brandsInventory
    ADD type VARCHAR(255) NOT NULL;