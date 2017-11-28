use schoolschedulingdb;
select studentID, studFirstname, studlastname, sum(credits) as totalcredits
from students natural join student_schedules
natural join classes
where grade>65.00
group by studentID
having sum(credits)>18;
