<?php
error_reporting(0);
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Origin: *');
$mysqlCon= mysqli_connect("localhost","id20935934_geekytechops","Geekytechops@123","id20935934_treatments");
// $mysqlCon= mysqli_connect("sql.freedb.tech","freedb_root_users_tech","ezycyRn9$9NxH@D","freedb_treatments");

if($_POST['formName']=='insertTest'){
$patientName=$_POST['details']['patientName'];
$age=$_POST['details']['age'];
$address=$_POST['details']['address'];
$gender=$_POST['details']['gender'];
$phone=$_POST['details']['phoneNumber'];
$date=$_POST['details']['date'];
$patientInsert=mysqli_query($mysqlCon,"Insert into patients(`patient_name`,`patient_phno`,`patient_address`,`patient_age`,`patient_gender`,`treatment_date`) values('$patientName','$phone','$address',$age,'$gender','$date')");
$lastInsertedId=mysqli_insert_id($mysqlCon);
echo mysqli_error($mysqlCon);

$tests=$_POST['details']['tests'];
for($i=0;$i<count($_POST['details']['tests']);$i++){
    $test_id=$_POST['details']['tests'][$i]['testid'];
    $doctors=$_POST['details']['tests'][$i]['doctorid'];
    $amount=$_POST['details']['tests'][$i]['amount'];
mysqli_query($mysqlCon,"insert into patient_tests(`pt_patient_id`,`pt_test_id`,`pt_doctor`,`pt_test_price`)values('$lastInsertedId','$test_id','$doctors','$amount')");
}

}

if($_POST['formName']=='pageLoad'){
$selectTests=mysqli_query($mysqlCon,'select * from tests');
$testDetails.='<option value="0">--select--</option>';
while($selectTestsRes=mysqli_fetch_array($selectTests)){
    $testDetails.='<option value="'.$selectTestsRes["test_id"].'" price="'.$selectTestsRes["test_price"].'">'.$selectTestsRes["test_name"].'</option>';
}

$selectDocs=mysqli_query($mysqlCon,'select * from doctors');
$docDetails.='<option value="0">--select--</option>';
while($selectDocsRes=mysqli_fetch_array($selectDocs)){
    $docDetails.='<option value="'.$selectDocsRes["doctor_id"].'" >'.$selectDocsRes["doctor_name"].'</option>';
}

echo $testDetails.'||'.$docDetails;
}

if($_POST['formName']=='add_doctor'){
$doctorsName=$_POST['docName'];
$doctorInsert=mysqli_query($mysqlCon,"Insert into doctors(`doctor_name`) values('$doctorsName')");
echo mysqli_error($mysqlCon);
}

if($_POST['formName']=='add_test'){
$testName=$_POST['testName'];
$amount=$_POST['amount'];
$doctorInsert=mysqli_query($mysqlCon,"Insert into tests(`test_name`,`test_price`) values('$testName','$amount')");
}

if($_POST['formName']=='reports_patients'){
$reportPatients=mysqli_query($mysqlCon,"select * from patients");

$count=0;
$reports='';
while($reportPatientsRes=mysqli_fetch_array($reportPatients)){
$count++;
$reports.='<tr>';
$reports.='<td>'.$reportPatientsRes['patient_name'].'</td>
        <td>'.$reportPatientsRes['patient_phno'].'</td>
        <td>'.$reportPatientsRes['patient_age'].'</td>
        <td>'.$reportPatientsRes['patient_gender'].'</td>
        <td>'.$reportPatientsRes['treatment_date'].'</td>
        <td>'.$reportPatientsRes['created_date'].'</td>';
$reports.='</tr>';


// $selectPatTests=mysqli_query($mysqlCon,'SELECT * FROM `patient_tests` where pt_patient_id='.$reportPatientsRes['patient_id']);
// while($selectPatTestsRes=mysqli_fetch_array($selectPatTests)){

// }
}
// echo $reports;

}
?>