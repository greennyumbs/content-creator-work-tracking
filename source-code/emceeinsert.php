<?php
    $con = mysqli_connect("localhost","root","","content_tracking");

    if(mysqli_connect_errno())
    {
        echo "Failed to connect to MySQL";
        mysqli_connect_error();
    }
?>

<?php
                $flag2 = 0;
                for($i = 0;$i < 3;$i++)
                {
                    $flag = 0;
                    if(empty($_POST['firstName'][$i]) || empty($_POST['lastName'][$i])){
                        $flag = 1;
                    }
                    if($flag != 1)
                    {
                        $fname = mysqli_real_escape_string($con,$_POST['firstName'][$i]);
                        $lname = mysqli_real_escape_string($con,$_POST['lastName'][$i]);
                        if(!empty($_POST['midName'][$i])){
                            $mname = mysqli_real_escape_string($con,$_POST['midName'][$i]);
                            $query = "SELECT staff_id FROM staff WHERE staff_fname = '$fname' AND staff_mname = '$mname' AND staff_lname = '$lname';";
                        }
                        else{
                            $query = "SELECT staff_id FROM staff WHERE staff_fname = '$fname' AND staff_lname = '$lname';";
                        }
                        $staff = mysqli_query($con,$query);
                        $staff = mysqli_fetch_array($staff);
                        $staffid = $staff['staff_id'];

                        $type = mysqli_real_escape_string($con,$_POST['teamtype']);
                        if($type == 'Existing')
                        {
                            $emcee_teamid = mysqli_real_escape_string($con,$_POST['emTeamd']);

                            
                            $sql = "INSERT INTO emcee_contract (emcee_team_id,staff_id) VALUES ('$emcee_teamid','$staffid');";

                            if (!mysqli_query($con,$sql)) 
                            {
                                die('Error: ' . mysqli_error($con));
                            }
                            // echo "Contract added<br>";//insert into emcee contract

                            $program = mysqli_real_escape_string($con,$_POST['progName']);
                            if(empty($program) == False)//if a program is assigned
                            {
                                $sql = "UPDATE program SET emcee_team_id = $emcee_teamid 
                                WHERE program_name LIKE '$program';";
                                if (!mysqli_query($con,$sql)) 
                                {
                                    die('Error: ' . mysqli_error($con));
                                    }
                                    // echo "Program assigned<br>";//insert into program
                            }
                        }
                        else
                        {
                            $team = mysqli_real_escape_string($con,$_POST['emTeamt']);
                            $sql = "INSERT INTO emcee_team (emcee_team_name)
                                    VALUES ('$team');";
                            if($flag2 != 1)
                            {
                                if (!mysqli_query($con,$sql)) 
                                {
                                    die('Error: ' . mysqli_error($con));
                                }
                                // echo "Emcee team added<br>";//insert into emcee team
                                $flag2 = 1; //create team only one time

                            //insert into emcee contract
                            $query = "SELECT emcee_team_id FROM emcee_team WHERE emcee_team_name LIKE '$team';";
                            $emcee_team = mysqli_query($con,$query);
                            $emcee_team = mysqli_fetch_array($emcee_team);
                            $emcee_teamid = $emcee_team['emcee_team_id'];

                            $sql = "INSERT INTO emcee_contract (emcee_team_id,staff_id)
                                    VALUES ('$emcee_teamid','$staffid');";

                            if (!mysqli_query($con,$sql)) 
                            {
                                die('Error: ' . mysqli_error($con));
                                }
                                // echo "Contract added<br>";//insert into emcee contract
                            }

                            $program = mysqli_real_escape_string($con,$_POST['progName']);
                            if(empty($program) == False)//if a program is assigned
                            {
                                $sql = "UPDATE program SET emcee_team_id = $emcee_teamid 
                                WHERE program_name LIKE '$program';";
                                if (!mysqli_query($con,$sql)) 
                                {
                                    die('Error: ' . mysqli_error($con));
                                    }
                                    // echo "Program assigned<br>";//insert into program
                            }
                        }
                    }
                }
            ?>
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
    <style> 
        .nav-item{margin: -7px 0}
    </style>
</head>

<body id="page-top">



    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
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

            <li class="nav-item">
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

            <li class="nav-item active">
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
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid p-3">    

                    <!-- Content Row -->
                    <div class="row">

                        <div  style="margin-left: auto; margin-right: auto; margin-top: 20px; width: 25rem;">

                            <!-- Area Chart -->
                            <div class="card shadow ">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Emcee team registration</h6>
                                </div>
                                <div class="card-body">
                                    <form action="emceeinsertform.php">
                                        <div class="form-row">
                                            <div class="form-group ">
                                                <label>Request successful</label>
                                            </div>
                                        </div>

                                        <button type="submit" class="btn btn-primary">Confirm</button>
                                    </form>
                                </div>
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

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>
    <script src="js/demo/chart-bar-demo.js"></script>
    

</body>

</html>