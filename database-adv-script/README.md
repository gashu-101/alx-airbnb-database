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
