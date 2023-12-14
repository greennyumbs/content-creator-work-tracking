<?php
    $con = mysqli_connect("localhost", "root", "", "content_tracking");
    if(mysqli_connect_errno()) {
        echo "Failed to connect to MySQL", mysqli_connect_error();
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

            <li class="nav-item active">
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
            <div id="content">

                <!-- Begin Page Content -->
                <div class="container-fluid p-3">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Team registration</h1>
            

                    <!-- Content Row -->
                    <div class="row">

                        <div  style="margin-left: auto; margin-right: auto;width: 25rem;">

                            <!-- Area Chart -->
                            <div class="card shadow text-center" >
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Add new team</h6>
                                </div>
                                <div class="card-body">
                                    <?php
                                        if(empty($_GET['teamName'])){
                                            echo "Please enter \"Team name\"<br>";
                                        }
                                        else {
                                            $teamName = mysqli_real_escape_string($con, $_GET['teamName']);

                                            $sql = "INSERT INTO team (team_name) VALUES ('$teamName')";
                                            if (!mysqli_query($con, $sql)) {
                                                die('Error: ' . mysqli_error($con));
                                            }
                                            echo "Success<br>" ;
                                        }
                                        mysqli_close($con);
                                    ?>
                                    <form name = "teamForm" method = "get" action = "team.php">
                                        <button type="submit" class="btn btn-primary">Back</button>
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