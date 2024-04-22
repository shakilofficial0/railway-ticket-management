<?php

session_start();
if (!isset($_SESSION["user"])) {
   header("Location: login.php");
   die();
}

require_once 'database.php';
if(isset($_POST['action']) && $_POST['action'] == 'search_train'){
	$from_station = htmlspecialchars($_POST['from_station']);
   $to_station = htmlspecialchars($_POST['to_station']);
   $travel_date = htmlspecialchars($_POST['travel_date']);
   $sql = "SELECT * FROM `train_schedule` s1, `train_details` s2 WHERE s1.train_id = s2.id AND s2.train_route LIKE '%$from_station%' AND s2.train_route LIKE '%$to_station%' AND s1.travel_date = '$travel_date'";
   $result = mysqli_query($conn, $sql);
   $trains = mysqli_fetch_all($result, MYSQLI_ASSOC);

   foreach($trains as $key => $train){
	  //start station and End station
	  $start_statiion = $train['station_start_from'];
	  $end_station = $train['station_end_to'];
	  $sql = "SELECT * FROM `routes` WHERE id = $start_statiion";
	  $result = mysqli_query($conn, $sql);
	  $start_station = mysqli_fetch_array($result, MYSQLI_ASSOC);
	  $trains[$key]['start_station'] = $start_station['name'];
	  $sql = "SELECT * FROM `routes` WHERE id = $end_station";
	  $result = mysqli_query($conn, $sql);
	  $end_station = mysqli_fetch_array($result, MYSQLI_ASSOC);
	  $trains[$key]['end_station'] = $end_station['name'];
	  
   }
   echo json_encode($trains);
   

}

?>