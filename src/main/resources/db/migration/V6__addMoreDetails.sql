ALTER TABLE booking
    ADD end_location_id BIGINT NULL;

ALTER TABLE booking
    ADD start_location_id BIGINT NULL;

ALTER TABLE passenger
    ADD home_id BIGINT NULL;
use testdb;
ALTER TABLE passenger
    ADD last_known_location_id BIGINT NULL;

ALTER TABLE booking
    ADD CONSTRAINT FK_BOOKING_ON_ENDLOCATION FOREIGN KEY (end_location_id) REFERENCES exact_location (id);

ALTER TABLE booking
    ADD CONSTRAINT FK_BOOKING_ON_STARTLOCATION FOREIGN KEY (start_location_id) REFERENCES exact_location (id);

ALTER TABLE passenger
    ADD CONSTRAINT FK_PASSENGER_ON_HOME FOREIGN KEY (home_id) REFERENCES exact_location (id);

ALTER TABLE passenger
    ADD CONSTRAINT FK_PASSENGER_ON_LASTKNOWNLOCATION FOREIGN KEY (last_known_location_id) REFERENCES exact_location (id);

DROP TABLE dbconstant;

ALTER TABLE booking
    MODIFY created_at datetime NULL;

ALTER TABLE booking_review
    MODIFY created_at datetime NULL;

ALTER TABLE car
    MODIFY created_at datetime NULL;

ALTER TABLE driver
    MODIFY created_at datetime NULL;

ALTER TABLE exact_location
    MODIFY created_at datetime NULL;

ALTER TABLE named_locations
    MODIFY created_at datetime NULL;

ALTER TABLE otp
    MODIFY created_at datetime NULL;

ALTER TABLE passenger
    MODIFY created_at datetime NULL;

ALTER TABLE driver
DROP
COLUMN driver_approved_status;

ALTER TABLE driver
    ADD driver_approved_status VARCHAR(255) NULL;

ALTER TABLE exact_location
    MODIFY updated_at datetime NULL;

ALTER TABLE named_locations
    MODIFY updated_at datetime NULL;

ALTER TABLE otp
    MODIFY updated_at datetime NULL;

ALTER TABLE passenger
    MODIFY updated_at datetime NULL;