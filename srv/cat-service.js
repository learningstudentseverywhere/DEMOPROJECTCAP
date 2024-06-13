const cds = require('@sap/cds');



module.exports = cds.service.impl(async function(srv){

    this.on('FetchStudentInformation',async (req,res)=>{
        let student_id = req.data.student_id
        let Student_info = await SELECT.from('test_Students').where({studentid:student_id});
        let result = {
            "studentid" :Student_info[0].STUDENTID,
            "student_name" : Student_info[0].STUDENT_NAME,
            "Teacher_id" : "1",
            "teacher_name" : "Kalpana"
        }
      req.reply(result);
    });


    this.on('FetchStudentInformationAction',async (req,res)=>{
        let student_id = req.data.student_id
        let Student_info = await SELECT.from('test_Students').where({studentid:student_id});
        let result = {
            "studentid" :Student_info[0].STUDENTID,
            "student_name" : Student_info[0].STUDENT_NAME,
            "Teacher_id" : "1",
            "teacher_name" : "Kalpana"
        }
      req.reply(result);
    });

    this.on('FetchStudentInformationActionOne',async (req,res)=>{
        let student_id = req.data.Input.student_id
        let Student_info = await SELECT.from('test_Students').where({studentid:student_id});
        let result = {
            "studentid" :Student_info[0].STUDENTID,
            "student_name" : Student_info[0].STUDENT_NAME,
            "Teacher_id" : "1",
            "teacher_name" : "Kalpana"
        }
      req.reply(result);
    });
});

