-- @block test connection
SHOW TABLES;

-- @block utility block
DELETE FROM actor;

-- @block show procedures
SELECT 
    routine_schema as "Database",
    routine_name
FROM 
    information_schema.routines
WHERE 
    routine_type = 'PROCEDURE' AND routine_schema = 'project2022';