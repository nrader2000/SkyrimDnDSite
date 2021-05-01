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
    $query = "SELECT * FROM Armor_Types
              WHERE ArmorTypeID = $category_id";
    $category = $db->query($query);
    $category = $category->fetch();
    $category_name = $category['ArmorTypeName'];
    
    // Get all categories
    $query = 'SELECT * FROM Armor_Types
              ORDER BY ArmorTypeID';
    $categories = $db->query($query);
    
    // Get products for selected category
    $query = "SELECT * FROM Shields
              WHERE ArmorTypeID = $category_id
              ORDER BY ArmorTypeID";
    $shields = $db->query($query);
              
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
              <div class="column">
                <h2><?php echo $category['ArmorTypeName'];?> Shields<h2>
              </div>
            </div>
            <div class="row">
              <div>
                <ol>
                  <h3>Armor Types</h3>
                  <?php foreach ($categories as $category) : ?>
                    <li><a href="?category_id=<?php echo $category['ArmorTypeID']; ?>">
                        <?php echo $category['ArmorTypeName']; ?></a>
                    </li>
                  <?php endforeach; ?>
                </ol>
              </div>
              <table>
                <tr>
                  <th>Shield Name</th>
                  <th>Shield Defense</th>
                  <th>Shield Weight</th>
                  <th>Shield Value</th>
                </tr>
                <?php foreach ($shields as $shield) : ?>
                <tr>
                    <td><?php echo $shield['ShieldName']; ?></td>
                    <td><?php echo $shield['ShieldDefense']; ?></td>
                    <td><?php echo $shield['ShieldWeight']; ?></td>
                    <td><?php echo $shield['ShieldValue']; ?></td>
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