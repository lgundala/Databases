use schoolschedulingdb;
select deptname,count(*) from departments
natural join categories
natural join subjects natural join classes
where SemesterNumber=1
group by deptname
having count(*)>9;

