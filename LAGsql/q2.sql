use schoolschedulingdb;
select studentID, StudFirstName, StudLastName, count(*) from students
natural join student_schedules natural join classes
natural join subjects natural join categories
natural join departments
where deptname='Information Technology'  group by studentID;