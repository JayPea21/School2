School2
=======
 = School site = 

welcome.html -  Has 2 options, login or create. 
              Create goes to create.html and the login process takes the client to seperate pages based on their 
              school and type: student or faculty. 
              
create.html - contains a form to create a new user account.

student_class.html - if a student went through login process they would arrive here. Shows a personalized list of classes
              for that student.
              Also has the option to register the student for new classes, sending them to student_register.html
              
student_register.html - personalized list of available classes for the logged in student with option to register 
              for each one.
              
faculty_class.html - if a teacher/faculty went through the login process they would arrive here. shows a personalized
              list of classes for that teacher.
              Alo has the option to view rosters for each individual class, sending them to faculty_class_roster.html
              
faculty_class_roster.html - personalized list of students in the class selected at the previous page.



 = School database = 
 
 I think the table design is pretty straight-forward except for the address tables. In the address table, the field "type"
 signifies whether the "link_serial" field is linked to a person or school serial. Without this flag to signify, we could have a
 situation where a school serial and person serial both matched.
 Theoretically it would be 'S' for student and 'F' for faculty.
