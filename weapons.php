<?php
     require_once("Resources/database_access.php");
     
     // Get category ID
    if(!isset($category_id)) {
        $category_id = $_GET['category_id'];
        if (!isset($category_id)) {
            $category_id = 1;
        }
    }
    // Get sort
    if(!isset($sort)) {
        $sort = $_GET['sort'];
        if (!isset($sort)) {
            $sort = 0;
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
    $query = "SELECT * FROM Weapons
              WHERE WeaponTypeID = $category_id
              ORDER BY WeaponTypeID";
    $weapons = $db->query($query);
              
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
            <div class="header">
                <h1><strong>Database</strong></h1>
            </div>
            <div id="wrapper">
            <!-- Title for homepage -->
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
                  <th>Weapon Name</th>
                  <th>Weapon Damage</th>
                  <th>Weapon Weight</th>
                  <th>Weapon Value</th>
                </tr>
                <?php foreach ($weapons as $weapon) : ?>
                <tr>
                    <td><?php echo $weapon['WeaponName']; ?></td>
                    <td><?php echo $weapon['WeaponDamage']; ?></td>
                    <td><?php echo $weapon['WeaponWeight']; ?></td>
                    <td><?php echo $weapon['WeaponValue']; ?></td>
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
            <div class="push"></div>
            <!-- Footer w/ Copyright -->
            <div class="footer">
                <hr><p>Copyright &copy; 2021 Nick Rader</p>
            </div>
        </body>
    </html>