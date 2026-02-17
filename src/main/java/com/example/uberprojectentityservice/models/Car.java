package com.example.uberprojectentityservice.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Car extends BaseModel {

    @Column(nullable = false, unique = true)
    private String plateNumber;

    private String model;

    private String brand;

    private String color;   // keep as String for now (simple)

    @Enumerated(EnumType.STRING)
    private CarType carType;

    @OneToOne
    @JoinColumn(name = "driver_id", unique = true)
    private Driver driver;
}
