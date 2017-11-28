use schoolschedulingdb;
select distinct subjectname from subjects 
natural join classes natural join student_schedules
where semesternumber =2
and subjectprereq is not null
and studentid in
(select distinct studentid from subjects 
natural join classes natural join student_schedules
where subjectid in (select subjectprereq from subjects)
and semesternumber =1);