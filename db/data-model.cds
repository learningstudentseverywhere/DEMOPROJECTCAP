namespace test;



entity Students{
    key studentid : String;
        student_name : String;
}

entity Teachers { 
    key Teacher_id : String;
        teacher_name : String;
}

entity Parents{
    key parent_id : String;
    key student_id : String;
        parent_name : String;
}