
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online content tracking</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style> 
        .nav-item{margin: -7px 0}
    </style>
</head>

<body id="page-top">

    <?php
        $con = mysqli_connect("localhost","root","","content_tracking");
        session_start();
        $_SESSION['sub'] = mysqli_real_escape_string($con,$_POST['subsidiary']);
        $_SESSION['role'] = mysqli_real_escape_string($con,$_POST['role']);

        if(mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL";
            mysqli_connect_error();
        }
    ?>

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fab fa-youtube"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Good Deal</div>
            </a>



            <!-- Nav Item - Dashboard -->


            <!-- Divider -->
            <hr class="sidebar-divider">

                        <!-- Heading -->
                        <div class="sidebar-heading">
                Simple Transactions
            </div>

            <li class="nav-item">
                    <a class="nav-link" href="index.php">
                      <i class="far fa-fw fa-building"></i>
                        <span>Subsidiary</span></a>
            </li>

            <li class="nav-item">
                    <a class="nav-link" href="role.php">
                        <i class="fas fa-fw fa-suitcase"></i>
                        <span>Role</span></a>
            </li>

            <li class="nav-item">
                    <a class="nav-link" href="team.php">
                        <i class="fas fa-fw fa-child"></i>
                        <span>Team</span></a>
            </li>

            <li class="nav-item active">
                    <a class="nav-link" href="feedback.php">
                        <i class="fas fa-fw fa-comment"></i>
                        <span>Feedback</span></a>
            </li>

            <li class="nav-item">
                    <a class="nav-link" href="sponsor.php">
                        <i class="fas fa-fw fa-handshake"></i>
                        <span>Sponsor</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Complex Transactions
            </div>



            <!-- Nav Item - Program -->
            <li class="nav-item">
                <a class="nav-link" href="staffReg.php">
                    <i class="fas fa-fw fa-id-card"></i>
                    <span>Staff registration</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="program.php">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Program registration</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="video.php">
                    <i class="fas fa-fw fa-video"></i>
                    <span>Video registration</span></a>
            </li>

            <li class="nav-item">
                    <a class="nav-link" href="emceeinsertform.php">
                    <i class="fas fa-fw fa-user-plus"></i>
                    <span>Emcee team registration</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="guestReg.php">
                <i class="far fa-fw fa-id-card"></i>
                    <span>Guest registration</span></a>
            </li>

            <!-- Nav Item - Tables -->

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <div class="sidebar-heading">
                Analysis Reports
            </div>

            <li class="nav-item">
                <a class="nav-link" href="most_viewed.php">
                    <i class="fas fa-fw fa-award"></i>
                    <span>Most viewed</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="topWage.php">
                    <i class="fas fa-fw fa-dollar-sign"></i>
                    <span>Top wage</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="roleDistribute.php">
                    <i class="fas fa-fw fa-address-book"></i>
                    <span>Role Distribution</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="avgViews.php">
                    <i class="fas fa-fw fa-eye"></i>
                    <span>Average view of guest</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="avgnumvideo.php">
                    <i class="fas fa-fw fa-eye"></i>
                    <span>Average number of video</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="minnumvideo.php">
                    <i class="fas fa-fw fa-eye"></i>
                    <span>Least number of video</span></a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="mostnumvideo.php">
                    <i class="fas fa-fw fa-eye"></i>
                    <span>Most number of video</span></a>
            </li>

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content" style=" margin-top: 25px">
    <!-- End of Topbar -->

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Staff work list</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Staff ID</th>
                                <th>First name</th>
                                <th>Middle name</th>
                                <th>Last name</th>
                                <th>Subsidiary</th>
                                <th>Role</th>
                                <th>Work id</th>
                                <th>Work details</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Staff ID</th>
                                <th>First name</th>
                                <th>Middle name</th>
                                <th>Last name</th>
                                <th>Subsidiary</th>
                                <th>Role</th>
                                <th>Work id</th>
                                <th>Work details</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <!-- Insert the table area-->
                            <?php
                                $sub = mysqli_real_escape_string($con,$_POST['subsidiary']);
                                $role = mysqli_real_escape_string($con,$_POST['role']);
                                $query = "SELECT * FROM Staff s 
                                          INNER JOIN Role r ON s.role_id = r.role_id 
                                          INNER JOIN Subsidiary sd ON s.subsidiary_id = sd.subsidiary_id
                                          INNER JOIN Work w ON s.staff_id = w.staff_id
                                          WHERE sd.subsidiary_name = '$sub' AND r.role_name = '$role';";
                                $result = mysqli_query($con,$query);
                                while($row = mysqli_fetch_array($result))
                                {
                                    echo "<tr>";
                                    echo "<td>";
                                    echo $row['staff_id'];
                                    echo "</td>";
                                    echo "<td>";
                                    echo $row['staff_fname'];
                                    echo "</td>";
                                    echo "<td>";
                                    echo $row['staff_mname'];
                                    echo "</td>";
                                    echo "<td>";
                                    echo $row['staff_lname'];
                                    echo "</td>";
                                    echo "<td>";
                                    echo $row['subsidiary_name'];
                                    echo "</td>";
                                    echo "<td>";
                                    echo $row['role_name'];
                                    echo "</td>";
                                    echo "<td>";
                                    echo $row['work_id'];
                                    echo "</td>";
                                    echo "<td>";
                                    echo $row['work_detail'];
                                    echo "</td>";
                                    echo "</tr>";
                                }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
                        <div  style="margin-left:auto; margin-right:auto; width: 50rem;">

                            <!-- Area Chart -->
                            <div class="card shadow ">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Select work to give feedback</h6>
                                </div>
                                <div class="card-body">
                                    <form action="feedbackinsert.php" method="POST">
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="staffid">Your Name</label>
                                                <select id="staffid" name="staffid" class="form-control" onchange="Checkstat()">
                                                    <option value="" selected></option>
                                                    <?php
                                                        $sub = mysqli_real_escape_string($con,$_POST['subsidiary']);
                                                        $role = mysqli_real_escape_string($con,$_POST['role']);
                                                        $query = "SELECT * FROM staff ORDER BY staff_fname";
                                                        $result = mysqli_query($con,"$query");
                                                        while($row = mysqli_fetch_array($result)){
                                                            echo "<option value=";
                                                            echo '"'.$row['staff_id'].'"';
                                                            echo ">".$row['staff_fname'].' '.$row['staff_mname'].' '.$row['staff_lname']."</option>";
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="workid">Work ID</label>
                                                <select id="workid" name="workid" class="form-control" onchange="Checkstat()">
                                                    <option value="" selected></option>
                                                    <?php
                                                        $sub = mysqli_real_escape_string($con,$_POST['subsidiary']);
                                                        $role = mysqli_real_escape_string($con,$_POST['role']);
                                                        $query = "SELECT * FROM Staff s 
                                                                INNER JOIN Role r ON s.role_id = r.role_id 
                                                                INNER JOIN Subsidiary sd ON s.subsidiary_id = sd.subsidiary_id
                                                                INNER JOIN Work w ON s.staff_id = w.staff_id
                                                                WHERE sd.subsidiary_name = '$sub' AND r.role_name = '$role';";
                                                        $result = mysqli_query($con,"$query");
                                                        while($row = mysqli_fetch_array($result)){
                                                            echo "<option value=";
                                                            echo '"'.$row['work_id'].'"';
                                                            echo ">".$row['work_id']."</option>";
                                                        }
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <label for="feedback">Comment</label>
                                                <textarea id="feedback" name="feedback" rows="5" cols="50" maxlength="255" 
                                                onchange="Checkstat()" placeholder="Type in your comment here"></textarea>
                                            </div>
                                        </div>
                                        <button type="submit" id="submit" class="btn btn-primary">Confirm</button>
                                    </form>
                                </div>
                            </div>
                        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2020</span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
<i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="js/demo/datatables-demo.js"></script>
<script>
    function Checkstat()
    {
        const staffid = document.getElementById('staffid').value
        const workid = document.getElementById('workid').value
        const feedback = document.getElementById('feedback').value
        if(staffid == '' || workid == '' || feedback == '')
        {
            document.getElementById('submit').disabled = true;
        }
        else
        {
            document.getElementById('submit').disabled = false;
        }
    }

    window.addEventListener('load',Checkstat)
</script>
</body>

</html>