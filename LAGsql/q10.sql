use schoolschedulingdb;
select studentID, studFirstName, studLastname from students natural join
(select studentID from student_schedules natural join classes 
natural join subjects where semesternumber=1 and subjectid=1) as stud_one
where studentID in
(select studentID from student_schedules natural join classes 
natural join subjects where semesternumber=2 and subjectid=2);
