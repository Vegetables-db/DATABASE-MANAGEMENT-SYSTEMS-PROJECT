create table ART as 
    select student_id,first_name,last_name,speciality
    from students
    where club = '&Club_Name';