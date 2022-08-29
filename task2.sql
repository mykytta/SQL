Create table If Not Exists Employee (Id int, Salary int);
Truncate table Employee;
insert into Employee (Id, Salary) values ('1', '100');
insert into Employee (Id, Salary) values ('2', '200');
insert into Employee (Id, Salary) values ('3', '300');
SELECT
    IFNULL(
        (SELECT DISTINCT salary 
        FROM Employee
        WHERE salary < (SELECT MAX(salary)
               FROM Employee)
        ORDER BY salary DESC
        LIMIT 1), NULL) AS SecondHighestSalary
;