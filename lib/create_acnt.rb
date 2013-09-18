#class Create

require "mysql"

#this page is the controller behind create.html

#assume that class mysql exists
m = Mysql.new("localhost","root","passwd")
r = m.query("Insert into user 
	    (person_serial, user_login, user_password) 
	    VALUES #{pserial}, 
	    	#{ulogin}, 
	    	#{ppass};")
	#pserial, ulogin and ppass are from the site's form
m.close


end

