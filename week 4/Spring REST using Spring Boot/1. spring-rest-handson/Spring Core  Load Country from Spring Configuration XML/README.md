# Spring Country XML Configuration

## Description
Reads country information from a Spring XML configuration.

## Instructions
1. Build using:
   ```bash
   mvn clean package
   ```
2. Run:
   ```bash
   mvn exec:java -Dexec.mainClass="com.cognizant.springlearn.SpringLearnApplication"
   ```

## Files
- `Country.java`: Model class with log messages in constructor and accessors.
- `country.xml`: Spring configuration file.
- `SpringLearnApplication.java`: Main method to load and display bean.
