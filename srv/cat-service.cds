using {test as my} from '../db/data-model';


service StudentService{
    entity Students as projection on my.Students;
    entity Teachers as projection on my.Teachers;

   type StudentOutputStructure{
         studentid : String;
        student_name : String;
        Teacher_id : String;
        teacher_name : String;
   };
    function FetchStudentInformation(student_id : String) returns StudentOutputStructure;
}   