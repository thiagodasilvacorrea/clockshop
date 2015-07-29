<?php
require_once("./config.php");
require 'Slim/Slim.php';
\Slim\Slim::registerAutoloader();

$slim_app = new \Slim\Slim();

$slim_app->get('/usuario/:id','pegar_usaurio');

$app->post('/adicionar_usuario', 'adicionar_usuario');

$app->put('/usuario/:id', 'atualizar_usuario');

$app->delete('/usuario/:id', 'deletar_usaurio');


$slim_app->run();

function pegar_usaurio($id)
{
 $query = "select * from customers where customerId =$id ORDER by  id";
 
 try {
		$db = getConnection();
		$stmt = $db->query($query);  
		$r= $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($r);
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}



	
}


function adicionar_usuario()
{
	$request = Slim::getInstance()->request();
	
	 $query = "insert into customers (customerName,email,address,city,state,postalCode,password) values(:customerName,:email,:address,:city,:state,:postalCode,md5(:password)";
	 
	 $usuario = json_decode($request->getBody());
	 
 try {
		$db = getConnection();
		$stmt = $db->query($query);  
		$stmt->bindParam(":customerName",$usuario->customerName);
		$stmt->bindParam(":email",$usuario->email);
		$stmt->bindParam(":address",$usuario->address);
		$stmt->bindParam(":city",$usuario->city);
		$stmt->bindParam(":state",$usuario->state);
		$stmt->bindParam(":postalCode",$usuario->postalCode);
		$stmt->bindParam(":password",$usuario->password);
		$usuario->customerId = $db->lastInsertId();
		$db = null;
		echo json_encode($usuario);
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}



	
}

function atualizar_usuario ($id)
{
   	$request = Slim::getInstance()->request();
   	
	 $query = "update customers set customerName = :customerName , email = :email , address = :address, city = :city,state = :state,postalCode = :postalCode where customerId = :id";
	 
	 $usuario = json_decode($request->getBody());
 try {
		$db = getConnection();
		$stmt = $db->query($query);  
		$stmt->bindParam(":customerName",$usuario->customerName);
		$stmt->bindParam(":email",$usuario->email);
		$stmt->bindParam(":address",$usuario->address);
		$stmt->bindParam(":city",$usuario->city);
		$stmt->bindParam(":state",$usuario->state);
		$stmt->bindParam(":postalCode",$usuario->postalCode);
		$stmt->bindParam(":password",$usuario->password);
	    $stmt->bindParam(":customerId",$id);
		$db = null;
		echo json_encode($usuario);
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}
}

function deletar_usaurio ($id)
{
  
  $query = "delete from customers where customerId = :id";
 
 try {
		$db = getConnection();
		$stmt = $db->query($query);  
		$r= $stmt->fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($usuario);
	} catch(PDOException $e) {
		echo '{"error":{"text":'. $e->getMessage() .'}}'; 
	}

}
