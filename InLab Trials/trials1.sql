CREATE TABLE Participants (
    participant_id INT PRIMARY KEY,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    postal_code VARCHAR(10),
    telephone_number VARCHAR(20),
    date_of_birth DATE
);