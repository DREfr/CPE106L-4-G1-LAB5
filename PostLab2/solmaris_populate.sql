-- Insert Renters
INSERT INTO renter (first_name, middle_initial, last_name, address, city, state, postal_code, phone, email) 
VALUES 
('John', 'D', 'Smith', '123 Main St', 'Miami', 'FL', '33101', '305-555-1234', 'john.smith@email.com'),
('Jane', 'A', 'Doe', '456 Elm St', 'Orlando', 'FL', '32801', '407-555-5678', 'jane.doe@email.com');

-- Insert Properties
INSERT INTO property (location_number, location_name, address, city, state, postal_code, condo_unit_number, square_footage, num_bedrooms, num_bathrooms, max_guests, base_weekly_rate)
VALUES 
(101, 'Beachfront Condos', '789 Ocean Dr', 'Miami', 'FL', '33139', 'B-101', 1200, 2, 2, 6, 1500.00),
(102, 'Lakeside Retreat', '123 Lakeview Rd', 'Orlando', 'FL', '32830', 'L-202', 900, 1, 1, 4, 900.00);

-- Insert Rental Agreements
INSERT INTO rental_agreement (renter_id, property_id, start_date, end_date, weekly_rental_rate)
VALUES 
(1, 1, '2024-07-01', '2024-07-08', 1500.00),
(2, 2, '2024-07-15', '2024-07-22', 900.00);
