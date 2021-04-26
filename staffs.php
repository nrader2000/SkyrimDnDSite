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
    $query = "SELECT * FROM Staff_Types
              WHERE StaffTypeID = $category_id";
    $category = $db->query($query);
    $category = $category->fetch();
    $category_name = $category['StaffTypeName'];
    
    // Get all categories
    $query = 'SELECT * FROM Staff_Types
              ORDER BY StaffTypeID';
    $categories = $db->query($query);
    
    // Get products for selected category
    $query = "SELECT * FROM Staffs
              WHERE StaffTypeID = $category_id
              ORDER BY StaffTypeID";
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
            <div>
                <ol>
                  <h3>Staff Magic Types</h3>
                  <?php foreach ($categories as $category) : ?>
                    <li><a href="?category_id=<?php echo $category['StaffTypeID']; ?>">
                        <?php echo $category['StaffTypeName']; ?></a>
                    </li>
                  <?php endforeach; ?>
                </ol>
              </div>
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