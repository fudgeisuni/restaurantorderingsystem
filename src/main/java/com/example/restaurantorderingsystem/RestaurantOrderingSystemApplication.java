package com.example.restaurantorderingsystem;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableEncryptableProperties
public class RestaurantOrderingSystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(RestaurantOrderingSystemApplication.class, args);
    }

}
