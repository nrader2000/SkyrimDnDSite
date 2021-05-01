<?php
     require_once("Resources/database_access.php");
     
     // Get category ID
    if(!isset($category_id)) {
        $category_id = $_GET['category_id'];
        if (!isset($category_id)) {
            $category_id = 1;
        }
    }
    // Get name for current category
    $query = "SELECT * FROM Weapon_Types
              WHERE WeaponTypeID = $category_id";
    $category = $db->query($query);
    $category = $category->fetch();
    $category_name = $category['WeaponTypeName'];
    
    // Get all categories
    $query = 'SELECT * FROM Weapon_Types
              ORDER BY WeaponTypeID';
    $categories = $db->query($query);
    
    // Get products for selected category
    $query = "SELECT * FROM Unique_Weapons
              WHERE WeaponTypeID = $category_id
              ORDER BY WeaponTypeID";
    $uweapons = $db->query($query);
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
                <h2><?php echo $category['WeaponTypeName'];?><h2>
              </div>
            </div>
            <div class="row">
              <div>
                <ol>
                  <h3>Weapon Types</h3>
                  <?php foreach ($categories as $category) : ?>
                    <li><a href="?category_id=<?php echo $category['WeaponTypeID']; ?>">
                        <?php echo $category['WeaponTypeName']; ?></a>
                    </li>
                  <?php endforeach; ?>
                </ol>
              </div>
             <table>
                <tr>
                    <th>Unique Weapon Name</th>
                    <th>Unique Weapon Damage</th>
                    <th>Unique Weapon Weight</th>
                    <th>Unique Weapon Value</th>
                    <th>Unique Weapon Description</th>       
                </tr>
                <?php foreach ($uweapons as $uweapon) : ?>
                <tr>
                    <td><?php echo $uweapon['UWeaponName']; ?></td>
                    <td><?php echo $uweapon['UWeaponDamage']; ?></td>
                    <td><?php echo $uweapon['UWeaponWeight']; ?></td>
                    <td><?php echo $uweapon['UWeaponValue']; ?></td>
                    <td><?php echo $uweapon['UWeaponDesc']; ?></td>
                    
                </tr>
                <?php endforeach; ?>
            </table>
            <div>
                <ol>
                  <h3>Tables</h3>
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
            <div class="push"></div>
            <!-- Footer w/ Copyright -->
            <div class="footer">
                <hr><p>Copyright &copy; <?php echo date("Y"); ?> ESTT</p>
            </div>
        </body>
    </html>