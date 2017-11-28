use schoolschedulingdb;
select distinct subjectname from
(select distinct classID, subjectname from subjects natural join classes
where semesternumber=1)as sub_class
where classID not in
(select distinct classID from subjects natural join classes
natural join student_schedules where semesternumber=1) order by subjectname;
