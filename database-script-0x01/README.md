# Airbnb Database Schema

## Overview

This project defines the database schema for a simplified Airbnb-like system. It includes tables for users, properties, bookings, payments, reviews, and messages, ensuring proper normalization and constraints.

## Files

- `schema.sql`: Contains SQL `CREATE TABLE` statements to define the database schema with constraints and indexes.

## Features

- **Entities and Attributes**: Defines tables such as `User`, `Property`, `Booking`, `Payment`, `Review`, and `Message`.
- **Constraints**:
  - Primary keys to ensure data uniqueness.
  - Foreign keys to maintain referential integrity.
  - Data type constraints for consistent data storage.
- **Indexes**: Optimized columns for faster query performance.
- **Enum Fields**: Used for predefined attribute values (e.g., `role`, `status`, `payment_method`).

## Instructions

1. Open a SQL client and connect to your database server.
2. Run the `schema.sql` script to create the database schema.
3. Verify that all tables are created and constraints are applied correctly.

## Directory Structure

alx-airbnb-database/ ├── database-script-0x01/ │ ├── schema.sql │ └── README.md

## Usage

After creating the schema, you can populate the database with test data and run queries to inter
