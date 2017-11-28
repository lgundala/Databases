use schoolschedulingdb;
select studentID, studFirstName, studLastname from students
natural join studentobjective natural join courseofstudy
natural join departments natural join categories natural join subjects
natural join classes natural join student_schedules
where MajorSubjectFlag='Y'
group by studentID
having count(*)>3;
