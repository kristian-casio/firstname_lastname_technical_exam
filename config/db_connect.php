<?php
require  'configuration.php';

try {
	$pdoConn = new PDO('mysql:host='.HOST.';dbname='.DATABASE.'', ''.USER.'', ''.PASSWORD.'');
	$pdoConn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException  $e) {
	echo "Connection failed: " . $e->getMessage();
}

?>
