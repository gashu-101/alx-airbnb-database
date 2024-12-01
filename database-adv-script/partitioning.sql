-- Step 1: Create a partitioned table for the bookings
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    payment_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions based on the start_date column
CREATE TABLE bookings_2024_q1 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE bookings_2024_q2 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

CREATE TABLE bookings_2024_q3 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');

CREATE TABLE bookings_2024_q4 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');

-- Step 3: Add indexes on the partitions
CREATE INDEX idx_bookings_2024_q1_start_date ON bookings_2024_q1(start_date);
CREATE INDEX idx_bookings_2024_q2_start_date ON bookings_2024_q2(start_date);
CREATE INDEX idx_bookings_2024_q3_start_date ON bookings_2024_q3(start_date);
CREATE INDEX idx_bookings_2024_q4_start_date ON bookings_2024_q4(start_date);

-- Step 4: Insert data into the partitioned table
-- Example insertion
INSERT INTO bookings_partitioned (user_id, property_id, payment_id, start_date, end_date)
VALUES (1, 101, 201, '2024-02-15', '2024-02-20'),
       (2, 102, 202, '2024-05-10', '2024-05-15'),
       (3, 103, 203, '2024-08-01', '2024-08-05'),
       (4, 104, 204, '2024-11-25', '2024-11-30');
