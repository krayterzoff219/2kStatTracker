-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER postgres
WITH PASSWORD 'postgres1';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO postgres;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO postgres;

CREATE USER postgres_appuser
WITH PASSWORD 'postgres1';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO postgres_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO postgres_appuser;
