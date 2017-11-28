use schoolschedulingdb;
select deptName, count(classID) from classes
natural join subjects natural join categories
natural join departments
group by deptName;