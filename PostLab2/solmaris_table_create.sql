PRAGMA Foreign_Keys=True;

-- Drop tables if they exist to prevent conflicts
DROP TABLE IF EXISTS rental_agreement;
DROP TABLE IF EXISTS property;
DROP TABLE IF EXISTS renter;

-- Renter Table
CREATE TABLE renter (
    renter_id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    middle_initial TEXT,
    last_name TEXT NOT NULL,
    address TEXT NOT NULL,
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    postal_code TEXT NOT NULL,
    phone TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

-- Property Table
CREATE TABLE property (
    property_id INTEGER PRIMARY KEY AUTOINCREMENT,
    location_number INTEGER NOT NULL,
    location_name TEXT NOT NULL,
    address TEXT NOT NULL,
    city TEXT NOT NULL,
    state TEXT NOT NULL,
    postal_code TEXT NOT NULL,
    condo_unit_number TEXT NOT NULL UNIQUE,
    square_footage INTEGER NOT NULL,
    num_bedrooms INTEGER NOT NULL CHECK(num_bedrooms >= 0),
    num_bathrooms INTEGER NOT NULL CHECK(num_bathrooms >= 0),
    max_guests INTEGER NOT NULL CHECK(max_guests > 0),
    base_weekly_rate DECIMAL(10,2) NOT NULL CHECK(base_weekly_rate >= 0)
);

-- Rental Agreement Table
CREATE TABLE rental_agreement (
    rental_id INTEGER PRIMARY KEY AUTOINCREMENT,
    renter_id INTEGER NOT NULL,
    property_id INTEGER NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    weekly_rental_rate DECIMAL(10,2) NOT NULL CHECK(weekly_rental_rate >= 0),
    FOREIGN KEY (renter_id) REFERENCES renter(renter_id) ON DELETE CASCADE,
    FOREIGN KEY (property_id) REFERENCES property(property_id) ON DELETE CASCADE
);
