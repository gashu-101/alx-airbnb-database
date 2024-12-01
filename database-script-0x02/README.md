# Database Seed Script

This directory contains the SQL script to populate the **AirBnB Database** with sample data. The script is designed to reflect real-world scenarios using Ethiopian names and integer-based IDs for simplicity and localization.

## Files

- **seed.sql**: Contains the SQL `INSERT` statements for populating the database tables with sample data.

## Sample Data Overview

### User Table

The `User` table is populated with sample users, including hosts, guests, and administrators.

| user_id | first_name | last_name | email                       | role  |
| ------- | ---------- | --------- | --------------------------- | ----- |
| 1       | Abebe      | Bekele    | abebe.bekele@example.com    | host  |
| 2       | Tigist     | Mekonnen  | tigist.mekonnen@example.com | guest |
| 3       | Yared      | Haile     | yared.haile@example.com     | admin |

---

### Property Table

The `Property` table contains listings hosted by users.

| property_id | host_id | name             | location            | pricepernight |
| ----------- | ------- | ---------------- | ------------------- | ------------- |
| 1           | 1       | Lake View Lodge  | Bahir Dar, Ethiopia | 1500.00       |
| 2           | 1       | Mountain Retreat | Gondar, Ethiopia    | 2500.00       |

---

### Booking Table

The `Booking` table records reservations made by users.

| booking_id | property_id | user_id | start_date | end_date   | total_price | status    |
| ---------- | ----------- | ------- | ---------- | ---------- | ----------- | --------- |
| 1          | 1           | 2       | 2024-12-01 | 2024-12-03 | 3000.00     | confirmed |
| 2          | 2           | 2       | 2024-12-10 | 2024-12-15 | 12500.00    | pending   |

---

### Payment Table

The `Payment` table tracks payments for bookings.

| payment_id | booking_id | amount   | payment_method |
| ---------- | ---------- | -------- | -------------- |
| 1          | 1          | 3000.00  | credit_card    |
| 2          | 2          | 12500.00 | paypal         |

---

### Review Table

The `Review` table contains feedback on properties.

| review_id | property_id | user_id | rating | comment                                  |
| --------- | ----------- | ------- | ------ | ---------------------------------------- |
| 1         | 1           | 2       | 5      | The lodge was amazing!                   |
| 2         | 2           | 2       | 4      | Peaceful retreat but needs improvements. |

---

### Message Table

The `Message` table facilitates communication between users.

| message_id | sender_id | recipient_id | message_body                          |
| ---------- | --------- | ------------ | ------------------------------------- |
| 1          | 2         | 1            | Is the lodge available for next week? |
| 2          | 1         | 2            | Yes, the lodge is available.          |

## How to Use

1. Ensure the database schema has been created using the `schema.sql` file.
2. Run the `seed.sql` script to populate the database with sample data:

   ```bash
   mysql -u <username> -p <database_name> < seed.sql
   ```
