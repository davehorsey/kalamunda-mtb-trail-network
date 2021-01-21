-- Set up the database
CREATE DATABASE kal_mtb;

-- Switch to the new database
\CONNECT kal_mtb;

-- Create extensions
CREATE EXTENSION postgis;
CREATE EXTENSION pgrouting;

-- resources
-- https://access.crunchydata.com/documentation/pgrouting/latest/pgrouting-installation.html#install-short
