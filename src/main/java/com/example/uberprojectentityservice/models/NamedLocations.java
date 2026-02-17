package com.example.uberprojectentityservice.models;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class NamedLocations extends BaseModel {

    @OneToOne(cascade = CascadeType.ALL)
    private ExactLocation exactLocation;
    @Column(nullable = false)
    private String name;

    private String zipCode;
    private String city;
    private String state;
    private String country;
}
