#class faculty_class_list_roster

#roster for all students in selected class
m = Mysql.new("localhost","root","passwd")
r = m.query("SELECT person.last_name, person.first_name, person_email.email
	    FROM registration
	    	left join person on person.person_serial = registration.person_serial
		left join class on regs.class_serial = class.class_serial
		left join email on email.person_serial = person.person_serial
	    WHERE class.class_serial = #{cserial}")
	#cserial is the class_serial of the selected class roster
m.close

end

