<?php
/**
 * Klientų redagavimo klasė #CV#
 *
 * @author ISK
 */

class customers {
	
	private $cv_lentele = '';
	private $kandidatas_lentele = '';
	
	public function __construct() {
		$this->cv_lentele = config::DB_PREFIX . 'cv';
		$this->kandidatas_lentele = config::DB_PREFIX . 'kandidatas';
	}
	
	/**
	 * Kliento išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getCustomer($id) {
		$query = "  SELECT *
					FROM `{$this->cv_lentele}`
					WHERE `id_CV`='{$id}'";
		$data = mysql::select($query);
		
		return $data[0];
	}
	
	/**
	 * Klientų sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getCustomersList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
		}
		if(isset($offset)) {
			$limitOffsetString .= " OFFSET {$offset}";
		}
		
		$query = "  SELECT *
					FROM `{$this->cv_lentele}`
                                            LEFT JOIN `{$this->kandidatas_lentele}`
                                                ON `{$this->cv_lentele}`.`fk_Kandidatasid_Kandidatas`=`{$this->kandidatas_lentele}`.`id_Kandidatas`
                                                                " . $limitOffsetString;
		$data = mysql::select($query);
		
		return $data;
	}
	
	/**
	 * Klientų kiekio radimas
	 * @return type
	 */
	public function getCustomersListCount() {
		$query = "  SELECT COUNT(`id_CV`) as `kiekis`
					FROM `{$this->cv_lentele}`";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Kliento šalinimas
	 * @param type $id
	 */
	public function deleteCustomer($id) {
		$query = "  DELETE FROM `{$this->cv_lentele}`
					WHERE `id_CV`='{$id}'";
		mysql::query($query);
	}
	
	/**
	 * Kliento atnaujinimas
	 * @param type $data
	 */
	public function updateCustomer($data) {
		$query = "  UPDATE `{$this->cv_lentele}`
					SET    `Pavadinimas`='{$data['Pavadinimas']}',
						   `Kelias`='{$data['Kelias']}',
						   `fk_Kandidatasid_Kandidatas`='{$data['fk_Kandidatasid_Kandidatas']}'
					WHERE `id_CV`='{$data['id_CV']}'";
		mysql::query($query);
	}
	
	/**
	 * Kliento įrašymas
	 * @param type $data
	 */
	public function insertCustomer($data) {
		$query = "  INSERT INTO `{$this->cv_lentele}`
								(
                                                                        `id_CV`,
									`Pavadinimas`,
									`Kelias`,
									`fk_Kandidatasid_Kandidatas`
								) 
								VALUES
								(
									'{$data['id_CV']}',
                                                                        '{$data['Pavadinimas']}',    
									'{$data['Kelias']}',
									'{$data['fk_Kandidatasid_Kandidatas']}'
								)";
		mysql::query($query);
	}
	
	/**
	 * Sutarčių, į kurias įtrauktas klientas, kiekio radimas
	 * @param type $id
	 * @return type
	 */
//	public function getContractCountOfCustomer($id) {
//		$query = "  SELECT COUNT(`{$this->kandidatas_lentele}`.`nr`) AS `kiekis`
//					FROM `{$this->klientai_lentele}`
//						INNER JOIN `{$this->kandidatas_lentele}`
//							ON `{$this->klientai_lentele}`.`id_CV`=`{$this->kandidatas_lentele}`.`fk_klientas`
//					WHERE `{$this->klientai_lentele}`.`id_CV`='{$id}'";
//		$data = mysql::select($query);
//		
//		return $data[0]['kiekis'];
//	}
	
}