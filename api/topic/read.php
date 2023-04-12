<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
 
// database connection will be here
include_once '../config/database.php';
include_once '../objects/topic.php';


// instantiate database and  object
$database = new Database();
$db = $database->getConnection();
 
// initialize object
$topic = new Topic($db);
 


$stmt = $topic->read();
$num = $stmt->rowCount();
 
// check if more than 0 record found
if($num>0){
 
    $topics_arr=array();
    $topics_arr["records"]=array();
     while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        // extract row
        // this will make $row['name'] to
        // just $name only
        extract($row);
 
        $topic_item=array(
            "topicID"=>$topicID,
           "topic_name"=>  $topic_name
        );
 
        array_push($topics_arr["records"], $topic_item);
    }
 
    // set response code - 200 OK
    http_response_code(200);
 
    // show  data in json format
    echo json_encode($topics_arr);
}else{
 
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user no topics found
    echo json_encode(
        array("message" => "No topics found.")
    );
}
 
