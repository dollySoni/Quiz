<?php
class Question{
 
    // database connection and table name
    private $conn;
    private $table_name = "questions";
 
    // object properties
    public $questionsID ;
    public $topic_id;
    public $questions;
 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    function read($topic_id){
 
        // select all query
        $query = "SELECT
                    questionsID, topic_id, question  FROM
                    " . $this->table_name . " as Q LEFT join topics as T on Q.topic_id=T.topicID
                    where Q.topic_id=".$topic_id;
     
        // prepare query statement
        $stmt = $this->conn->prepare($query);
     
        // execute query
        $stmt->execute();
     
        return $stmt;
    }

    function Add($AnsID){
         
        $data=array();
        foreach($AnsID as $ID)
        {
            $data[]=array("UserID"=>1,"AnsID"=>$ID);
        }

        
        $sql ="INSERT INTO user_answer (UserID, AnsID) VALUES(:UserID, :AnsID)";
        // select all query

        $stmt = $this->conn->prepare ($sql);
        foreach ($data as $value)
         {
            $stmt->execute($value);
        }

        return "Answer saved successfully!";
    }
}
?>