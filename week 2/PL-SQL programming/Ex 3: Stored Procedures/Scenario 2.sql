/*
Scenario 2: The bank wants to implement a bonus scheme for employees based on their performance.
Question: Write a stored procedure UpdateEmployeeBonus that updates the salary of employees in a given department by adding a bonus 
percentage passed as a parameter.

*/

CREATE OR REPLACE PROCEDURE UpdateEmployeeBonus (
    p_dept_id IN NUMBER,
    p_bonus_percent IN NUMBER
) IS
BEGIN
    UPDATE Employees
    SET Salary = Salary + (Salary * (p_bonus_percent / 100))
    WHERE DepartmentID = p_dept_id;
END;
/


/*
Sample Table: Employees
| EmpID | Name  | Salary | DepartmentID |
| ----- | ----- | ------ | ------------ |
| 1     | David | 50000  | 10           |
| 2     | Emma  | 60000  | 20           |
| 3     | Frank | 55000  | 10           |


output:
| EmpID | Name  | Salary | DepartmentID |
| ----- | ----- | ------ | ------------ |
| 1     | David | 55000  | 10           |
| 2     | Emma  | 60000  | 20           |
| 3     | Frank | 60500  | 10           |


*/
