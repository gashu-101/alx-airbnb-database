-- Query 1: Non-correlated subquery to find properties with an average rating greater than 4.0
SELECT 
    properties.id AS property_id, 
    properties.name AS property_name
FROM 
    properties
WHERE 
    (SELECT AVG(reviews.rating) 
     FROM reviews 
     WHERE reviews.property_id = properties.id) > 4.0;

-- Query 2: Correlated subquery to find users who have made more than 3 bookings
SELECT 
    users.id AS user_id, 
    users.name AS user_name
FROM 
    users
WHERE 
    (SELECT COUNT(*) 
     FROM bookings 
     WHERE bookings.user_id = users.id) > 3;
