package com.example.uberprojectentityservice.models;

import jakarta.persistence.*;
import lombok.*;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EntityListeners(AuditingEntityListener.class)
@Entity

@Inheritance(strategy = InheritanceType.JOINED)
@Table(name = "booking_review")
public class Review extends BaseModel {


    @Column(nullable = false)
    private String content;
    @OneToOne
    @JoinColumn(name = "booking_id")
    private Booking booking;



    private Double rating;

    @Override
    public String toString() {
        return "Review: " + this.content + " " + this.rating +  "booking"+ this.getBooking().getId() + this.getCreatedAt();
    }
}

