<?php
     require_once("Resources/database_access.php");

    //Get data from weapons table
    $query = "SELECT * FROM Bound_Weapons";
    $bweapons = $db->query($query);
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
             <table>
                <tr>
                    <th>Bound Weapon Name</th>
                    <th>Bound Weapon Damage</th>
                    <th>Magicka Cost</th>
                </tr>
                <?php foreach ($bweapons as $bweapon) : ?>
                <tr>
                    <td><?php echo $bweapon['BWeaponName']; ?></td>
                    <td><?php echo $bweapon['BWeaponDamage']; ?></td>
                    <td><?php echo $bweapon['MagickaCost']; ?></td>
                </tr>
                <?php endforeach; ?>
            </table>
            <div>
                <ol>
                  <h3>Tables</h3>
                  <li><a name="boundweaponchoice" href="bweapons.php">Bound Weapons</a></li>
                  <li><a name="staffchoice" href="staffs.php">Staffs</a></li>
                  <li><a name="uniqueweaponchoice" href="uweapons.php">Unique Weapons</a></li>
                  <li><a name="weaponchoice" href="weapons.php">Weapons</a></li>
                </ol> 
            </div>
            <hr>
            </div>
            </div>
            <div style="height:280px;"></div>
            <!-- Footer w/ Copyright -->
            <div class="footer">
                <hr><p>Copyright &copy; 2021 Nick Rader</p>
            </div>
        </body>
    </html>