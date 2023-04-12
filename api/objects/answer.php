<?php
class Answer{
 
    // database connection and table name
    private $conn;
    private $table_name = "answer";
 
    // object properties
    public $questionsID ;
    public $topic_id;
    public $questions;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    function read($question_id){
 
        // select all query
        $query = "SELECT
                    AnsID, ans, iscorrect  FROM
                    " . $this->table_name . " 
                    where question_id=".$question_id;
     
        // prepare query statement
        $stmt = $this->conn->prepare($query);
     
        // execute query
        $stmt->execute();
     
        return $stmt;
    }
}
?>