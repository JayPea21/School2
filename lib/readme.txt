= School site =

welcome.html - Has 2 options, login or create. Create goes to create.html and the login process takes the client to seperate pages based on their school and type: student or faculty.

create.html - contains a form to create a new user account.

student_class.html - if a student went through login process they would arrive here. Shows a personalized list of classes for that student. Also has the option to register the student for new classes, sending them to student_register.html

student_register.html - personalized list of available classes for the logged in student with option to register for each one.

faculty_class.html - if a teacher/faculty went through the login process they would arrive here. shows a personalized list of classes for that teacher. Alo has the option to view rosters for each individual class, sending them to faculty_class_roster.html

faculty_class_roster.html - personalized list of students in the class selected at the previous page.


= School database =

I think the table design is pretty straight-forward except for the address tables. Instead of having SCHOOL and PERSON link directly to ADDRESS, I used tables in the middle to allow for multiple links i.e. if a person had more than one anddress then there would be multiple entries in PERSON_ADDRESS_LINK with their person_serial and different address_serials.