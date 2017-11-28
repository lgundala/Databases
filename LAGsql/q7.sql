use schoolschedulingdb;
select deptname, round(avg(grade),2) as avg_grade
from students natural join student_schedules
natural join classes natural join subjects natural join categories
natural join departments
where SemesterNumber=1
group by deptname;

