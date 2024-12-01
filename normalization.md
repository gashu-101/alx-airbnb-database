# Database Normalization

## Objective

The objective of this task is to ensure the database schema adheres to the principles of the Third Normal Form (3NF). Below, we outline the steps taken to normalize the database design, eliminating redundancies and ensuring logical consistency.

---

## Normalization Principles

### First Normal Form (1NF)

A table is in 1NF if:

- It contains only atomic (indivisible) values.
- Each record is unique and identified by a primary key.

**Action Taken**:

- Ensured that all attributes in the tables have atomic values (e.g., no repeating groups or nested data).
- Each table has a unique primary key.

### Second Normal Form (2NF)

A table is in 2NF if:

- It is in 1NF.
- All non-key attributes are fully dependent on the primary key.

**Action Taken**:

- Verified that all attributes in each table depend solely on the primary key. For example:
  - In the `Booking` table, `total_price` depends on the `booking_id`, which serves as the primary key.

### Third Normal Form (3NF)

A table is in 3NF if:

- It is in 2NF.
- There are no transitive dependencies (non-key attributes depend only on the primary key and not on other non-key attributes).

**Action Taken**:

- Ensured no non-key attributes depend on other non-key attributes.

---

## Review of the Schema

### User Table

- **Normalization Steps**: No changes required. Each attribute depends solely on `user_id`.

### Property Table

- **Normalization Steps**: No changes required. All attributes depend on `property_id`, and `host_id` is a foreign key.

### Booking Table

- **Normalization Steps**: No changes required. All attributes depend on `booking_id`.

### Payment Table

- **Normalization Steps**: No changes required. Each payment record depends solely on `payment_id`.

### Review Table

- **Normalization Steps**: No changes required. Attributes like `rating` and `comment` are dependent solely on `review_id`.

### Message Table

- **Normalization Steps**: No changes required. All attributes depend on `message_id`, and `sender_id` and `recipient_id` are foreign keys to the `User` table.

---

## Explanation of 3NF Compliance

The database schema complies with 3NF principles:

1. **Atomic Values**: Each table has columns with atomic values (e.g., no arrays or nested structures).
2. **No Partial Dependencies**: All non-key attributes in each table depend on the entire primary key.
3. **No Transitive Dependencies**: Non-key attributes depend only on the primary key and not on other non-key attributes.

---

## Conclusion

The schema is designed to be in 3NF, ensuring minimal redundancy, efficient storage, and ease of data management. No further adjustments are necessary.
