<?php
/**
 * Darbuotojo redagavimo klasė ##Kandidato##
 *
 * @author ISK
 */

class employees {
	
	private $kandidatas_lentele = '';
	
	public function __construct() {
		$this->kandidatas_lentele = config::DB_PREFIX .'kandidatas';
	}
	
	/**
	 * Darbuotojo išrinkimas
	 * @param type $id
	 * @return type
	 */
	public function getEmployee($id) {
		$query = "  SELECT *
					FROM `{$this->kandidatas_lentele}`
					WHERE `id_Kandidatas`='{$id}'";
		$data = mysql::select($query);
		
		return $data[0];
	}
	
	/**
	 * Darbuotojų sąrašo išrinkimas
	 * @param type $limit
	 * @param type $offset
	 * @return type
	 */
	public function getEmplyeesList($limit = null, $offset = null) {
		$limitOffsetString = "";
		if(isset($limit)) {
			$limitOffsetString .= " LIMIT {$limit}";
		}
		if(isset($offset)) {
			$limitOffsetString .= " OFFSET {$offset}";
		}
		
		$query = "  SELECT *
					FROM `{$this->kandidatas_lentele}`" . $limitOffsetString;
		$data = mysql::select($query);
		
		return $data;
	}
	
	/**
	 * Darbuotojų kiekio radimas
	 * @return type
	 */
	public function getEmplyeesListCount() {
		$query = "  SELECT COUNT(`{$this->kandidatas_lentele}`.`id_Kandidatas`) as `kiekis`
					FROM `{$this->kandidatas_lentele}`";
		$data = mysql::select($query);
		
		return $data[0]['kiekis'];
	}
	
	/**
	 * Darbuotojo šalinimas
	 * @param type $id
	 */
	public function deleteEmployee($id) {
		$query = "  DELETE FROM `{$this->kandidatas_lentele}`
					WHERE `id_Kandidatas`='{$id}'";
		mysql::query($query);
	}
	
	/**
	 * Darbuotojo atnaujinimas
	 * @param type $data
	 */
	public function updateEmployee($data) {
		$query = "  UPDATE `{$this->kandidatas_lentele}`
					SET    `Vardas`='{$data['Vardas']}',
                                               `Pavarde`='{$data['Pavarde']}'
					WHERE `id_Kandidatas`='{$data['id_Kandidatas']}'";
		mysql::query($query);
	}
	
	/**
	 * Darbuotojo įrašymas
	 * @param type $data
	 */
	public function insertEmployee($data) {
		$query = "  INSERT INTO `{$this->kandidatas_lentele}`
								(
                                                                        `id_Kandidatas`,
									`Vardas`,
									`Pavarde`
								) 
								VALUES
								(
									'{$data['id_Kandidatas']}',
                                                                        '{$data['Vardas']}',
									'{$data['Pavarde']}'
								)";
		mysql::query($query);
//                return mysql::getLastInsertedId();
	}
	
	/**
	 * Sutarčių, į kurias įtrauktas darbuotojas, kiekio radimas
	 * @param type $id
	 * @return type
	 */
//	public function getContractCountOfEmployee($id) {
//		$query = "  SELECT COUNT(`{$this->sutartys_lentele}`.`nr`) AS `kiekis`
//					FROM `{$this->kandidatas_lentele}`
//						INNER JOIN `{$this->sutartys_lentele}`
//							ON `{$this->kandidatas_lentele}`.`tabelio_nr`=`{$this->sutartys_lentele}`.`fk_darbuotojas`
//					WHERE `{$this->kandidatas_lentele}`.`tabelio_nr`='{$id}'";
//		$data = mysql::select($query);
//		
//		return $data[0]['kiekis'];
//	}
	
}