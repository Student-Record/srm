<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin</title>
    <link href="css/admin.css" type="text/css" rel="stylesheet">
</head>
<body>
    <div class="root-div">
        <div class="header">
            <div class="head-left-sec">
                <h1 style="color: aliceblue;">Student Record Management System</h1>
            </div>
            <!-- <div class="head-right-sec">
                <a href="login.jsp"><button id="logout-btn">Logout</button></a>
            </div> -->
           

        </div>
        <div class="content">
            <div class="left-section">
                <h3 id="dash-head">Dashboard</h3>
                <!-- <a href="add_teacher.html"><button class="dash">Reg. Teachers</button></a> -->
                <a href="course_detales.jsp"><button class="dash">Course</button></a> 
<!--                <a href="add_teacher.jsp"><button class="dash">Reg. Teachers</button></a>-->
                <a href="add_student.jsp"><button class="dash">Reg. students</button></a>
                <!-- <button class="dash">View HOD</button> -->
                <a href="login.jsp"><button class="dash">Logout</button></a>
            </div>
            <div class="right-section">
                <div class="up-head">
                    <h2>Welcome Admin</h2>
                </div>
                <div class="down">
                    <div class="down-head">
                        <h3>Home</h3>
                    </div>
                    <div class="down-content">
                        <a href="view_hod.jsp"><button class="home-btn">View HOD</button></a>
                        <a href="view_teach.jsp"><button class="home-btn">View Teachers</button></a>
                        <a href="view_student.jsp"><button class="home-btn">View Students</button></a>
                    </div>

                </div>
                
            </div>
        </div>
    </div>
</body>
</html>