<?php
error_reporting(0);
$mysqlCon= mysqli_connect("localhost","root","","freedb_treatment");
// $mysqlCon= mysqli_connect("sql.freedb.tech","freedb_root_user_test","%*7Rf@Uhqx8n%h?","freedb_treatment");

if($_POST['formName']=='insertTest'){
$patientName=$_POST['details']['patientName'];
$age=$_POST['details']['age'];
$address=$_POST['details']['address'];
$gender=$_POST['details']['gender'];
$phone=$_POST['details']['phoneNumber'];
$date=$_POST['details']['date'];
$patientInsert=mysqli_query($mysqlCon,"Insert into patients(`patient_name`,`patient_phno`,`patient_address`,`patient_age`,`patient_gender`,`treatment_date`) values('$patientName','$age','$address','$gender','$phone','$date')");
$lastInsertedId=mysqli_insert_id($mysqlCon);

$tests=$_POST['details']['tests'];
for($i=0;$i<count($_POST['details']['tests']);$i++){
    $test_id=$_POST['details']['tests'][$i]['testid'];
    $doctors=$_POST['details']['tests'][$i]['doctorid'];
    $amount=$_POST['details']['tests'][$i]['amount'];
mysqli_query($mysqlCon,"insert into patient_tests(`pt_test_id`,`pt_doctor`,`pt_test_price`)values('$test_id','$doctors','$amount')");
}

}

if($_POST['formName']=='pageLoad'){
$selectTests=mysqli_query($mysqlCon,'select * from tests');
while($selectTestsRes=mysqli_fetch_array($selectTests)){
    $testDetails.='<option value="'.$selectTestsRes["test_id"].'" >'.$selectTestsRes["test_name"].'</option>';
}

$selectDocs=mysqli_query($mysqlCon,'select * from doctors');
while($selectDocsRes=mysqli_fetch_array($selectDocs)){
    $docDetails.='<option value="'.$selectDocsRes["doctor_id"].'" >'.$selectDocsRes["doctor_name"].'</option>';
}

echo $testDetails.'||'.$docDetails;
}

if($_POST['formName']=='add_doctor'){
$doctorsName=$_POST['docName'];
$doctorInsert=mysqli_query($mysqlCon,"Insert into doctors(`doctor_name`) values('$doctorsName')");
}

if($_POST['formName']=='add_test'){
$testName=$_POST['testName'];
$doctorInsert=mysqli_query($mysqlCon,"Insert into tests(`test_name`) values('$testName')");
}
?>