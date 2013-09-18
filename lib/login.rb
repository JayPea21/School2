#class login

#this page is the controller behind welcome.html

#take the login info and redirect based on user's info
m = Mysql.new("localhost","root","passwd")
r = m.query("SELECT user.type
	    FROM user
	    WHERE user.user_login = #{ulog}
	    	and user.user_password = #{upass}")
	#ulog and upass provided on the page

	#see query results... if user.type = student, go to student_class.html
		#if user.type = teacher, go to faculty_class.html

m.close


end

