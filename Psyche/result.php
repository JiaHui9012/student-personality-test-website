<?php
    include_once 'includes/dbh.inc.php';
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Cache-Control: post-check=0, pre-check=0", false);
    header("Pragma: no-cache");
?>

<?php

		$userID = $_GET['id'];
		//calculation
		//get user's the answers from db
		$sql_ans = "SELECT * FROM `answers` WHERE `id` = $userID";
		$result_ans = mysqli_query($conn, $sql_ans);
		$row_ans = mysqli_fetch_assoc($result_ans);
		
		
		//get EI questions from db and sum up the answers
		$sql_EI = "SELECT * FROM `questions` WHERE `type` = 'EI'";
		$result_EI = mysqli_query($conn, $sql_EI);
		$resultCheck_EI = mysqli_num_rows($result_EI);
		$cal_EI = 0;
		while ($row_EI = mysqli_fetch_assoc($result_EI)) {
			$cal_EI += $row_ans['question'.$row_EI['id']];
		}
		//total score if user choose all disagrees
		$total_EI = 4*$resultCheck_EI;
		//calculate the E and I of the user
		$result_I = ($cal_EI*100/$total_EI);
		$result_E = 100-($cal_EI*100/$total_EI);
		
		
		//get SN questions from db and sum up the answers
		$sql_SN = "SELECT * FROM `questions` WHERE `type` = 'SN'";
		$result_SN = mysqli_query($conn, $sql_SN);
		$resultCheck_SN = mysqli_num_rows($result_SN);
		$cal_SN = 0;
		while ($row_SN = mysqli_fetch_assoc($result_SN)) {
			$cal_SN += $row_ans['question'.$row_SN['id']];
		}
		//total score if user choose all disagrees
		$total_SN = 4*$resultCheck_SN;
		//calculate the S and N of the user
		$result_N = ($cal_SN*100/$total_SN);
		$result_S = 100-($cal_SN*100/$total_SN);
		
		
		//get TF questions from db and sum up the answers
		$sql_TF = "SELECT * FROM `questions` WHERE `type` = 'TF'";
		$result_TF = mysqli_query($conn, $sql_TF);
		$resultCheck_TF = mysqli_num_rows($result_TF);
		$cal_TF = 0;
		while ($row_TF = mysqli_fetch_assoc($result_TF)) {
			$cal_TF += $row_ans['question'.$row_TF['id']];
		}
		//total score if user choose all disagrees
		$total_TF = 4*$resultCheck_TF;
		//calculate the T and F of the user
		$result_T = ($cal_TF*100/$total_TF);
		$result_F = 100-($cal_TF*100/$total_TF);
		
		
		//get JP questions from db and sum up the answers
		$sql_JP = "SELECT * FROM `questions` WHERE `type` = 'JP'";
		$result_JP = mysqli_query($conn, $sql_JP);
		$resultCheck_JP = mysqli_num_rows($result_JP);
		$cal_JP = 0;
		while ($row_JP = mysqli_fetch_assoc($result_JP)) {
			$cal_JP += $row_ans['question'.$row_JP['id']];
		}
		//total score if user choose all disagrees
		$total_JP = 4*$resultCheck_JP;
		//calculate the J and P of the user
		$result_P = ($cal_JP*100/$total_JP);
		$result_J = 100-($cal_JP*100/$total_JP);
		
		
		//store the calculated answers into db with user id
		$query1 = "INSERT INTO `results` (`id`,`E`,`I`,`S`,`N`,`T`,`F`,`J`,`P`) VALUES ('$userID','$result_E','$result_I','$result_S','$result_N','$result_T','$result_F','$result_J','$result_P')";
		$query_run1 = mysqli_query($conn,$query1);
		
		$sql_results = "SELECT * FROM `results` WHERE `id` = $userID";
			$result_results = mysqli_query($conn, $sql_results);
			$row_results = mysqli_fetch_assoc($result_results);
			if($row_results['E']>$row_results['I']){
				$personality = 'E';
			}
			else{
				$personality = 'I';
			}
			if($row_results['S']>$row_results['N']){
				$personality .= 'S';
			}
			else{
				$personality .= 'N';
			}
			if($row_results['T']>$row_results['F']){
				$personality .= 'T';
			}
			else{
				$personality .= 'F';
			}
			if($row_results['J']>$row_results['P']){
				$personality .= 'J';
			}
			else{
				$personality .= 'P';
		}

		$personality_query = "SELECT * FROM `personality_types` WHERE `personality_type` = '$personality'";
		$result = mysqli_query($conn, $personality_query);
		$row = mysqli_fetch_array($result);
		
		$word = $row['name'];
		$vowelArry = array('a','e','i','o','u');
		$prefix = in_array(strtolower(substr($word ,0,1)),$vowelArry)? "an" : "a";
		$updated_word = $prefix." ".$word;
		$form_url = "https://docs.google.com/forms/d/e/1FAIpQLSdlRZt71OGqNUX03mVPzL8QOzZMK0zzmLRtNfOZr6QmCZshqg/viewform?entry.845229831=".$row_results['E']."&entry.367198524=".$row_results['S']."&entry.1677731306=".$row_results['T']."&entry.2090866502=".$row_results['J'];
?>

<!DOCTYPE html>
<html>

<head>

	<link href="https://fonts.googleapis.com/css2?family=Jost:wght@300;400;500&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300&display=swap" rel="stylesheet">
 	<link rel="stylesheet" type="text/css" href="results.css">
 	<link rel="stylesheet" href="aos-master/dist/aos.css" />
 	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">	

	<title>PSYCHE.</title>
</head>
	
<body>
	
	<div class="topbar">
		<a href="index.html">Home</a>
		<a href="test.php">Do The Test</a>
		<a href="type.html">Personality Types</a>		
		<a href="counselling.html">Counselling Services</a>
		<a href="about.html">About</a>
	
	</div>
	
	<div class="counselling-banner">
		<h1>You are <?php echo $updated_word ?>.</h1>
	</div>

	<div class=home-bckgrd1>
		<div class="counselling-what">
			 <table>
                <tbody>
				<tr>
					<td>
					<div class="tt">
						Your personality type is:<br><br>
					</div>	
					<div data-aos="zoom-in" class="whattype">
						<?php echo $personality ?>
					</div>
					</td>
				<td>
					<table>
						<tbody>
						<tr>
							<td>EXTRAVERTED</td>
							<td><div class="w3-red" style="width:100%">
  								<div class="w3-container w3-blue" id="EI" style="width:50%"></div>
								</div>
								</div></td>
							<td>INTROVERTED</td>
						</tr>
						<tr>
							<td>
							<?php
							echo $row_results['E']."%";
							?>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>
							<?php
							echo $row_results['I']."%";
							?>
							</td>
						</tr>
						<tr>
							<td>OBSERVANT</td>
							<td><div class="w3-red" style="width:100%">
  								<div class="w3-container w3-blue" id="OI" style="width:50%"></div>
								</div>
								</div></td>
							<td>INTUITIVE</td>
						</tr>
						<tr>
							<td>
							<?php
							echo $row_results['S']."%";
							?>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>
							<?php
							echo $row_results['N']."%";
							?>
							</td>
						</tr>
						<tr>
							<td>THINKING</td>
							<td>
								<div class="w3-red " style="width:100%">
  								<div class="w3-container  w3-blue" id="TF" style="width:50%"></div>
								</div>
								</div></td>
							<td>FEELING</td>
						</tr>
						<tr>
							<td>
							<?php
							echo $row_results['T']."%";
							?>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>
							<?php
							echo $row_results['F']."%";
							?>
							</td>
						</tr>
						<tr>
							<td>JUDGING</td>
							<td><div class="w3-red" style="width:100%">
  								<div class="w3-container w3-blue" id="JP" style="width:50%"></div>
								</div>
								</div></td>
							<td>PROSPECTING</td>
						</tr>
						<tr>
							<td>
							<?php
							echo $row_results['J']."%";
							?>
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td>
							<?php
							echo $row_results['P']."%";
							?>
							</td>
						</tr>
						</tbody>
					</table>
				</td>
				</tr>
                
				</tbody>
            </table>
		</div>	
		
		<div class="Start">
		<h1>Learn more about your personality.</h1>
		<button type="button" onclick="window.location.href='/psyche/Personalities/<?php echo $word ?>.html'">
			Learn more
		</button>
		</div>
		
		<div class="Start" style="background-color: #1F1F01;">
		<h1>Find a counsellor.</h1>
		<button type="button" onclick="window.location.href='<?php echo $form_url ?>'">
			Get started
		</button>
		</div>
		
		<div class="footer">
		

		<a href="#" class="bck" data-aos="fade-up">	
			<img src="images/arrow.png" alt="pointUp">
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

	<script>			
		var type;
		type = '<?php echo $personality ?>';

		if(type == 'INTJ' || type == 'INTP' || type == 'ENTJ' || type == 'ENTP') {
			document.querySelector(".counselling-banner").style.backgroundColor = "#d5c5c0";
			document.querySelector(".whattype").style.color = "#5D3324";
			document.querySelector(".Start").style.backgroundColor = "#706865";
		}
		if(type == 'INFJ' || type == 'INFP' || type == 'ENFJ' || type == 'ENFP') {
			document.querySelector(".counselling-banner").style.backgroundColor = "#c9dbd0";
			document.querySelector(".whattype").style.color = "#505752";
			document.querySelector(".Start").style.backgroundColor = "#6A746E";
		}
		if(type == 'ISFJ' || type == 'ISFP' || type == 'ESTJ' || type == 'ESFJ') {
			document.querySelector(".counselling-banner").style.backgroundColor = "#bdd5e2";
			document.querySelector(".whattype").style.color = "#4A545A";
			document.querySelector(".Start").style.backgroundColor = "#7C8D96";
		}
		if(type == 'ISTP' || type == 'ISFP' || type == 'ESTP' || type == 'ESFP') {
			document.querySelector(".counselling-banner").style.backgroundColor = "#e0dbb8";
			document.querySelector(".whattype").style.color = "#595748";
			document.querySelector(".Start").style.backgroundColor = "#959178";
		}
		
		var e;
		var o;
		var t;
		var j;

		e = '<?php echo $row_results['E']; ?>';

		document.getElementById('EI').style.width = e + "%";

		o = '<?php echo $row_results['S']; ?>';

		document.getElementById('OI').style.width = o + "%";

		t = '<?php echo $row_results['T']; ?>';

		document.getElementById('TF').style.width = t + "%";

		j = '<?php echo $row_results['J']; ?>';

		document.getElementById('JP').style.width = j + "%";
		






	</script>

</body>

</html>
