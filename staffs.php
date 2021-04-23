<?php
     require_once("Resources/database_access.php");

    //Get data from weapons table
    $query = "SELECT * FROM Staffs";
    $staffs = $db->query($query);
?>
<!DOCTYPE html>
    <html>
        <head>
            <title>SkyrimDnD</title>
	        <link rel="site icon"  type="image/png"  href="Images/SkyrimDnD-Symbol.png">
            <!-- Inclusion of the css style sheet -->
            <link rel="stylesheet" href="Resources/SiteStyles.css"> 
        </head>
        <body>
            <!-- Use of the wrapper class around the whole body content -->
            <div id="wrapper">
            <!-- Title for homepage -->
            <div class="header">
                <h1><strong>Database</strong></h1>
            </div>
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
            <table>
                <tr>
                    <th>Staff Name</th>
                    <th>Staff Weight</th>
                    <th>Staff Value</th>
                    <th>Staff Description</th>
                </tr>
                <?php foreach ($staffs as $staff) : ?>
                <tr>
                    <td><?php echo $staff['StaffName']; ?></td>
                    <td><?php echo $staff['StaffWeight']; ?></td>
                    <td><?php echo $staff['StaffValue']; ?></td>
                    <td><?php echo $staff['StaffDesc']; ?></td>
                </tr>
                <?php endforeach; ?>
            </table>
            <div>
                <ol>
                  <p>Tables</p>
                  <li><a name="boundweaponchoice" href="bweapons.php">Bound Weapons</a></li>
                  <li><a name="staffchoice" href="staffs.php">Staffs</a></li>
                  <li><a name="uniqueweaponchoice" href="uweapons.php">Unique Weapons</a></li>
                  <li><a name="weaponchoice" href="weapons.php">Weapons</a></li>
                </ol> 
            </div>
            <hr>
            </div>
            <!-- Footer w/ Copyright -->
            <div class="footer">
                <hr><p>Copyright &copy; 2021 Nick Rader</p>
            </div>
            </div>
        </body>
    </html>