use schoolschedulingdb;
select StudFirstName, StudLastName from students
natural join studentobjective natural join courseofstudy
where CourseOfStudyName="English";