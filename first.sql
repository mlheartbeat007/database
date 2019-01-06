# to descreibe the table status

DESCRIBE student;

### to find all the data from the table

SELECT * FROM student;

## to drop table/or delete table
DROP TABLE student;


# FOR CREATING TABLE
CREATE TABLE student(
    student_id INT,
    NAME VARCHAR(30),
    major VARCHAR(30),
    PRIMARY KEY(student_id)

);

DESCRIBE student;


#FOR ALTERING TABLE I MEAN TO ADD OR REMOVE COLUMN

ALTER TABLE student ADD gpa DECIMAL(3,2);
## DECIMAL (3,2) MEANS IT HAS THREE FIELD
## BEFORE THE POINT AND 2 AFTER THE POINT 
#4.00 OR 3.11 ETC
DESCRIBE student;

#LETS ADD ANOTHER COLUMN

ALTER TABLE student ADD junk VARCHAR(30);

# LETS SEE AGAIN

DESCRIBE student;

#LETS DROP THE TABLE

ALTER TABLE student DROP COLUMN JUNK;

DESCRIBE student;

## ADD ANOTHER 

ALTER TABLE student ADD height VARCHAR(30);

DESCRIBE student;
ALTER TABLE student DROP COLUMN height;

## LETS DROP THE GPA COLUMN
ALTER TABLE student DROP COLUMN gpa;


### STORING INFOR MATION
 INSERT INTO student VALUES(1,'Jack','Biology');
 
 SELECT * FROM student;
 
 INSERT INTO student(NAME,major) VALUES('Kate','Sociology');
 
 SELECT * FROM student;
 
 INSERT INTO student(student_id,NAME) VALUES('2','Clire');
 
 SELECT * FROM student;
 
 
 ## IF YOU WANT TO DUPLICATE INSERT WITH THE SAME 
 ## PRIMARY KEY IT WILL THROW A ERROR
 INSERT INTO student(student_id,NAME) VALUES('2','Clire');

########################################
########################################
#########MORE INSERTING #################

INSERT INTO student VALUES(5,'Mike','Computer Science');

SELECT * FROM student;
INSERT INTO student VALUES(4,'JACK','Biology');





#### UPDATE AND DELETE THE VALUES FROM THE DATABASES


## UPDATE INFORMATION
## UPDATE THE BIOLOGY TO BIO
UPDATE student 
SET major = 'Bio'
WHERE major='Biology';


#3 LETS UPDATE THE COMPUTER SCIENCE TO COMP SCI

UPDATE student
SET major='Comp Sci'
WHERE major='Computer Science';

SELECT * FROM student;


### CHANGE THE MAJOR FROM CIO TO COMP SCI
UPDATE student 
SET major="Comp Sci"
WHERE student_id = 4;

SELECT * FROM student;

UPDAte student 
SET major='Chemistry'
WHERE student_id=2;


##MNORE COMPLEX QUERY
UPDATE student 
SET major = "Biochemistry"
WHERE major='Bio' OR major ='Chemistry';

SELECT * FROM student;


## changing more setting multiple value
## nat once

UPDATE student 
SET name='Tom' ,major='undecided'
WHERE student_id=0;

SELECT * FROM student;




## delete things fronm the database using multiple attribute

DELETE FROM student WHERE 
name ='Tom' AND major='undecided';


SELECT * FROM student;


## select specfic portion from the table

SELECT name,major FROM student;

SELECT name,major FROM student
WHERE major = 'Biochemistry';


### preappend this thing 

SELECT student.name,student.major FROM student
WHERE major = 'Biochemistry';



## order by alphabetical order
SELECT student.name FROM student 
ORDER BY name;

## decendenng order
SELECT student.name FROM student 
ORDER BY name DESC;


## order by student id

SELECT * FROM student ORDER BY student_id ;


SELECT * FROM student ORDER BY student_id  DESC;


## order by major

SELECT * FROM student ORDER BY major;


SELECT * FROM student ORDER BY NAME;

## limit the ammount of result 



############################
#########very very important#######
### sometimes in web application you have to
## limit the options

SELECT * FROM student ORDER BY student_id
LIMIT 2;

## AGAIN

SELECT NAME FROM student ORDER BY NAME LIMIT 4;




SELECT * FROM student WHERE major='Biochemistry'AND NAME='jack' ;


######filtering we can get any data from this filteringn
## line all but not that
### all but bnot less than that
############THIS IS THE NOT SIGN <>
SELECT NAME,major FROM student
WHERE major <> 'Comp Sci';

## again

SELECT NAME FROM student 
WHERE student_id <> 1;



## greate than and less than


SELECT * FROM  student 
WHERE student_id < 4;

SELECT * FROM  student 
WHERE student_id <=4;



SELECT * FROM student WHERE NAME <> 'JACK' AND student_id <> 1;






###### in key workd
##### THIS IS VERY GOOD FOR THE SEARCH OPERATION
### very good for the search operation

SELECT * FROM student 
WHERE NAME IN ('Tanvir','JACK','jack');

SELECT * FROM student;
##

SELECT * FROM student WHERE 
NAME IN ('Tanvir','JACK','jack','Clire') AND
student_id >2;