<?php
    include_once 'includes/dbh.inc.php';
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Cache-Control: post-check=0, pre-check=0", false);
    header("Pragma: no-cache");
?>

<!DOCTYPE html>
<html>

<head>
	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300&display=swap" rel="stylesheet">
 	<link rel="stylesheet" type="text/css" href="test.css">
	<link rel="stylesheet" href="aos-master/dist/aos.css" />

	<title>PSYCHE | Test</title>
</head>

<body>
	
	<!-- Topbar -->
	<div class="topbar">
		<a href="index.html">Home</a>
		<a href="test.php">Do The Test</a>
		<a href="type.html">Personality Types</a>		
		<a href="counselling.html">Counselling Services</a>
		<a href="about.html">About</a>
	
	</div>

	<!-- Banner -->
	<div class="home-logo">
		<div class="buffer"></div>
		<h1>Personality Test.</h1>
	</div>
	
	<!-- Test -->
	<div class=home-bckgrd1>
		<div class="test">
			 <h1>Complete the test.</h1>
			 <table>
                <tbody>
				<form action="" method="POST">
                <?php
                    $sql = "SELECT * FROM questions;";
                    $result = mysqli_query($conn, $sql);
                    $resultCheck = mysqli_num_rows($result);
                    $counter = 0;
                    
                    if ($resultCheck > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<tr><td data-aos='fade' class='ask'>" . $row['question'] . "</td></tr>";
                            echo "<tr><td class='ans'>Agree&nbsp;&nbsp;&nbsp;&nbsp;";
                            echo "<input type='radio' name='$counter' value='0' class='radiobutton'>";
                            echo "<input type='radio' name='$counter' value='1' class='radiobutton'>";
                            echo "<input type='radio' name='$counter' value='2' class='radiobutton'>";
                            echo "<input type='radio' name='$counter' value='3' class='radiobutton'>";
                            echo "<input type='radio' name='$counter' value='4' class='radiobutton'>";
                            echo "&nbsp;&nbsp;&nbsp;&nbsp;Disagree</td></tr>";
                            echo "<tr><td>&nbsp</td></tr>";
                            echo "<tr><td>&nbsp</td></tr>";
							$counter++;
                        }
                    }
                ?>
				<tr><td><input type="submit" name="submit" value="See Results" /></td></tr>
                </form>
				</tbody>
            </table>
			
			
		</div>	
	
	
	<!-- Footer -->
	<div class="footer">
		

		<a href="#" class="bck" data-aos="fade-up">	
			<img src="images/arrow.png" alt="pointUp" >
		</a>

		<script src="https://code.jquery.com/jquery-3.3.1.min.js"  
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="  
    	crossorigin="anonymous"></script>
		<script src="jquery.back-to-top.js"></script>

		<script>

			$(function(){

			
				$('.bck').backToTop();		

			});
	
		</script>

		
		<h1 data-aos="fade-up"> Back to top </h1>
		<p> © 2021 by Psyche. Proudly created by UNMC SEGP G11</p>


	</div>
	
	<!-- animation plugin -->
	<script src="aos-master/dist/aos.js"></script>
    <script>
      document.querySelector('html').classList.remove('no-js');
      if (!window.Cypress) {
        const scrollCounter = document.querySelector('.js-scroll-counter');

        AOS.init({
          mirror: true
        });

        document.addEventListener('aos:in', function(e) {
          console.log('in!', e.detail);
        });
      }
    </script>
	</div>

</body>

</html>

<?php	
	$ans_array = array();
	if(isset($_POST['submit'])){

		//temporarily store user's answers into an array 
		for($counter1=0; $counter1<$resultCheck; $counter1++){
			if(!isset($_POST[$counter1])){
				$ans_array[$counter1] = 2; //if user didn't choose it, it will automatically consider as neutral
			}
			else{
				$ans_array[$counter1] = $_POST[$counter1];
			}
		}
				
		//for loop for a string to use in the query later
		$str2 = '`question1`';
		for($counter2=2; $counter2<$resultCheck+1; $counter2++){
			$str1 = ',`question' . $counter2 . '`';
			$str2 .= $str1;
		}
		
		//for loop for a string to use in the query later
		$str4 = $ans_array[0];
		for($counter3=1; $counter3<$resultCheck; $counter3++){
			$str3 = ',' . $ans_array[$counter3];
			$str4 .= $str3;
		}
						
		//store user's answers into db
		$query = "INSERT INTO `answers` ($str2) VALUES ($str4)";
		$query_run = mysqli_query($conn,$query);
		
		if($query_run){
			//get the id of the just now inserted record 
			$last_id = $conn->insert_id;
			?>
			<script type="text/javascript">
			window.location.href = 'result.php?id= <?php echo $last_id ?>';
			</script>
			<?php
		}
		else{
			echo '<script type="text/javascript"> alert("Data Not Saved") </script>';
		}
		
	}
?>

