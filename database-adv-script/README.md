# ALX Airbnb Database: Advanced SQL Joins

## Project Overview

This project demonstrates the use of advanced SQL queries to perform joins using different types of joins: INNER JOIN, LEFT JOIN, and FULL OUTER JOIN. These queries are crucial for effectively managing and retrieving data from relational databases in complex scenarios.

### Objectives

- Write an `INNER JOIN` query to retrieve all bookings and the respective users who made those bookings.
- Write a `LEFT JOIN` query to retrieve all properties and their reviews, including properties without reviews.
- Write a `FULL OUTER JOIN` query to retrieve all users and all bookings, even if they are not linked.

---

## Instructions

1. **INNER JOIN**:

   - Retrieves data that matches in both tables.
   - Use case: Find all bookings and their respective users.

   Example:

   ```sql
   SELECT
       users.id AS user_id,
       users.name AS user_name,
       bookings.id AS booking_id,
       bookings.date AS booking_date
   FROM
       users
   INNER JOIN
       bookings
   ON
       users.id = bookings.user_id;
   ```

# ALX Airbnb Database: Subqueries

## Project Overview

This project demonstrates the use of SQL subqueries, focusing on both correlated and non-correlated subqueries. Subqueries allow querying of data based on the results of another query and are essential for solving complex database problems.

### Objectives

- Write a non-correlated subquery to find properties with an average rating greater than 4.0.
- Write a correlated subquery to find users who have made more than 3 bookings.

---

## Instructions

### 1. Non-Correlated Subquery

- A non-correlated subquery executes independently of the outer query.
- Use case: Find all properties where the average rating is greater than 4.0.

Example:

```sql
SELECT
    properties.id AS property_id,
    properties.name AS property_name
FROM
    properties
WHERE
    (SELECT AVG(reviews.rating)
     FROM reviews
     WHERE reviews.property_id = properties.id) > 4.0;
```

# ALX Airbnb Database: Aggregations and Window Functions

## Project Overview

This project focuses on SQL aggregation and window functions, providing advanced analysis of data in relational databases.

### Objectives

- Use aggregation with `COUNT` and `GROUP BY` to find the total number of bookings per user.
- Use window functions (`RANK`) to rank properties based on their booking popularity.

---

### Aggregation with `COUNT` and `GROUP BY`

- Use `COUNT` to calculate the total bookings per user.
- Use `GROUP BY` to group the data by user.

Example:

```sql
SELECT
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM
    users
LEFT JOIN
    bookings
ON
    users.id = bookings.user_id
GROUP BY
    users.id, users.name;
```
