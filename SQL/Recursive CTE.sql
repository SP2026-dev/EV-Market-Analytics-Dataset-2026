--------------------------------------------- Recursive CTE --------------------------------------------------------------------------------------------
-- Q) Show Complete Employee Hierarchy (Use - Recursive CTE)
WITH RECURSIVE employee_hierarchy AS
(
    -- Anchor Query
    SELECT emp_id,emp_name,designation,manager_id,1 AS level
    FROM ev_employees
    WHERE manager_id IS NULL

    UNION ALL

    -- Recursive Query
    SELECT e.emp_id,e.emp_name,e.designation,e.manager_id,eh.level + 1
    FROM ev_employees e
    INNER JOIN employee_hierarchy eh
    ON e.manager_id = eh.emp_id
)

SELECT * FROM employee_hierarchy;