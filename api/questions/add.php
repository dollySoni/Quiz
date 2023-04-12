<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
 
// database connection will be here
include_once '../config/database.php';
include_once '../objects/question.php';
 
$database = new Database();
$db = $database->getConnection();
 
// initialize object
$question = new Question($db);
$data = json_decode(file_get_contents("php://input"));
// read  will be here
// query 
$stmt = $question->Add($data->allAnswer);

  // set response code - 200 OK
  http_response_code(200);
 
  // show  data in json format
  echo json_encode(array("message"=>$stmt));
// no  found will be here