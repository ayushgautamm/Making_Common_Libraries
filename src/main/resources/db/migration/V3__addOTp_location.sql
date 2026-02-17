CREATE TABLE exact_location
(
    id BIGINT AUTO_INCREMENT NOT NULL,
    created_at datetime NOT NULL,
    updated_at datetime NOT NULL,
    latitude DOUBLE NOT NULL,
    longitude DOUBLE NOT NULL,
    CONSTRAINT pk_exact_location PRIMARY KEY (id)
);

CREATE TABLE named_locations
(
    id BIGINT AUTO_INCREMENT NOT NULL,
    created_at datetime NOT NULL,
    updated_at datetime NOT NULL,
    name VARCHAR(255) NOT NULL,
    exact_location_id BIGINT,
    CONSTRAINT pk_named_locations PRIMARY KEY (id)
);

ALTER TABLE named_locations
    ADD CONSTRAINT FK_named_locations_exact_location
        FOREIGN KEY (exact_location_id) REFERENCES exact_location(id);
