<?php
class Topic{
 
    // database connection and table name
    private $conn;
    private $table_name = "topics";
 
    // object properties
    public $id;
    public $name;

 
    // constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    function read(){
 
        // select all query
        $query = "SELECT
                    topic as topic_name, topicID   FROM
                    " . $this->table_name . " ";
     
        // prepare query statement
        $stmt = $this->conn->prepare($query);
     
        // execute query
        $stmt->execute();
     
        return $stmt;
    }

    function readByID($id)
    {
        $query = "SELECT
                    topic as topic_name    FROM
                    " . $this->table_name . " where topicID=".$id;
     
        // prepare query statement
        $stmt = $this->conn->prepare($query);
        // execute query
        $stmt->execute();
        $num = $stmt->rowCount();
        if($num>0){
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);
                return $topic_name;
            }
        }
     
        return $stmt;
    }
}
?>