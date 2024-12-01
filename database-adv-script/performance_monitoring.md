# ALX Airbnb Database: Monitor and Refine Database Performance

## Objective

Continuously monitor and refine the database's performance by analyzing query execution plans, identifying bottlenecks, and implementing changes to optimize performance.

---

## Tools and Methods

1. **Tools Used:**

   - **EXPLAIN ANALYZE:** Provides detailed query execution plans.
   - **SHOW PROFILE:** Used to monitor resource usage during query execution.

2. **Queries Monitored:**
   - Fetch all bookings for a specific user.
   - Retrieve properties with the highest number of reviews.
   - Aggregate query to calculate monthly revenue from bookings.

---

## Query Analysis

### Query 1: Fetch all bookings for a specific user

**Query:**

```sql
SELECT *
FROM bookings
WHERE user_id = 42;
```
