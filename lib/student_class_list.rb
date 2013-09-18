#class student_class_list

#list of all classes for student
m = Mysql.new("localhost","root","passwd")
r = m.query("SELECT class_name,  class_desc
	    FROM registration
	    	left join person on person.person_serial = registration.person_serial
		left join class on registration.class_serial = class.class_serial
		left join email on email.person_serial = person.person_serial
	    WHERE registration.person_serial = #{pserial}")
	#pserial is the person_serial of the student
m.close

#button to see available classes to register for 
#sends person_serial to student_register


end
