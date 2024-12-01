# ALX Airbnb Database: Index Optimization

## Project Overview

This document analyzes the impact of implementing indexes on query performance. Indexes were added to high-usage columns in the `users`, `bookings`, and `properties` tables to optimize queries.

---

## High-Usage Columns Identified

1. `users.id`: Frequently used in `WHERE` and `JOIN` clauses.
2. `bookings.user_id`: Joins users with their bookings.
3. `bookings.property_id`: Joins bookings with properties.
4. `properties.id`: Used in `WHERE`, `JOIN`, and `ORDER BY` clauses.
5. `reviews.property_id`: Joins reviews with properties.

---

## Index Creation

The following indexes were added:

```sql
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_id ON properties(id);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
```
