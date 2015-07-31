<?php
function getDB() {
	$dbhost="localhost";
	$dbuser="root";
	$dbpass="";
	$dbname="clockshop";
	$dbConnection = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	
	$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbConnection;
}
    
    
    
 $shipping_cost      = 1.50; //custo de envio
$taxes              = array( //impostos e taxas de serviço
                            'VAT' => 12, 
                            'Service Tax' => 5
                            );	   
    
    
    
    
    
    

?>