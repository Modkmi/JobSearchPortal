<?php
/**
 * Papildomų paslaugų redagavimo klasė -Imones-
 *
 * @author ISK
 */

class services {
	
	
	private $imone_lentele = '';
	private $skelbimas_lentele = '';
        private $vietove_lentele = '';
//      private $testas_lentele = '';
//	private $paslaugu_kainos_lentele = '';
//	private $uzsakytos_imones_lentele = '';
	
	public function __construct() {
		$this->imone_lentele = config::DB_PREFIX . 'imone';
		$this->skelbimas_lentele = config::DB_PREFIX . 'skelbimas';
                $this->vietove_lentele = config::DB_PREFIX . 'vietove';
//		$this->paslaugu_kainos_lentele = config::DB_PREFIX . 'paslaugu_kainos';
//		$this->uzsakytos_imones_lentele = config::DB_PREFIX . 'uzsakytos_paslaugos';
	}
	
	/**
	 * Paslaugų sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getServicesList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
		}
		if(isset($offset)) {
			$limitOffsetString .= " OFFSET {$offset}";
		}
		
		$query = "  SELECT *
					FROM `{$this->imone_lentele}`
                                            LEFT JOIN `{$this->vietove_lentele}`
                                                ON `{$this->imone_lentele}`.`fk_Vietoveid_Vietove`=`{$this->vietove_lentele}`.`id_Vietove` {$limitOffsetString}";
		$data = mysql::select($query);  
		
		return $data;
                
	}
	
	/**
	 * Paslaugų kiekio radimas
	 * @return type
	 */
	public function getServicesListCount() {
		$query = "  SELECT COUNT(`id_Imone`) as `kiekis`
					FROM {$this->imone_lentele}";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Paslaugos kainų sąrašo radimas
	 * @param type $serviceId
	 * @return type
	 */
//	public function getServicePrices($serviceId) {
//		$query = "  SELECT *
//					FROM `{$this->paslaugu_kainos_lentele}`
//					WHERE `fk_paslauga`='{$serviceId}'";
//		$data = mysql::select($query);
//		
//		return $data;
//	}
	
	/**
	 * Sutarčių, į kurias įtraukta paslauga, kiekio radimas
	 * @param type $serviceId
	 * @return type
	 */
//	public function getContractCountOfService($serviceId) {
//		$query = "  SELECT COUNT(`{$this->sutartys_lentele}`.`nr`) AS `kiekis`
//					FROM `{$this->imone_lentele}`
//						INNER JOIN `{$this->paslaugu_kainos_lentele}`
//							ON `{$this->imone_lentele}`.`id`=`{$this->paslaugu_kainos_lentele}`.`fk_paslauga`
//						INNER JOIN `{$this->uzsakytos_imones_lentele}`
//							ON `{$this->paslaugu_kainos_lentele}`.`fk_paslauga`=`{$this->uzsakytos_imones_lentele}`.`fk_paslauga`
//						INNER JOIN `{$this->sutartys_lentele}`
//							ON `{$this->uzsakytos_imones_lentele}`.`fk_sutartis`=`{$this->sutartys_lentele}`.`nr`
//					WHERE `{$this->imone_lentele}`.`id`='{$serviceId}'";
//		$data = mysql::select($query);
//		
//		return $data[0]['kiekis'];
//	}
	
	/**
	 * Paslaugos išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getService($id) {
		$query = "  SELECT *
					FROM `{$this->imone_lentele}`
					WHERE `id_Imone`='{$id}'";
		$data = mysql::select($query);

		return $data[0];
                
	}
	
	/**
	 * Paslaugos įrašymas
	 * @param type $data
	 * @return įrašytos paslaugos ID
	 */
	public function insertService($data) {
		$query = "  INSERT INTO `{$this->imone_lentele}`
								(
									`id_Imone`,
                                                                        `Pavadinimas`,
									`Veikla`,
                                                                        `Tinklapis`,
                                                                        `fk_Vietoveid_Vietove`
								)
								VALUES
								(
									'{$data['id_Imone']}',
                                                                        '{$data['Pavadinimas']}',
									'{$data['Veikla']}',
                                                                        '{$data['Tinklapis']}',
                                                                        '{$data['fk_Vietoveid_Vietove']}'
								)";
		mysql::query($query);
		
//		return mysql::getLastInsertedId();
	}
	
	/**
	 * Paslaugos atnaujinimas
	 * @param type $data
	 */
	public function updateService($data) {
		$query = "  UPDATE `{$this->imone_lentele}`
					SET     `Pavadinimas`='{$data['Pavadinimas']}',
						`Veikla`='{$data['Veikla']}',
                                                `Tinklapis`='{$data['Tinklapis']}',
                                                `fk_Vietoveid_Vietove`='{$data['fk_Vietoveid_Vietove']}'
					WHERE `id_Imone`='{$data['id_Imone']}'";
		mysql::query($query);
	}
	
	/**
	 * Paslaugos šalinimas
	 * @param type $id
	 */
	public function deleteService($id) {
		$query = "  DELETE FROM `{$this->imone_lentele}`
					WHERE `id_Imone`='{$id}'";
		mysql::query($query);
	}
	
	
	
	/**
	 * Paslaugos kainų šalinimas
	 * @param type $serviceId
	 * @param type $clause
	 */
//	public function deleteServicePrices($serviceId, $clause = "") {
//		$query = "  DELETE FROM `{$this->paslaugu_kainos_lentele}`
//					WHERE `fk_paslauga`='{$serviceId}'" . $clause;
//		mysql::query($query);
//	}
//	
	public function getOrderedServices($dateFrom, $dateTo) {
//		$whereClauseString = "";
//		if(!empty($dateFrom)) {
//			$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`>='{$dateFrom}'";
//			if(!empty($dateTo)) {
//				$whereClauseString .= " AND `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
//			}
//		} else {
//			if(!empty($dateTo)) {
//				$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
//			}
//		}
		
		$query = "  SELECT `id_Imone`,
						   `Pavadinimas`
					FROM `{$this->imone_lentele}` ";
		$data = mysql::select($query);

		return $data;
	}

//	public function getStatsOfOrderedServices($dateFrom, $dateTo) {
//		$whereClauseString = "";
//		if(!empty($dateFrom)) {
//			$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`>='{$dateFrom}'";
//			if(!empty($dateTo)) {
//				$whereClauseString .= " AND `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
//			}
//		} else {
//			if(!empty($dateTo)) {
//				$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
//			}
//		}
//		
//		$query = "  SELECT sum(`kiekis`) AS `uzsakyta`,
//						   sum(`kiekis`*`{$this->uzsakytos_imones_lentele}`.`kaina`) AS `bendra_suma`
//					FROM `{$this->imone_lentele}`
//						INNER JOIN `{$this->uzsakytos_imones_lentele}`
//							ON `{$this->imone_lentele}`.`id`=`{$this->uzsakytos_imones_lentele}`.`fk_paslauga`
//						INNER JOIN `{$this->sutartys_lentele}`
//							ON `{$this->uzsakytos_imones_lentele}`.`fk_sutartis`=`{$this->sutartys_lentele}`.`nr`
//					{$whereClauseString}";
//		$data = mysql::select($query);
//
//		return $data;
//	}
}