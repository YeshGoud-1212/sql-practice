-- Create sample table
CREATE TABLE employees (
  emp_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  department TEXT,
  salary INTEGER DEFAULT 30000,
  email TEXT UNIQUE
);

-- Insert with all values
INSERT INTO employees (emp_id, name, department, salary, email)
VALUES (1, 'Alice', 'HR', 50000, 'alice@example.com');

-- Insert with NULL department and default salary
INSERT INTO employees (emp_id, name, department, email)
VALUES (2, 'Bob', NULL, 'bob@example.com');
-- Update salary where department is NULL
UPDATE employees
SET salary = 35000
WHERE department IS NULL;
-- Delete specific row
DELETE FROM employees WHERE emp_id = 2;
