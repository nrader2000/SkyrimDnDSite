<?php
    require_once("Resources/database_access.php");
?>
<!DOCTYPE html>
    <html>
        <head>
            <title>ESTT</title>
	        <link rel="site icon"  type="image/png"  href="Images/SkyrimDnD-Symbol.png">
            <!-- Inclusion of the css style sheet -->
            <link rel="stylesheet" href="Resources/SiteStyles.css"> 
        </head>
        <body>
            <!-- Title for homepage -->
            <div class="header">
                <h1><strong>Database</strong></h1>
            </div>
            <!-- Use of the wrapper class around the whole body content -->
            <div id="wrapper">
            <hr>
            <!-- Navagation Section -->
            <div class="topnav">
                <div class="topnav-centered">
                    <a href="index.html">Home</a>
                    <a href="About.html">About</a>
                    <a href="Database.php">Database</a>
                    <a href="Resources.html">Resources</a>
                    <a href="News.html">News</a>
                    <a href="Connect.html">Connect</a>
                </div>
            </div>
            <hr>
            <!-- Main Content of Page -->
            <div class="row">
            <div class="column">
              <div class="columncontent">
                <p>Select one of the table links to start looking at some data!</p>
              </div>
            </div>
            <div class="vl"></div>
            <div>
                <ol>
                  <p>Tables</p>
                  <li><a name="armorchoice" href="armors.php">Armors</a></li>
                  <li><a name="boundweaponchoice" href="bweapons.php">Bound Weapons</a></li>
                  <li><a name="shieldchoice" href="shields.php">Shields</a></li>
                  <li><a name="staffchoice" href="staffs.php">Staffs</a></li>
                  <li><a name="uniquearmorchoice" href="uarmors.php">Unique Armors</a></li>
                  <li><a name="uniqueshieldchoice" href="ushields.php">Unique Shields</a></li>
                  <li><a name="uniqueweaponchoice" href="uweapons.php">Unique Weapons</a></li>
                  <li><a name="weaponchoice" href="weapons.php">Weapons</a></li>
                </ol> 
            </div>
            <hr>
            </div>
            </div>
            <hr>
            <div class="push"></div>
            <!-- Footer w/ Copyright -->
            <div class="footer">
                <hr><p>Copyright &copy; <?php echo date("Y"); ?> ESTT</p>
            </div>
        </body>
    </html>