-- V4__create_otp_table.sql
CREATE TABLE IF NOT EXISTS otp (
                                   id BIGINT NOT NULL AUTO_INCREMENT,
                                   code VARCHAR(255),
    sent_to_number VARCHAR(255),
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    PRIMARY KEY (id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
