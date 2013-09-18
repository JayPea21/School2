#class faculty_class_list

#list of all classes for teacher/faculty member
m = Mysql.new("localhost","root","passwd")
r = m.query("SELECT class_name,  class_desc
	    FROM class
	    WHERE class.faculty_serial = #{pserial}")
	#pserial is the person_serial of the logged in teacher/faculty
m.close

#button to see roster for each class
#sends class_serial to faculty_class_list_roster


end

