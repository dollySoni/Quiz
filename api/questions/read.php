<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
 
 
// database connection will be here
include_once '../config/database.php';
include_once '../objects/topic.php';
include_once '../objects/question.php';
include_once '../objects/answer.php';
 
// instantiate database and object
$database = new Database();
$db = $database->getConnection();
 
// initialize object
$topic = new Topic($db);
$question = new Question($db);
$answer = new Answer($db);
$data = json_decode(file_get_contents("php://input"));
// read  will be here
// query 
$stmt = $question->read($data->topic);
$num = $stmt->rowCount();
 
// check if more than 0 record found
if($num>0){
 
    $question_arr=array();
    $question_arr["records"]=array("topic"=>$topic->readByID($data->topic),
    
    "totalQuestions"=> 10,
    "perQuestionScore"=> 1,
    "questions"=>array());
    $correctAnswer=1;
 
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        $choices=array();

        
        extract($row);
        $Ans=$answer->read($questionsID);
        while ($rows = $Ans->fetch(PDO::FETCH_ASSOC)){
            extract($rows);
            array_push($choices,array("AnsID"=>$AnsID,"ans"=>$ans));
            if($iscorrect==1){
                $correctAnswer=$AnsID;
            }
        }
        $question_item=array(
            "question"=> $question,
            "choices"=>$choices,
            "correctAnswer"=>$correctAnswer
        );
 
        array_push($question_arr["records"]["questions"], $question_item);
    }
 
    // set response code - 200 OK
    http_response_code(200);
 
    // show  data in json format
    echo json_encode($question_arr);
}else{
 
    // set response code - 404 Not found
    http_response_code(404);
 
    // tell the user no question found
    echo json_encode(
        array("message" => "No question found.")
    );
}
 
