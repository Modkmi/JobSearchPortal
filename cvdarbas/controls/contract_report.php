<?php

include 'libraries/contracts.class.php';
$contractsObj = new contracts();

$formErrors = null;
$fields = array();

$data = array();
if(empty($_POST['submit'])) {
	// rodome ataskaitos parametrų įvedimo formą
	include 'templates/contract_report_form.tpl.php';
} else {
	// nustatome laukų validatorių tipus
	$validations = array (
		'GaliojaNuo' => 'date',
		'GaliojaIki' => 'date'
	);

	// sukuriame validatoriaus objektą
	include 'utils/validator.class.php';
	$validator = new validator($validations);

	if($validator->validate($_POST)) {
		// suformuojame laukų reikšmių masyvą SQL užklausai
		$data = $validator->preparePostFieldsForSQL();
		
		// išrenkame ataskaitos duomenis
		$contractData = $contractsObj->getOrderedContracts($data['GaliojaNuo'], $data['GaliojaIki']);
		$totalPrice = $contractsObj->getSumPriceOfContracts($data['GaliojaNuo'], $data['GaliojaIki']);
//		$totalServicePrice = $contractsObj->getSumPriceOfOrderedServices($data['GaliojaNuo'], $data['GaliojaIki']);
		
		// rodome ataskaitą
		include 'templates/contract_report_show.tpl.php';
	} else {
		// gauname klaidų pranešimą
		$formErrors = $validator->getErrorHTML();
		// gauname įvestus laukus
		$fields = $_POST;

		// rodome ataskaitos parametrų įvedimo formą su klaidomis
		include 'templates/contract_report_form.tpl.php';
	}
}