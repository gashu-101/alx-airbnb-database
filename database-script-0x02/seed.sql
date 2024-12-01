-- Insert sample data into User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    (1, 'Abebe', 'Bekele', 'abebe.bekele@example.com', 'hashed_password_1', '0912345678', 'host', CURRENT_TIMESTAMP),
    (2, 'Tigist', 'Mekonnen', 'tigist.mekonnen@example.com', 'hashed_password_2', '0918765432', 'guest', CURRENT_TIMESTAMP),
    (3, 'Yared', 'Haile', 'yared.haile@example.com', 'hashed_password_3', '0923456789', 'admin', CURRENT_TIMESTAMP);

-- Insert sample data into Property table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
    (1, 1, 'Lake View Lodge', 'A cozy lodge with a stunning view of Lake Tana.', 'Bahir Dar, Ethiopia', 1500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, 1, 'Mountain Retreat', 'A peaceful retreat in the Simien Mountains.', 'Gondar, Ethiopia', 2500.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert sample data into Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    (1, 1, 2, '2024-12-01', '2024-12-03', 3000.00, 'confirmed', CURRENT_TIMESTAMP),
    (2, 2, 2, '2024-12-10', '2024-12-15', 12500.00, 'pending', CURRENT_TIMESTAMP);

-- Insert sample data into Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    (1, 1, 3000.00, CURRENT_TIMESTAMP, 'credit_card'),
    (2, 2, 12500.00, CURRENT_TIMESTAMP, 'paypal');

-- Insert sample data into Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    (1, 1, 2, 5, 'The lodge was amazing, and the view was breathtaking!', CURRENT_TIMESTAMP),
    (2, 2, 2, 4, 'The retreat was peaceful but could use better facilities.', CURRENT_TIMESTAMP);

-- Insert sample data into Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    (1, 2, 1, 'Is the lodge available for next week?', CURRENT_TIMESTAMP),
    (2, 1, 2, 'Yes, the lodge is available. Let me know your preferred dates.', CURRENT_TIMESTAMP);

-- Indexes for optimal performance
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
CREATE INDEX idx_review_property_id ON Review(property_id);
CREATE INDEX idx_review_user_id ON Review(user_id);
