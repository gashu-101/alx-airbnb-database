-- Refactored query for improved performance
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.name AS property_name,
    pay.id AS payment_id,
    pay.amount AS payment_amount,
    b.created_at AS booking_date
FROM 
    bookings AS b
WHERE 
    b.id IN (
        SELECT 
            b.id
        FROM 
            bookings AS b
        JOIN 
            users AS u 
        ON 
            b.user_id = u.id
        JOIN 
            properties AS p 
        ON 
            b.property_id = p.id
        JOIN 
            payments AS pay 
        ON 
            b.payment_id = pay.id
    )
    
AND
    b.user_id = u.id
JOIN 
    users AS u 
ON 
    b.user_id = u.id
JOIN 
    properties AS p 
ON 
    b.property_id = p.id
JOIN 
    payments AS pay 
ON 
    b.payment_id = pay.id;
EXPLAIN ANALYZE;