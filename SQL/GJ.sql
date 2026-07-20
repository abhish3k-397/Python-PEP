SHOW DATABASES;
use lpu_pep;
SET sql_safe_updates = 0;
delete from students
where reg_no = 124006;
select * from students;
desc students;
insert into students
(reg_no, students_name, batch, cgpa, age, city, branch, email, semester, phone_number, admission_date, fees, attendance, gender)
values
(124016, 'Aman', 'IT-2025', 8.43, 20, 'Delhi', 'IT', 'aman@gmail.com', 5, 9876543220, '2021-01-15', 95000.00, 91.20, 'male'),
(124017, 'Kavya', 'MECH-2025', 7.89, 21, 'Mumbai', 'MECH', 'kavya@gmail.com', 5, 9876543221, '2021-01-15', 98000.00, 89.45, 'female'),
(124018, 'Harsh', 'IT-2025', 9.04, 19, 'Bangalore', 'IT', 'harsh@gmail.com', 5, 9876543222, '2021-01-15', 102000.00, 95.30, 'male'),
(124019, 'Diya', 'MECH-2025', 8.12, 22, 'Pune', 'MECH', 'diya@gmail.com', 5, 9876543223, '2021-01-15', 99000.00, 90.80, 'female'),
(124020, 'Yash', 'IT-2025', 7.55, 20, 'Hyderabad', 'IT', 'yash@gmail.com', 5, 9876543224, '2021-01-15', 97000.00, 87.90, 'male'),
(124021, 'Ishita', 'MECH-2025', 8.67, 21, 'Jaipur', 'MECH', 'ishita@gmail.com', 5, 9876543225, '2021-01-15', 101000.00, 93.60, 'female'),
(124022, 'Nitin', 'IT-2025', 8.91, 20, 'Chennai', 'IT', 'nitin@gmail.com', 5, 9876543226, '2021-01-15', 98000.00, 94.10, 'male'),
(124023, 'Pooja', 'MECH-2025', 7.74, 22, 'Lucknow', 'MECH', 'pooja@gmail.com', 5, 9876543227, '2021-01-15', 96000.00, 88.75, 'female'),
(124024, 'Sahil', 'IT-2025', 8.35, 19, 'Ahmedabad', 'IT', 'sahil@gmail.com', 5, 9876543228, '2021-01-15', 99000.00, 92.15, 'male'),
(124025, 'Muskan', 'MECH-2025', 9.18, 20, 'Kolkata', 'MECH', 'muskan@gmail.com', 5, 9876543229, '2021-01-15', 104000.00, 97.20, 'female'),
(124026, 'Rakesh', 'IT-2025', 8.07, 21, 'Surat', 'IT', 'rakesh@gmail.com', 6, 9876543230, '2021-07-20', 100000.00, 90.50, 'male'),
(124027, 'Simran', 'MECH-2025', 8.81, 20, 'Noida', 'MECH', 'simran@gmail.com', 6, 9876543231, '2021-07-20', 103000.00, 94.30, 'female'),
(124028, 'Vivek', 'IT-2025', 7.96, 22, 'Nagpur', 'IT', 'vivek@gmail.com', 6, 9876543232, '2021-07-20', 97000.00, 89.90, 'male'),
(124029, 'Tanvi', 'MECH-2025', 9.26, 19, 'Bhopal', 'MECH', 'tanvi@gmail.com', 6, 9876543233, '2021-07-20', 105000.00, 98.10, 'female'),
(124030, 'Akash', 'IT-2025', 8.58, 20, 'Pune', 'IT', 'akash@gmail.com', 6, 9876543234, '2021-07-20', 101000.00, 93.40, 'male'),
(124031, 'Shreya', 'MECH-2025', 8.39, 21, 'Delhi', 'MECH', 'shreya@gmail.com', 6, 9876543235, '2021-07-20', 99000.00, 91.85, 'female'),
(124032, 'Varun', 'IT-2025', 7.68, 22, 'Mumbai', 'IT', 'varun@gmail.com', 6, 9876543236, '2021-07-20', 96000.00, 88.60, 'male'),
(124033, 'Nandini', 'MECH-2025', 9.41, 20, 'Bangalore', 'MECH', 'nandini@gmail.com', 6, 9876543237, '2021-07-20', 106000.00, 98.45, 'female'),
(124034, 'Arpit', 'IT-2025', 8.19, 21, 'Hyderabad', 'IT', 'arpit@gmail.com', 6, 9876543238, '2021-07-20', 98000.00, 90.95, 'male'),
(124035, 'Ritika', 'MECH-2025', 8.84, 20, 'Chennai', 'MECH', 'ritika@gmail.com', 6, 9876543239, '2021-07-20', 102000.00, 95.10, 'female'),
(124036, 'Dev', 'IT-2025', 7.92, 21, 'Jaipur', 'IT', 'dev@gmail.com', 8, 9876543240, '2022-01-10', 97000.00, 89.80, 'male'),
(124037, 'Aditi', 'MECH-2025', 9.08, 20, 'Lucknow', 'MECH', 'aditi@gmail.com', 8, 9876543241, '2022-01-10', 104000.00, 96.30, 'female'),
(124038, 'Krishna', 'IT-2025', 8.71, 19, 'Ahmedabad', 'IT', 'krishna@gmail.com', 8, 9876543242, '2022-01-10', 100000.00, 94.25, 'male'),
(124039, 'Palak', 'MECH-2025', 7.83, 22, 'Surat', 'MECH', 'palak@gmail.com', 8, 9876543243, '2022-01-10', 98000.00, 88.95, 'female'),
(124040, 'Rohan', 'IT-2025', 8.97, 20, 'Noida', 'IT', 'rohan@gmail.com', 8, 9876543244, '2022-01-10', 103000.00, 95.85, 'male');
select students_name,cgpa,cgpa+1 AS Bonus_cgpa FROM students;
update Students_LPU set cgpa = 8.22 where reg_no = 124001;
select students_name,cgpa FROM students;
alter table students add branch varchar(50);
insert into students (reg_no,students_name,batch,cgpa,age,city,branch) values (124004,'Arjun','ECE-2025',8.77,20,'Pune','ECE');
select students_name, branch from students where not branch = "ECE";
select students_name from students where not city = "Delhi" and not branch = 'CSE';
update students set branch = 'CSE' where branch is null;
alter table Students_LPU rename to students;
alter table students rename column name to students_name;
select students_name,age from students where age between 19 and 21;
insert into students (reg_no,students_name,batch,cgpa,age,city,branch) values (124005,'Ajay','ECE-2025',7.87,24,'Pune','ECE');

/*
Practice

1. Display students sorted by Name.
2. Display students sorted by City.
3. Display students sorted by CGPA from highest to lowest.
4. Display students sorted by Branch and then Name.
5. Display students sorted by Age from youngest to oldest.
*/


select * from students order by students_name desc;
select * from students order by city desc;
select * from students order by cgpa desc;
select * from students order by branch and students_name;
select * from students order by age;
desc students;
alter table students add email varchar(50);
alter table students add (semester int,phone_number bigint,admission_date date, fees decimal(10,2),attendance int);
alter table students modify attendance decimal(5,2);
alter table students rename column male to gender;
update students
set fees = 100000,
	attendance = 93.32,
    semester = 7,
    gender = 'male',
    admission_date = '2020-12-10';
select * from students;
update students set gender = 'female' where students_name = 'Priya';
insert into students
(reg_no, students_name, batch, cgpa, age, city, branch, email, semester, phone_number, admission_date, fees, attendance, gender)
values
(124006, 'Riya', 'CSE-2025', 8.91, 20, 'Jaipur', 'CSE', 'riya@gmail.com', 7, 9876543210, '2020-12-10', 100000.00, 94.50, 'female'),
(124007, 'Karan', 'ECE-2025', 7.45, 21, 'Chennai', 'ECE', 'karan@gmail.com', 7, 9876543211, '2020-12-10', 100000.00, 88.20, 'male'),
(124008, 'Sneha', 'CSE-2025', 9.35, 20, 'Hyderabad', 'CSE', 'sneha@gmail.com', 7, 9876543212, '2020-12-10', 100000.00, 97.10, 'female'),
(124009, 'Vikram', 'ECE-2025', 8.12, 22, 'Lucknow', 'ECE', 'vikram@gmail.com', 7, 9876543213, '2020-12-10', 100000.00, 91.40, 'male'),
(124010, 'Ananya', 'CSE-2025', 9.68, 19, 'Kolkata', 'CSE', 'ananya@gmail.com', 7, 9876543214, '2020-12-10', 100000.00, 98.75, 'female'),
(124011, 'Rohit', 'ECE-2025', 7.98, 21, 'Bhopal', 'ECE', 'rohit@gmail.com', 7, 9876543215, '2020-12-10', 100000.00, 86.90, 'male'),
(124012, 'Meera', 'CSE-2025', 8.74, 20, 'Ahmedabad', 'CSE', 'meera@gmail.com', 7, 9876543216, '2020-12-10', 100000.00, 93.85, 'female'),
(124013, 'Aditya', 'ECE-2025', 8.26, 22, 'Surat', 'ECE', 'aditya@gmail.com', 7, 9876543217, '2020-12-10', 100000.00, 90.15, 'male'),
(124014, 'Neha', 'CSE-2025', 9.11, 20, 'Noida', 'CSE', 'neha@gmail.com', 7, 9876543218, '2020-12-10', 100000.00, 95.60, 'female'),
(124015, 'Arnav', 'ECE-2025', 7.62, 21, 'Nagpur', 'ECE', 'arnav@gmail.com', 7, 9876543219, '2020-12-10', 100000.00, 89.30, 'male');
update students set email = concat(lower(students_name), '@gmail.com')
where email is null;

update students set phone_number = concat(9876, (reg_no))
where phone_number is null;

/*Q1*/
select * from students;
/*Q2*/
select distinct city from students;
/*Q3*/

 
/*Q4*/
select distinct branch from students ;
select students_name from students where branch;
/*Q8*/
select * from students where city = "delhi" or city = "noida";
/*Q11*/
select * from students where students_name like 'A%';
/*Q12*/
select * from students where students_name like '%N';
/*Q13*/
select * from students where students_name like "%n%";
/*Q14*/
select * from students where city like 'N%';
/*Q15*/
select * from students where branch = 'CSE' and cgpa >= 8;
/*Q16*/
select * from students where city = 'Delhi' or branch = 'ECE';
/*Q17*/
select * from students where not branch = 'ECE';
/*Q18*/
select * from students where age between 19 and 22 and branch = 'cse';
/*Q19*/
select * from students where email is null;
/*Q20*/
select * from students where phone_number;
/*Q21*/
select * from students order by cgpa desc;
/*Q22*/
select * from students order by students_name;
/*23*/
select * from students order by branch , cgpa desc;
/*Q24*/
select * from students where city = 'Delhi' and cgpa >= 7;
/*Q25*/
select * from students where not city = 'Delhi';
/*Q26*/
select * from students where students_name like 'A%' and city = 'Delhi' or city = 'Bangalore';
/*Q27*/
select * from students where (branch = 'CSE' or branch = 'IT') and age>=20;
/*Q28*/
select * from students where city like '%A%' order by students_name;
/*Q29*/
select * from students where cgpa between 8 and 9;
select * from students;

-- Q01 find the total number of students 
-- Q02 find avg cgpa
-- Q03 find the highest attendance
-- Q04 find the minimum age
-- Q05 find the total fees 
-- Q06 find the total students from delhi 
-- Q07 find the avg age of CSE students
-- Q08 find the minimum cgpa of CSE students 
-- Q09 find the count of students whose name starts with A
-- Q10 find the total fee from students cgpa > 8
select count(*) from students;
select avg(cgpa) from students;
select max(attendance) from students;
select min(age) from students;
select sum(fees) from students;
select count(*) from students where city = 'Delhi';
select avg(age) from students where branch = 'CSE';
select min(cgpa) from students where branch = 'CSE';
select count(*) from students where students_name like 'A%';
select sum(fees) from students where cgpa > 8;

-- challange 1: find avg fees of students , whos city is delhi or jaipur , and cgpa atleast 8
-- challange 2: find count students whose names end with a, and age between 18 and 22
-- challange 3: find highest attendace ,except mexhanical branch 
-- challange 4: find total fees, whose email is available 
-- challange 5: find min cgpa amoung name starts with S

select avg(fees) from students where city = ('Delhi' or 'jaipur' ) and cgpa >=8;
select count(*) from students where students_name like '%A' and age between 18 and 22;
select max(attendance) from students where not branch = 'Mech';
select sum(fees) from students where email is not null;
select min(cgpa) from students where students_name like 'S%';
-- Average cgpa group by branch

select branch , avg(cgpa) from students group by branch;
select branch , sum(fees) from students group by branch;
select city, count(*) from students group by city;
select * from students;
select branch, avg(cgpa) from students group by branch having avg(cgpa) >8;
select city, count(*) from students group by city having count(*) >= 3;
select branch , sum(fees) from students group by branch having sum(fees) > 700000;
select city, avg(attendance) from students group by city having avg(attendance) > 80;

select branch , avg(cgpa) from students where branch in ('CSE','IT') group by branch having avg(cgpa) > 8;
-- Q1 display the total number of students in each branch
-- Q2 display the avg CGPA of every branch 
-- Q3 display the highest attendace of each city
-- Q4 display the minimum fees paid in each branch
-- Q5 display only those branches having more than 8 students
-- Q6 display cities having avg cgpa > 9
-- Q7 display total fees collected from each city 
-- Q8 display highest cgpa pf every branch
-- Q9 display branches where minimum attendance is below 89
-- Q10 display cities whose total fee collected is > 30000000

select branch , count(*) from students group by branch;
select branch , avg(cgpa) from students group by branch;
select city , max(attendance) from students group by city;
select branch , min(fees) from students group by branch;
select branch , count(*) from students group by branch having count(*) > 8;
select city , avg(cgpa) from students group by city having avg(cgpa) > 9;
select city, sum(fees) from students group by city;
select branch , max(cgpa) from studetns group by branch;
select branch , min(attendance) from students group by branch having min(attendance)<89;


-- challange 1: which branch collected highest total fees
-- challange 2: which city hs highest total sutdents
-- challange 3: only brnach which highest cgpa>8.7
-- challange 4: cities where min attendace below 87
-- challange 5: branched having total feess > 6000000

select branch from students;






/*
the principal wants to comparae avg attendance of every branch 
the total fees collected from each sem
the number of students from each sity 
the branched withavg cgpa > 8.5
the hisghest cgpa in each semester 
*/

select branch , avg(attendance) from students group by branch;
select semester , sum(fees) from students group by semester;
select city , count(*) from students group by city;
select branch , avg(cgpa) from students group by branch having avg(cgpa) >8.5;
select semester , max(cgpa) from students group by semester;

drop table students;




CREATE TABLE Students
(
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 18),
    Gender VARCHAR(10),
    Branch VARCHAR(30) NOT NULL,
    Semester INT CHECK (Semester BETWEEN 1 AND 8),
    CGPA DECIMAL(3,2) CHECK (CGPA BETWEEN 0 AND 10),
    City VARCHAR(50) DEFAULT 'Delhi',
    Email VARCHAR(100) UNIQUE,
    Phone_No VARCHAR(15) UNIQUE,
    Admission_Date DATE,
    Fees DECIMAL(10,2) CHECK (Fees > 0),
    Attendance DECIMAL(5,2),
    CHECK (Attendance BETWEEN 0 AND 100)
);

DESC Students;
select * from Students;
-- Q1 Q2 Q3
INSERT INTO Students (Student_ID, Student_Name, Age, Gender, Branch, Semester, CGPA, City, Email, Phone_No, Admission_Date, Fees, Attendance) VALUES (200, 'Pooja Gupta', 24, 'Female', 'EEE', 1, 7.41, 'Hyderabad', 'pooja.gupta200@gmail.com', '9920732648', '2023-10-18', 71395.57, 92.97);





-- Q1 CGPA >9
-- Q2 Attendance < 75
-- Q3 Top 10 highest fees
-- Q4 how many students each city 
-- Q5 avg cgpa of each branch
-- Q6 count each sem
-- Q7 branched with more than 30 students
-- Q8 students admitted in 2025
-- Q9 students from delhi and noida
-- Q10 name starts with A


select Student_Name, CGPA,Branch from Students where CGPA > 9;
select Student_Name, Attendance from Students where Attendance < 75;
select Student_Name, Fees from Students order by Fees desc limit 10;
select City, count(*) from Students group by City;
select Branch, avg(CGPA) from Students group by Branch;
select Semester, count(*) from Students group by Semester;
select Student_Name, Admission_Date from Students where Admission_Date like '2024%';
select Student_Name, City from Students where City = 'Delhi' or City = 'Noida';
select * from Students;
select Student_Name, Admission_Date from Students where year(Admission_Date) = 2024;
select Student_Name, Admission_Date from Students where day(Admission_Date) = 22;

create table Attendance(
Student_ID int,
Subject_Code varchar(10),
Attendance_Date date,
primary key (Student_ID, Subject_Code ));

insert into Attendance values(1010);


create table Enrollment(
Enrollment_ID int primary key,
Student_ID int,
Course_Name varchar(50),
foreign key (Student_ID) references Students(Student_ID)
);

INSERT INTO Attendance (Student_ID, Subject_Code, Attendance_Date)
WITH RECURSIVE Numbers AS (
    SELECT 1 AS Student_ID
    UNION ALL
    SELECT Student_ID + 1
    FROM Numbers
    WHERE Student_ID < 200
)
SELECT
    Student_ID,
    CASE Student_ID % 5
        WHEN 0 THEN 'CSE101'
        WHEN 1 THEN 'MAT201'
        WHEN 2 THEN 'PHY101'
        WHEN 3 THEN 'ENG101'
        ELSE 'CSE102'
    END,
    '2025-08-01'
FROM Numbers;

select * from Attendance;

INSERT INTO Enrollment (Enrollment_ID, Student_ID, Course_Name)
WITH RECURSIVE Numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1
    FROM Numbers
    WHERE n < 200
)
SELECT
    n AS Enrollment_ID,
    n AS Student_ID,
    CASE n % 5
        WHEN 0 THEN 'Database Management Systems'
        WHEN 1 THEN 'Data Structures'
        WHEN 2 THEN 'Operating Systems'
        WHEN 3 THEN 'Computer Networks'
        ELSE 'Python Programming'
    END AS Course_Name
FROM Numbers;

select * from Enrollment;

INSERT INTO Attendance (Student_ID, Subject_Code, Attendance_Date)
WITH RECURSIVE Students AS (
    SELECT 1 AS Student_ID
    UNION ALL
    SELECT Student_ID + 1
    FROM Students
    WHERE Student_ID < 200
)
SELECT Student_ID, 'CSE101', '2025-08-01' FROM Students
UNION ALL
SELECT Student_ID, 'MAT201', '2025-08-01' FROM Students
UNION ALL
SELECT Student_ID, 'PHY101', '2025-08-01' FROM Students
UNION ALL
SELECT Student_ID, 'ENG101', '2025-08-01' FROM Students
UNION ALL
SELECT Student_ID, 'CSE102', '2025-08-01' FROM Students;
drop table Enrollment;
drop table Attendance;






SHOW TABLES;
desc Attendance;
desc Enrollment;
desc Students;

create table Students_Auto
(Student_ID int auto_increment primary key,
Student_Name varchar(50));

insert into Students_Auto(Student_Name)
values ('Rahul'),('Priya'),('Abhishek');
select * from Students_Auto;

delete from Students_Auto where Student_ID between 3 and 9;
insert into Students_Auto(Student_Name)
values ('Rahul'),('Priya'),('Abhishek');

INSERT INTO Students (
    Student_ID,
    Student_Name,
    Age,
    Gender,
    Branch,
    Semester,
    CGPA,
    City,
    Email,
    Phone_No,
    Admission_Date,
    Fees,
    Attendance
)
VALUES (
    201,
    'Aarav Sharma',
    20,
    'Male',
    'CSE',
    3,
    8,
    'Jaipur',
    'aarav.sharma201@gmail.com',
    '9876543201',
    '2025-07-15',
    85000.00,
    93.50
);
desc Students;

insert into Enrollment values (201,999,'CSE');
show indexes from Students;

show tables;

create table Departments(
	Department_ID int primary key,
    Department_Name varchar(50),
    Hod_Name varchar(100)
    
);

insert into Departments values (10,'CSE','Dr Sharma'),(20,'IT','Dr Gupta'),(30,'Mech','Dr Battula'),(40,'Maths','Dr lee'),(50,'Physiscs','Dr Ravi');


create table Faculty(
	Faculty_ID int primary key,
    Faculty_Name varchar(100),
    Department_ID int,
    foreign key(Department_ID) references Departments(Department_ID)
);

INSERT INTO Faculty (Faculty_ID, Faculty_Name, Department_ID)
VALUES
(201, 'Dr. Amit Sharma', 10),
(202, 'Dr. Priya Verma', 20),
(203, 'Dr. Rahul Mehta', 30),
(204, 'Dr. Neha Gupta', 40),
(205, 'Dr. Vikram Singh', 50),
(206, 'Dr. Anjali Kapoor', 10),
(207, 'Dr. Karan Malhotra', 20),
(208, 'Dr. Sneha Iyer', 30),
(209, 'Dr. Rohan Das', 40),
(210, 'Dr. Meera Nair', 50),
(211, 'Dr. Arjun Khanna', 10),
(212, 'Dr. Pooja Bansal', 20),
(213, 'Dr. Sandeep Joshi', 30),
(214, 'Dr. Kavita Rao', 40),
(215, 'Dr. Nitin Agarwal', 50);

create table Courses(
	Course_ID int primary key,
    Course_Name varchar(100),
    Faculty_ID int,
    Duration_Months int,
    foreign key(Faculty_ID) references Faculty(Faculty_ID)
);

INSERT INTO Courses (Course_ID, Course_Name, Faculty_ID, Duration_Months)
VALUES
(101, 'C Programming', 201, 4),
(102, 'C++', 206, 4),
(103, 'Java', 211, 5),

(104, 'Python', 202, 4),
(105, 'SQL', 207, 3),
(106, 'Web Development', 212, 5),

(107, 'DSA', 203, 6),
(108, 'Operating Systems', 208, 5),
(109, 'Computer Networks', 213, 5),

(110, 'Mathematics', 204, 6),
(111, 'Statistics', 209, 4),
(112, 'Discrete Mathematics', 214, 5),

(113, 'Physics', 205, 6),
(114, 'Electronics', 210, 5),
(115, 'Digital Logic', 215, 5);



show tables;

alter table Students
add column Department_ID int;

ALTER TABLE Students
ADD CONSTRAINT fk_student_department
FOREIGN KEY (Department_ID)
REFERENCES Departments(Department_ID);

desc Students;
show create table Students;

UPDATE Students
SET Department_ID =
CASE
    WHEN Student_ID % 5 = 1 THEN 10
    WHEN Student_ID % 5 = 2 THEN 20
    WHEN Student_ID % 5 = 3 THEN 30
    WHEN Student_ID % 5 = 4 THEN 40
    ELSE 50
END;
desc Students;