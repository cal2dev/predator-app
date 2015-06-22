<?php $this->load->view('inc/header');?>
<body><div id="wrapper">

        <?php $this->load->view('inc/nav');?>

        <div id="page-wrapper" class="view-animate-container">

            <div class="container-fluid page {{ pageClass }}" ng-view>
				
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

<?php $this->load->view('inc/footer');?>