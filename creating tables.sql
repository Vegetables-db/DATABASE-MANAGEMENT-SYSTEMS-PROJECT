--students
create table STUDENTS(
    student_id number(9) not null primary key,
    first_name varchar2(24) not null,
    last_name varchar2(24) not null,
    third_name varchar2(24),
    gpa number(3),
    speciality varchar2(50),
    apply_date DATE not null,
    club varchar2(13)--maybe null  
);
--teachers
create table TEACHERS(
    teacher_id number(9) not  null,
    first_name varchar2(24) not null,
    last_name varchar2(24) not null,
    third_name varchar2(24),
    classes varchar2(24),
    salary number(7),
    PRIMARY KEY (teacher_id),
    constraint teach_salary check (salary>0)
    );
--educ
create table EDUCATION_HUMANITIES(
    class_id varchar2(7) not null,
    class_name varchar2(50),
    credit_count number(6),
    students_num number(4),
    weekly_hours number(3),
    constraint ed_class_id unique(class_id)   
);
--eng
create table ENGINEERING_NATURALSCIENCE(
    class_id varchar2(7) not null,
    class_name varchar2(50),
    credit_count number(6),
    students_num number(4),
    weekly_hours number(3),
    constraint eng_class_id unique(class_id)    
);
--business
create table BUSINESS_SCHOOL(
    class_id varchar2(7) not null,
    class_name varchar2(50),
    credit_count number(6),
    students_num number(4),
    weekly_hours number(3),
    constraint bs_class_id unique(class_id)    
);
--mng
create table MANAGEMENTLAW_SOCIALSCIENCE(
    class_id varchar2(7) not null,
    class_name varchar2(50),
    credit_count number(6),
    students_num number(4),
    weekly_hours number(3),
    constraint mng_class_id unique(class_id)    
);
--clubs
create table CLUBS(
    club_name varchar2(20) not null primary key,
    number_of_students number(3),
    description varchar2(140),
    head varchar(32),
    events varchar2(400),
    member_id number(9) not null,
    
    constraint member_id foreign key(member_id) references students(student_id)
);