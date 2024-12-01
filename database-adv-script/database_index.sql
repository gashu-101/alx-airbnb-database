-- Create an index on the 'id' column of the users table (frequently used in WHERE and JOIN clauses)
CREATE INDEX idx_users_id ON users(id);

-- Create an index on the 'user_id' column of the bookings table (frequently used in JOIN clauses)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create an index on the 'property_id' column of the bookings table (frequently used in JOIN and WHERE clauses)
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create an index on the 'id' column of the properties table (used in JOIN clauses and frequently queried)
CREATE INDEX idx_properties_id ON properties(id);

-- Create an index on the 'property_id' column of the reviews table (used in JOIN and WHERE clauses)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
