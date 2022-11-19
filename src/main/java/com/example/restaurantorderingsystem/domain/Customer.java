package com.example.restaurantorderingsystem.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.relational.core.mapping.MappedCollection;


import javax.persistence.*;
import java.util.Collection;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Customer", uniqueConstraints = @UniqueConstraint(columnNames = "CustomerEmail"))
public class Customer {

    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    @Column(name = "CustomerID")
    private Integer id;
    @Column(name = "CustomerName")
    private String CustomerName;
    @Column(name = "CustomerEmail")
    private String CustomerEmail;
    @Column(name = "CustomerTelephoneNum")
    private String CustomerTelephoneNum;
    @Column(name = "CustomerAddress")
    private String CustomerAddress;
    @Column(name = "CustomerPassword")
    private String CustomerPassword;
    private Collection<UserRole> roles;

}
