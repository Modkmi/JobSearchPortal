<?php // -Kandidato-
	
include 'libraries/employees.class.php';
$employeesObj = new employees();

$formErrors = null;
$data = array();

// nustatome privalomus formos laukus
$required = array('Vardas', 'Pavarde');

// maksimalūs leidžiami laukų ilgiai
$maxLengths = array (
	'Vardas' => 40,
	'Pavarde' => 40
);

// vartotojas paspaudė išsaugojimo mygtuką
if(!empty($_POST['submit'])) {
	include 'utils/validator.class.php';

	// nustatome laukų validatorių tipus
	$validations = array (
		'Vardas' => 'alfanum',
		'Pavarde' => 'alfanum');

	// sukuriame laukų validatoriaus objektą
	$validator = new validator($validations, $required, $maxLengths);


	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$dataPrepared = $validator->preparePostFieldsForSQL();

		// patikriname, ar nėra sutarčių su tokiu pačiu numeriu
		$tmp = $employeesObj->getEmployee($dataPrepared['id_Kandidatas']);

		if(isset($tmp['id_Kandidatas'])) {
			// sudarome klaidų pranešimą
			$formErrors = "Kandidatas su įvestu numeriu jau egzistuoja.";
			// laukų reikšmių kintamajam priskiriame įvestų laukų reikšmes
			$data = $_POST;
		} else {
			// įrašome naują sutartį
			$employeesObj->insertEmployee($dataPrepared);

		}
		
		// nukreipiame vartotoją į sutarčių puslapį
		if($formErrors == null) {
			header("Location: index.php?module={$module}&action=list");
			die();
		}
        }
	else {
		// gauname klaidų pranešimą
		$formErrors = $validator->getErrorHTML();
		// laukų reikšmių kintamajam priskiriame įvestų laukų reikšmes
		$data = $_POST;
	}
}

// įtraukiame šabloną
include 'templates/employee_form.tpl.php';

?>