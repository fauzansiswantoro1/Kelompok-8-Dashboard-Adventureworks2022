<?php
//setting header to json
header('Content-Type: application/json');

include('koneksi.php');
$query = sprintf("SELECT count(fp.customer_id) as total, f.product_name as judul FROM sales_fact fp JOIN product f ON fp.product_id=f.product_id GROUP by fp.product_id order by count(fp.customer_id) desc LIMIT 10");
$result = $koneksi->query($query);

$data = array();
foreach ($result as $row){
	$data[] = $row;
}

$result -> close();

print json_encode($data);
?>