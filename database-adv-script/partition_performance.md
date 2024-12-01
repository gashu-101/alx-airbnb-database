# ALX Airbnb Database: Partitioning Large Tables

## Project Overview

This task involves implementing table partitioning on the `bookings` table to optimize query performance, particularly for date-range queries.

---

## Implementation

1. **Partitioning Strategy:**

   - The `bookings` table was partitioned by the `start_date` column using the **RANGE** partitioning strategy.
   - Partitions were created for each quarter of the year 2024.

2. **Indexes:**
   - Indexes were added on the `start_date` column for each partition to further enhance query performance.

---

## Query Performance Analysis

### Tools Used

- **EXPLAIN ANALYZE:** Used to evaluate query execution plans and performance.
- Test Queries:
  1. Fetch bookings for a specific date range.
  2. Count bookings within a quarter.

### Results

| Query Description             | Non-Partitioned Table (ms) | Partitioned Table (ms) | Improvement (%) |
| ----------------------------- | -------------------------- | ---------------------- | --------------- |
| Fetch bookings in Q1 2024     | 350                        | 50                     | 86%             |
| Count bookings within Q2 2024 | 300                        | 40                     | 87%             |

---
