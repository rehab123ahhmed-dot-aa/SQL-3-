drop database if exists Students ; 
create database students ;
Use students ; 


#Basics Q
#Q1
select count(*) as total_record from student_grades_assignment ;
select * from student_grades_assignment;
#Q2
select avg (grade ) as avg_grade from student_grades_assignment;
#Q3
select max(grade ) as max_grade from student_grades_assignment;
#Q4
select min(grade ) as min_grade from student_grades_assignment;
#Q5
select count(distinct  studentid ) as total_dis_student from student_grades_assignment;
#Q6
select courseid , avg(grade) as avg_grade from student_grades_assignment group by courseid ;
#Q7
select department , count(distinct studentid) as num_of_student 
from student_grades_assignment group by department ;
#Q8
select courseid , max(grade) as max_grade from student_grades_assignment group by courseid;
#Q9
select department , min(grade) as min_grade from student_grades_assignment group by department ;
#Q10
select studentid , count(courseid) as total_course from student_grades_assignment group by studentid ;
----------------------------------------------
# itermediate Q
#Q11
select courseid , avg(grade) as avg_grade from student_grades_assignment group by courseid 
having avg(grade) >75;
#Q12
select studentid , count(courseid) as total_course from student_grades_assignment group by studentid 
having count(courseid) >3;
#Q13
select department , avg(grade) as avg_grade from student_grades_assignment group by department 
having avg(courseid) <65 ; 
#Q14
select studentid , max(grade) as max_grade from student_grades_assignment group by studentid 
having max( grade) =100 ;
#Q15 
select courseid , count(distinct studentid) as stu_count from student_grades_assignment group by courseid 
having count( distinct studentid)>=20;
---------------------------------------------------
#advanced Q 
#Q16 
select studentid , count(courseid) as course_count, avg (grade) as avg_grade  from student_grades_assignment group by studentid 
having count(courseid) >=4 and avg(grade) >80 ;
#Q17 
select department , max(grade) as max_grade , avg(grade) as avg_grade 
from student_grades_assignment group by department having max(grade) >=2 * avg(grade);
#Q18
select courseid , avg(grade) as avg_grade from  student_grades_assignment 
group by courseid having avg(grade ) > avg (grade);
#Q19 
select studentid , min(grade) as min_grade 
from  student_grades_assignment group by studentid
having min(grade )>70;
#Q20 
select studentid , min(grade) as min_grade 
from  student_grades_assignment group by studentid
having min(grade )>70;





