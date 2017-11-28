use schoolschedulingdb;
select studFirstName, studLastName, major.majorminorind,
 major.courseofstudyname, major.objectivename,
 minor.majorminorind, minor.courseofstudyname,minor.objectivename from
(select studentID,studFirstName, studLastname, majorminorind, courseofstudyname,
objectivename from students
natural join studentobjective natural join courseofstudy
where MajorMinorind='Minor' 
group by studentID) as minor join
(select studentID,majorminorind, courseofstudyname,
objectivename from students
natural join studentobjective natural join courseofstudy
where MajorMinorind='Major' 
group by studentID)as major
on minor.studentID=major.studentID;
