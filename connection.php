<?php
// error_reporting(0);
header('Access-Control-Allow-Headers: *');
header('Access-Control-Allow-Origin: *');
// $mysqlCon= mysqli_connect("localhost","id20940841_geektech","Geektech@123","id20940841_treatments");
$mysqlCon= mysqli_connect("localhost","id20935934_geekytechops","Saikiran@1998","id20935934_treatments");
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
echo mysqli_error($mysqlCon);
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
if($_POST['formName']=='patient_result'){
    $count=count($_POST['formName']);
    for($i=0;$i<$count;$i++){
        $resultInsert=mysqli_query($mysqlCon,"update patient_tests set pt_test_result='".$_POST['details']['results'][$i]."' where pt_id=".$_POST['details']['primId'][$i]);
        echo mysqli_error($mysqlCon);
    }    
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


if($_POST['formName']=='single_patient_data'){
$patientId=$_POST['patientId'];

$singlePatient=mysqli_query($mysqlCon,"select * from patients where patient_id=$patientId");
$singlePatientRes=mysqli_fetch_array($singlePatient);

if($singlePatientRes['patient_gender']==1){
    $genderVal='Male';
}else if($singlePatientRes['patient_gender']==2){
    $genderVal='Female';
}else{
    $genderVal='Other';
}
$resultant.=$singlePatientRes['patient_name'].'||'.$singlePatientRes['patient_address'].'||'.$singlePatientRes['patient_age'].'||'.$genderVal.'||'.$singlePatientRes['treatment_date'].'||'.$singlePatientRes['created_date'].'||'.$singlePatientRes['patient_id'].'||';

$singlePatientTests=mysqli_query($mysqlCon,"select * from patient_tests where pt_patient_id=$patientId");
$count=0;
while($singlePatientTestsRes=mysqli_fetch_array($singlePatientTests)){

    // $testNames=mysqli_fetch_array(mysqli_query($mysqlCon,"select * from tests where test_id=".$singlePatientTestsRes['pt_test_id']));
    $doctorNames=mysqli_fetch_array(mysqli_query($mysqlCon,"select * from doctors where doctor_id=".$singlePatientTestsRes['pt_doctor']));

$resultantTests[$count]=[];
$resultantTests[$count]['testName']=$singlePatientTestsRes['pt_test_id'];
$resultantTests[$count]['docName']=$doctorNames['doctor_name'];
// $resultantTests[$count]['price']=$testNames['test_price'];
$resultantTests[$count]['testPrimId']=$singlePatientTestsRes['pt_id'];
$count++;
}
$resultant.=json_encode($resultantTests);
echo $resultant;
}

if($_POST['formName']==''){
$reportPatients=mysqli_query($mysqlCon,"select * from patients");

$count=0;
$reports['data']=[];

while($reportPatientsRes=mysqli_fetch_array($reportPatients)){
$count++;
if($reportPatientsRes['patient_gender']==1){
    $genderVal='Male';
}else if($reportPatientsRes['patient_gender']==2){
    $genderVal='Female';
}else{
    $genderVal='Other';
}
$view='<button onclick="patientFetch('.$reportPatientsRes["patient_id"].')" type="button" class="btn btn-outline-success btn-sm">View</button>';
array_push($reports['data'],array('name'=>$reportPatientsRes['patient_name'], 'phone'=>$reportPatientsRes['patient_phno'],'age'=>$reportPatientsRes['patient_age'],'gender'=>$genderVal,'treat_date'=>$reportPatientsRes['treatment_date'],'created_date'=>$reportPatientsRes['created_date'],'action_btn'=>$view));
}
header("Content-Type: application/json");
echo json_encode($reports);

}
?>