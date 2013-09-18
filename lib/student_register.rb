#class student_register

#list of all available classes for student to register for based on the school they attend
m = Mysql.new("localhost","root","passwd")
r = m.query("SELECT class_name,  class_desc
	    FROM class
	    	left join school on school.school_serial = class.school_serial
		left join person on person.school_serial = school.school_serial
	    WHERE person.person_serial = #{pserial}
	    	and class.school_serial = person.school_serial")
	#pserial is the person_serial of the student
m.close


end

