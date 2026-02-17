package com.example.uberprojectentityservice.models;

import jakarta.persistence.*;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.*;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Driver extends BaseModel {

    @Column(unique = true)
    private String name;

    @Column(nullable = false, unique = true)
    private String licenseNumber;


    private String aadharNumber;
    @OneToOne
    private ExactLocation lastKnownLocation;

     @Enumerated(value = EnumType.STRING)
     private DriverApprovedStatus driverApprovedStatus;
    @OneToMany(mappedBy = "driver", fetch = FetchType.LAZY)
    @Fetch(FetchMode.SUBSELECT)
    private List<Booking> bookings;

    @DecimalMin(value = "0.01", message = "Rating Must be greater than or equal to 0")
    @DecimalMax(value = "5.00", message = "Rating must be less than or equal to 5")
    private  double rating;
    @OneToOne(mappedBy = "driver", cascade = CascadeType.ALL)
    private Car car;
}
