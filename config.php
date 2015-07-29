<?php
$currency = '&#8377; '; 

$db_username = 'root';
$db_password = '';
$db_name = 'clockshop';
$db_host = 'localhost';

$shipping_cost      = 1.50; //custo de envio
$taxes              = array( //impostos e taxas de serviço
                            'VAT' => 12, 
                            'Service Tax' => 5
                            );						
//Conexão MySQL						
$mysqli = new mysqli($db_host, $db_username, $db_password,$db_name);						
if ($mysqli->connect_error) {
    die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
}
?>