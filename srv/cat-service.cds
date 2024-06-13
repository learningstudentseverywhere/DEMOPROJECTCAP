using {test as my} from '../db/data-model';


service StudentService{
    entity Students as projection on my.Students;
    entity Teachers as projection on my.Teachers;
    entity Parents as projection on my.Parents;

   type StudentOutputStructure{
         studentid : String;
        student_name : String;
        Teacher_id : String;
        teacher_name : String;
   };

   type FetchStudentInformationActionOneStructure{
       student_id : String;
       student_name : String;
   }
    function FetchStudentInformation(student_id : String) returns StudentOutputStructure;

    action FetchStudentInformationAction(student_id : String) returns StudentOutputStructure;

    action FetchStudentInformationActionOne(Input : FetchStudentInformationActionOneStructure) returns StudentOutputStructure;

    entity ViewForStudentandTeachers as select
    key A.studentid,
    key A.student_name,
        B.parent_id,
        B.parent_name
    from Students as A 
    inner join Parents as B
    on A.studentid = B.student_id;
}   