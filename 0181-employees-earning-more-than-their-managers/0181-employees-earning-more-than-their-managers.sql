# Write your MySQL query statement below

select
    Emp.name as Employee
from
    Employee Emp, Employee MGR
where
    Emp.managerId=MGR.id
    And
    Emp.salary>MGR.salary;

