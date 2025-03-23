package com.ocrespo.di.mealtrack;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * The main entry point for the Meal Track application.
 */
@SpringBootApplication
public class MealTrackApplication {

  /**
   * The main method that starts the Spring Boot application.
   *
   * @param args command-line arguments passed to the application
   */
  public static void main(String[] args) {
    SpringApplication.run(MealTrackApplication.class, args);
  }

}