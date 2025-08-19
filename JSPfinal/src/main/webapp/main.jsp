 <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Campus ERP - Student Profile</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
    }

    .sidebar {
      width: 220px;
      background-color: #2c3e50;
      color: white;
      position: fixed;
      top: 0;
      right: 0;
      height: 100vh;
      padding-top: 20px;
      transition: transform 0.3s ease;
      z-index: 1000;
    }

    .sidebar h3 {
      text-align: center;
      margin-bottom: 20px;
    }

    .sidebar a {
      display: block;
      color: white;
      padding: 10px 20px;
      text-decoration: none;
      border-bottom: 1px solid #34495e;
    }

    .sidebar a:hover {
      background-color: #1abc9c;
    }

    .sidebar a i {
      margin-right: 10px;
    }

    .sidebar-toggle {
      display: none;
      position: fixed;
      top: 15px;
      right: 15px;
      background-color: #2c3e50;
      color: white;
      border: none;
      padding: 10px;
      z-index: 1100;
      cursor: pointer;
    }

    .main-content {
      margin-right: 220px;
      padding: 20px;
    }

    .top-nav {
      display: flex;
      justify-content: space-between;
      background-color: #34495e;
      color: white;
      padding: 10px 20px;
    }

    .cards {
      display: flex;
      flex-wrap: wrap;
      gap: 30px;
      padding: 40px 20px;
      justify-content: center;
      perspective: 1000px;
    }

    .card {
      width: 250px;
      padding: 20px;
      border-radius: 15px;
      color: white;
      text-decoration: none;
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      box-shadow: 0 10px 20px rgba(0,0,0,0.2);
      transform-style: preserve-3d;
      background-size: cover;
      background-position: center;
    }

    .card:hover {
      transform: rotateY(10deg) translateY(-5px);
      box-shadow: 0 20px 30px rgba(0,0,0,0.3);
    }

    .card h3 {
      margin-top: 0;
    }

    .card a {
      color: white;
      font-weight: bold;
      text-decoration: underline;
    }

    .card-blue { background-color: #007BFF; }
    .card-yellow { background-color: #FFC107; color: #333; }
    .card-red { background-color: #DC3545; }

    .profile-card {
      display: flex;
      flex-wrap: wrap;
     background-color: #007BFF;
      border-radius: 8px;
      padding: 30px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.2);
      margin: 0 20px 40px;
    }

    .profile-card img {
      width: 180px;
      height: 220px;
      border-radius: 4px;
      border: 2px solid #fff;
    }

    .profile-info {
      margin-left: 30px;
      flex: 1;
    }

    .profile-info h1 {
      font-size: 32px;
      color: white;
      margin-bottom: 5px;
    }

    .profile-info h2 {
      font-size: 20px;
      color: white;
      margin: 5px 0 10px;
    }

    .profile-info p {
      margin: 5px 0;
      font-size: 15px;
    }

    .social-icons {
      text-align: center;
      margin-bottom: 20px;
    }

    .social-icons img {
      width: 25px;
      margin: 0 10px;
      cursor: pointer;
    }

    .contact-info a {
      color: blue;
      text-decoration: none;
    }

    @media (max-width: 992px) {
      .sidebar {
        transform: translateX(100%);
        left: auto;
        right: 0;
      }

      .sidebar.show {
        transform: translateX(0);
      }

      .sidebar-toggle {
        display: block;
      }

      .main-content {
        margin-right: 0;
      }

      .cards {
        flex-direction: column;
        align-items: center;
      }

      .profile-card {
        flex-direction: column;
        align-items: center;
        text-align: center;
      }

      .profile-info {
        margin-left: 0;
        margin-top: 20px;
      }
    }
  </style>
</head>
<body>

  <button class="sidebar-toggle" onclick="toggleSidebar()">☰</button>

  <!-- Sidebar -->
  <div class="sidebar" id="sidebar">
    <h3>Campus ERP</h3>
    <a href="#"><i class="fas fa-home"></i> Dashboard</a>
    <a href="completeDetails.jsp"><i class="fas fa-file-alt"></i> Complete Form</a>
    <a href="#"><i class="fas fa-calendar-alt"></i> Timetable</a>
    <a href="#"><i class="fas fa-book-open"></i> Subjects & Teachers</a>
    <a href="#"><i class="fas fa-chart-bar"></i> Results & Marks</a>
    <a href="#"><i class="fas fa-calendar-check"></i> Attendance</a>
    <a href="#"><i class="fas fa-comments"></i> Messages</a>
    <a href="#"><i class="fas fa-download"></i> Downloads</a>
    <a href="changepass.html"><i class="fas fa-lock"></i> Change Password</a>
    <a href="LogoutServlet"><i class="fas fa-sign-out-alt"></i> Logout</a>
    <a href="#"><i class="fas fa-cog"></i> Settings</a>
  </div>

  <!-- Main Content -->
  <div class="main-content">
    <div class="top-nav">
      <span>R.D.B School</span>
    </div>

    <div class="cards">
      <div class="card card-blue">
        <h3>My Profile</h3>
        <a href="#">View Details....</a>
      </div>
      <div class="card card-yellow">
        <h3>Notice</h3>
        <a href="#">View Details....</a>
      </div>
      <div class="card card-red">
        <h3>Account</h3>
        <a href="#">View Details....</a>
      </div>
    </div>

    <div class="social-icons">
      <a href="https://www.facebook.com/profile.php?id=100080162846822"><img src="https://img.icons8.com/ios-glyphs/30/000000/facebook-new.png" alt="Facebook"></a>
      <img src="https://img.icons8.com/ios-glyphs/30/000000/twitter.png" alt="Twitter">
      <a href="https://www.instagram.com/rdbischool/"><img src="https://img.icons8.com/ios-glyphs/30/000000/instagram-new.png" alt="Instagram"></a>
      <a href="https://www.youtube.com/@rdbacademy5440"><img src="https://img.icons8.com/ios-glyphs/30/000000/youtube-play.png" alt="YouTube"></a>
    </div>

    <div class="profile-card">
      <img src="${studentPhoto}" alt="Student Photo">
      <div class="profile-info">
        <h1>${studentName}</h1>
        <h2>Student Id: ${studentId}</h2>
        <p>Class - ${className}</p>
        <p>${school}</p>
        <p><strong>Name:</strong> ${studentName}</p>
        <p><strong>D.O.B.:</strong> ${dob}</p>
        <p><strong>Address:</strong> ${address}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Phone:</strong> ${phone}</p>
        <p><strong>Class Teacher:</strong> ${classTeacher}</p>
        <p><strong>Contact:</strong> ${classTeacherContact}</p>
        <!--<p><strong>Website:</strong> <a href="http://www.R.D.D Academy edu.in" target="_blank">www.gniotgroup.edu.in</a></p>>-->
      </div>
    </div>
  </div>

  <script>
    function toggleSidebar() {
      document.getElementById("sidebar").classList.toggle("show");
    }
  </script>
</body>
</html>
