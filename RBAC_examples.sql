-- Role Based Access Control Examples

-- Creating and modifying role
CREATE ROLE caremostor_admin;
ALTER ROLE caremostor_admin WITH LOGIN;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO caremostor_admin;
REVOKE INSERT ON ALL TABLES IN SCHEMA public FROM caremostor_admin;

-- Visualisation of given privelleges
SELECT table_catalog, table_schema, table_name, privilege_type
FROM information_schema.table_privileges
WHERE grantee = 'caremostor_admin';

-- Deleting role
REVOKE SELECT ON ALL TABLES IN SCHEMA public FROM caremostor_admin;
DROP ROLE caremostor_admin;
