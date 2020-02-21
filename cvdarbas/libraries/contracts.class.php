<?php
/**
 * Sutarčių redagavimo klasė #Skelbimas#
 *
 * @author modkmi
 */

class contracts {

        private $skelbimas_lentele = '';
        private $imone_lentele = '';
		private $busenos_lentele = '';
        private $vietove_lentele = '';
        private $testas_lentele = '';
        private $sudetingumas_lentele = '';
        
	
	public function __construct() {
		
		$this->skelbimas_lentele = config::DB_PREFIX . 'skelbimas';
		$this->imone_lentele = config::DB_PREFIX . 'imone';
		$this->busenos_lentele = config::DB_PREFIX . 'busenos';
		$this->vietove_lentele = config::DB_PREFIX . 'vietove';
		$this->testas_lentele = config::DB_PREFIX . 'testas';
		$this->sudetingumas_lentele = config::DB_PREFIX . 'sudetingumas';
	}
	
	/**
	 * Sutarčių sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getContractList($limit, $offset) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
			
			if(isset($offset)) {
				$limitOffsetString .= " OFFSET {$offset}";
			}	
		}
		
		$query = "  SELECT 
							`{$this->skelbimas_lentele}`.`id_Skelbimas`,
						    `{$this->skelbimas_lentele}`.`Pavadinimas`,
						    `{$this->skelbimas_lentele}`.`Pozicija`,
						    `{$this->skelbimas_lentele}`.`Sritis`,
						    `{$this->skelbimas_lentele}`.`GaliojaNuo`,
						    `{$this->skelbimas_lentele}`.`GaliojaIki`,
						    `{$this->skelbimas_lentele}`.`Kaina`,
						    `{$this->busenos_lentele}`.`name` AS `BusenaName`,
						    `{$this->imone_lentele}`.`Pavadinimas` AS `Imone`,
						    `{$this->vietove_lentele}`.`Miestas`
					FROM    
							`{$this->skelbimas_lentele}`
                            LEFT JOIN `{$this->busenos_lentele}`
							ON `{$this->skelbimas_lentele}`.`Busena`=`{$this->busenos_lentele}`.`id_Busenos`
                            LEFT JOIN `{$this->imone_lentele}`
							ON `{$this->skelbimas_lentele}`.`fk_Imoneid_Imone`=`{$this->imone_lentele}`.`id_Imone`
                            LEFT JOIN `{$this->vietove_lentele}`
							ON `{$this->imone_lentele}`.`fk_Vietoveid_Vietove`=`{$this->vietove_lentele}`.`id_Vietove` {$limitOffsetString}";
		$data = mysql::select($query);

		return $data;
	}
	
	/**
	 * Sutarčių kiekio radimas
	 * @return type
	 */
	public function getContractListCount() {
		$query = "  SELECT COUNT(`{$this->skelbimas_lentele}`.`id_Skelbimas`) as `kiekis`
					FROM `{$this->skelbimas_lentele}`";
		$data = mysql::select($query);
                
		return $data[0]['kiekis'];
	}
	
	/**
	 * Sutarties išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getContract($id) {
		$query = "  SELECT *
					FROM `{$this->skelbimas_lentele}`
					WHERE `id_Skelbimas`='{$id}'";
		$data = mysql::select($query);

		return $data[0];
	}
	
	/**
	 * Užsakytų papildomų paslaugų sąrašo išrinkimas
	 * @param type $orderId
	 * @return type
	 */
//	public function getOrderedServices($orderId) {
//		$query = "  SELECT *
//					FROM `{$this->uzsakytos_paslaugos_lentele}`
//					WHERE `fk_sutartis`='{$orderId}'";
//		$data = mysql::select($query);
//		
//		return $data;
//	}
	
	/**
	 * Sutarties atnaujinimas
	 * @param type $data
	 */
	public function updateContract($data) {
		$query = "  UPDATE 
							`{$this->skelbimas_lentele}`
					SET       
						    `id_Skelbimas`='{$data['id_Skelbimas']}',
							`Pavadinimas`='{$data['Pavadinimas']}',
							`Pozicija`='{$data['Pozicija']}',
						   	`Sritis`='{$data['Sritis']}',
						   	`GaliojaNuo`='{$data['GaliojaNuo']}',
						   	`GaliojaIki`='{$data['GaliojaIki']}',
						   	`fk_Imoneid_Imone`='{$data['fk_Imoneid_Imone']}',
						   	`Busena`='{$data['Busena']}',
						   	`Kaina`='{$data['Kaina']}'
					WHERE 
							`id_Skelbimas`='{$data['id_Skelbimas']}'";
		mysql::query($query);
	}
	
	/**
	 * Sutarties įrašymas
	 * @param type $data
	 */
	public function insertContract($data) {
		$query = "  INSERT INTO `{$this->skelbimas_lentele}`
								(
									`Pavadinimas`,
									`Pozicija`,
									`Sritis`,
									`GaliojaNuo`,
									`GaliojaIki`,
									`fk_Imoneid_Imone`,
									`Busena`,
									`Kaina`
								)
								VALUES
								(
									'{$data['Pavadinimas']}',
									'{$data['Pozicija']}',
									'{$data['Sritis']}',
									'{$data['GaliojaNuo']}',
									'{$data['GaliojaIki']}',
									'{$data['fk_Imoneid_Imone']}',
									'{$data['Busena']}',
									'{$data['Kaina']}'
								)";
		mysql::query($query);
	}
        
        public function getOrderedContracts($dateFrom, $dateTo) {
		$whereClauseString = "";
		if(!empty($dateFrom)) {
			$whereClauseString .= " WHERE `{$this->skelbimas_lentele}`.`GaliojaNuo`>='{$dateFrom}'";
			if(!empty($dateTo)) {
				$whereClauseString .= " AND `{$this->skelbimas_lentele}`.`GaliojaIki`<='{$dateTo}'";
			}
		} else {
			if(!empty($dateTo)) {
				$whereClauseString .= " WHERE `{$this->skelbimas_lentele}`.`GaliojaIki`<='{$dateTo}'";
			}
		}
		
		$query = "  SELECT  `{$this->skelbimas_lentele}`.`id_Skelbimas`,
                     COUNT(`{$this->skelbimas_lentele}`.`id_Skelbimas`) AS `kiekis`,
                                    `{$this->skelbimas_lentele}`.`Pavadinimas`,
                                    `{$this->skelbimas_lentele}`.`PerziuruSk`,
                                    `{$this->skelbimas_lentele}`.`KandidatuSk`,
                                    `{$this->imone_lentele}`.`Pavadinimas` as Imone,
                                    `{$this->imone_lentele}`.`id_Imone`,
                                    `{$this->imone_lentele}`.`El_pastas`,
                                    ROUND(AVG(`{$this->skelbimas_lentele}`.`Kaina`), 1) as Kaina 
                            FROM `{$this->skelbimas_lentele}`
                                LEFT JOIN `{$this->imone_lentele}`
                                                ON `{$this->skelbimas_lentele}`.`fk_Imoneid_Imone`=`{$this->imone_lentele}`.`id_Imone`
					{$whereClauseString}
                                        GROUP BY `Imone`
                                        ORDER BY `Kaina` ";
		$data = mysql::select($query);

		return $data;
	}
	
	/**
	 * Sutarties šalinimas
	 * @param type $id
	 */
	public function deleteContract($id) {
			$query = "  DELETE FROM `{$this->skelbimas_lentele}`
						WHERE `id_Skelbimas`='{$id}'";
		mysql::query($query);
	}
        
        public function getBusenos() {
            $query = "  SELECT *
						FROM `{$this->busenos_lentele}`";
		$data = mysql::select($query);
		
		return $data; 
        }
        
        public function getSudetingumas() {
            $query = "  SELECT *
						FROM `{$this->sudetingumas_lentele}`";
		$data = mysql::select($query);
		
		return $data; 
        }
	
	/**
	 * Užsakytų papildomų paslaugų šalinimas
	 * @param type $contractId
	 */
	public function deleteOrderedServices($contractId) {
		$query = "  DELETE FROM `{$this->uzsakytos_paslaugos_lentele}`
					WHERE `fk_sutartis`='{$contractId}'";
		mysql::query($query);
	}
	
	/**
	 * Užsakytų papildomų paslaugų atnaujinimas
	 * @param type $data
	 */
	public function updateOrderedServices($data) {
		$this->deleteOrderedServices($data['nr']);
		
		if(isset($data['paslaugos']) && sizeof($data['paslaugos']) > 0) {
			foreach($data['paslaugos'] as $key=>$val) {
				$tmp = explode(":", $val);
				$serviceId = $tmp[0];
				$price = $tmp[1];
				$date_from = $tmp[2];
				$query = "  INSERT INTO `{$this->uzsakytos_paslaugos_lentele}`
										(
											`fk_sutartis`,
											`fk_kaina_galioja_nuo`,
											`fk_paslauga`,
											`kiekis`,
											`kaina`
										)
										VALUES
										(
											'{$data['nr']}',
											'{$date_from}',
											'{$serviceId}',
											'{$data['kiekiai'][$key]}',
											'{$price}'
										)";
					mysql::query($query);
			}
		}
	}
        
        
	
	/**
	 * Sutarties būsenų sąrašo išrinkimas
	 * @return type
	 */
	public function getContractStates() {
		$query = "  SELECT *
					FROM `{$this->sutarties_busenos_lentele}`";
		$data = mysql::select($query);
		
		return $data;
	}
	
	/**
	 * Aikštelių sąrašo išrinkimas
	 * @return type
	 */
	public function getParkingLots() {
		$query = "  SELECT *
					FROM `{$this->aiksteles_lentele}`";
		$data = mysql::select($query);
		
		return $data;
	}
	
	/**
	 * Paslaugos kainų įtraukimo į užsakymus kiekio radimas
	 * @param type $serviceId
	 * @param type $validFrom
	 * @return type
	 */
	public function getPricesCountOfOrderedServices($serviceId, $validFrom) {
		$query = "  SELECT COUNT(`{$this->uzsakytos_paslaugos_lentele}`.`fk_paslauga`) AS `kiekis`
					FROM `{$this->paslaugu_kainos_lentele}`
							INNER JOIN `{$this->uzsakytos_paslaugos_lentele}`
							ON `{$this->paslaugu_kainos_lentele}`.`fk_paslauga`=`{$this->uzsakytos_paslaugos_lentele}`.`fk_paslauga` AND `{$this->paslaugu_kainos_lentele}`.`galioja_nuo`=`{$this->uzsakytos_paslaugos_lentele}`.`fk_kaina_galioja_nuo`
					WHERE `{$this->paslaugu_kainos_lentele}`.`fk_paslauga`='{$serviceId}' AND `{$this->paslaugu_kainos_lentele}`.`galioja_nuo`='{$validFrom}'";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}

	public function getCustomerContracts($dateFrom, $dateTo) {
		$whereClauseString = "";
		if(!empty($dateFrom)) {
			$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`>='{$dateFrom}'";
			if(!empty($dateTo)) {
				$whereClauseString .= " AND `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
			}
		} else {
			if(!empty($dateTo)) {
				$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
			}
		}
		
		$query = "  SELECT  `{$this->sutartys_lentele}`.`nr`,
							`{$this->sutartys_lentele}`.`sutarties_data`,
							`{$this->klientai_lentele}`.`asmens_kodas`,
							`{$this->klientai_lentele}`.`vardas`,
						    `{$this->klientai_lentele}`.`pavarde`,
						    `{$this->sutartys_lentele}`.`kaina` as `sutarties_kaina`,
						    IFNULL(sum(`{$this->uzsakytos_paslaugos_lentele}`.`kiekis` * `{$this->uzsakytos_paslaugos_lentele}`.`kaina`), 0) as `sutarties_paslaugu_kaina`,
						    `t`.`bendra_kliento_sutarciu_kaina`,
						    `s`.`bendra_kliento_paslaugu_kaina`
					FROM `{$this->sutartys_lentele}`
						INNER JOIN `{$this->klientai_lentele}`
							ON `{$this->sutartys_lentele}`.`fk_klientas`=`{$this->klientai_lentele}`.`asmens_kodas`
						LEFT JOIN `{$this->uzsakytos_paslaugos_lentele}`
							ON `{$this->sutartys_lentele}`.`nr`=`{$this->uzsakytos_paslaugos_lentele}`.`fk_sutartis`
						LEFT JOIN (
							SELECT `asmens_kodas`,
									sum(`{$this->sutartys_lentele}`.`kaina`) AS `bendra_kliento_sutarciu_kaina`
							FROM `{$this->sutartys_lentele}`
								INNER JOIN `{$this->klientai_lentele}`
									ON `{$this->sutartys_lentele}`.`fk_klientas`=`{$this->klientai_lentele}`.`asmens_kodas`
							{$whereClauseString}
							GROUP BY `asmens_kodas`
						) `t` ON `t`.`asmens_kodas`=`{$this->klientai_lentele}`.`asmens_kodas`
						LEFT JOIN (
							SELECT `asmens_kodas`,
									IFNULL(sum(`{$this->uzsakytos_paslaugos_lentele}`.`kiekis` * `{$this->uzsakytos_paslaugos_lentele}`.`kaina`), 0) as `bendra_kliento_paslaugu_kaina`
							FROM `{$this->sutartys_lentele}`
								INNER JOIN `{$this->klientai_lentele}`
									ON `{$this->sutartys_lentele}`.`fk_klientas`=`{$this->klientai_lentele}`.`asmens_kodas`
								LEFT JOIN `{$this->uzsakytos_paslaugos_lentele}`
									ON `{$this->sutartys_lentele}`.`nr`=`{$this->uzsakytos_paslaugos_lentele}`.`fk_sutartis`
								{$whereClauseString}							
								GROUP BY `asmens_kodas`
						) `s` ON `s`.`asmens_kodas`=`{$this->klientai_lentele}`.`asmens_kodas`
					{$whereClauseString}
					GROUP BY `{$this->sutartys_lentele}`.`nr` ORDER BY `{$this->klientai_lentele}`.`pavarde` ASC";
		$data = mysql::select($query);

		return $data;
	}
	
	public function getSumPriceOfContracts($dateFrom, $dateTo) {
		$whereClauseString = "";
		if(!empty($dateFrom)) {
			$whereClauseString .= " WHERE `{$this->skelbimas_lentele}`.`GaliojaNuo`>='{$dateFrom}'";
			if(!empty($dateTo)) {
				$whereClauseString .= " AND `{$this->skelbimas_lentele}`.`GaliojaIki`<='{$dateTo}'";
			}
		} else {
			if(!empty($dateTo)) {
				$whereClauseString .= " WHERE `{$this->skelbimas_lentele}`.`GaliojaIki`<='{$dateTo}'";
			}
		}
		
		$query = "  SELECT  `{$this->skelbimas_lentele}`.`id_Skelbimas`,
                     COUNT(`{$this->skelbimas_lentele}`.`id_Skelbimas`) AS `kiekis`,
                                    `{$this->skelbimas_lentele}`.`Pavadinimas`,
                                    `{$this->skelbimas_lentele}`.`PerziuruSk`,
                                    `{$this->skelbimas_lentele}`.`KandidatuSk`,
                                    `{$this->imone_lentele}`.`Pavadinimas` as Imone,
                                    `{$this->imone_lentele}`.`id_Imone`,
                                    `{$this->imone_lentele}`.`El_pastas`,
                                    ROUND(AVG(`{$this->skelbimas_lentele}`.`Kaina`), 1) as Kaina 
                            FROM `{$this->skelbimas_lentele}`
                                LEFT JOIN `{$this->imone_lentele}`
                                                ON `{$this->skelbimas_lentele}`.`fk_Imoneid_Imone`=`{$this->imone_lentele}`.`id_Imone`
					{$whereClauseString}
                                        ORDER BY `Kaina` ";
		$data = mysql::select($query);

		return $data;
	}

	public function getSumPriceOfOrderedServices($dateFrom, $dateTo) {
		$whereClauseString = "";
		if(!empty($dateFrom)) {
			$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`>='{$dateFrom}'";
			if(!empty($dateTo)) {
				$whereClauseString .= " AND `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
			}
		} else {
			if(!empty($dateTo)) {
				$whereClauseString .= " WHERE `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
			}
		}
		
		$query = "  SELECT sum(`{$this->uzsakytos_paslaugos_lentele}`.`kiekis` * `{$this->uzsakytos_paslaugos_lentele}`.`kaina`) AS `paslaugu_suma`
					FROM `{$this->sutartys_lentele}`
						INNER JOIN `{$this->uzsakytos_paslaugos_lentele}`
							ON `{$this->sutartys_lentele}`.`nr`=`{$this->uzsakytos_paslaugos_lentele}`.`fk_sutartis`
					{$whereClauseString}";
		$data = mysql::select($query);

		return $data;
	}
	
	public function getDelayedCars($dateFrom, $dateTo) {
		$whereClauseString = "";
		if(!empty($dateFrom)) {
			$whereClauseString .= " AND `{$this->sutartys_lentele}`.`sutarties_data`>='{$dateFrom}'";
			if(!empty($dateTo)) {
				$whereClauseString .= " AND `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
			}
		} else {
			if(!empty($dateTo)) {
				$whereClauseString .= " AND `{$this->sutartys_lentele}`.`sutarties_data`<='{$dateTo}'";
			}
		}
		
		$query = "  SELECT `nr`,
						   `sutarties_data`,
						   `planuojama_grazinimo_data_laikas`,
						   IF(`faktine_grazinimo_data_laikas`='0000-00-00 00:00:00', 'negrąžinta', `faktine_grazinimo_data_laikas`) AS `grazinta`,
						   `{$this->klientai_lentele}`.`vardas`,
						   `{$this->klientai_lentele}`.`pavarde`
					FROM `{$this->sutartys_lentele}`
						INNER JOIN `{$this->klientai_lentele}`
							ON `{$this->sutartys_lentele}`.`fk_klientas`=`{$this->klientai_lentele}`.`asmens_kodas`
					WHERE (DATEDIFF(`faktine_grazinimo_data_laikas`, `planuojama_grazinimo_data_laikas`) >= 1 OR
						(`faktine_grazinimo_data_laikas` = '0000-00-00 00:00:00' AND DATEDIFF(NOW(), `planuojama_grazinimo_data_laikas`) >= 1))
					{$whereClauseString}";
		$data = mysql::select($query);

		return $data;
	}
	
}