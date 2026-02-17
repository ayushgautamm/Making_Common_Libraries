package com.example.uberprojectentityservice.models;

import jakarta.persistence.Table;


public enum BookingStatus {

    //TODO [Reverse Engineering] generate columns from DB
    SCHEDULED,
    CANCELED,
    CAR_ARRIVED,
    ASSIGNING_DRIVER,
    IN_RIDE,
    COMPLETED
}