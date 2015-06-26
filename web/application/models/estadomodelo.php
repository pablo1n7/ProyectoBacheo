<?php 
	class EstadoModelo extends MY_Model{
		
		function __construct()
		{
			parent::__construct();
			$this->table_name = get_class($this);
		}

		public function getUltimoEstado($idFalla)
		{
			$this->db->order_by("fecha", "desc");
			$query = $this->db->get_where('EstadoModelo', array('idFalla' => $idFalla));
    		if (empty($query->result())) {
				throw new MY_BdExcepcion('Sin resultados');
				}
    		return $query->result()[0];
		}

		public function getEstados($idFalla)
		{
			$query = $this->db->get_where('EstadoModelo', array('idFalla' => $idFalla));
			if (empty($query->result())) {
				throw new MY_BdExcepcion('Sin resultados');
				}
			return $query->result();
		}

		public function save($estado)
		{
			$this->db->insert($this->table_name,
							array(  'idFalla' => $estado->falla->id,
									'idUsuario' => $estado->usuario,
									'idTipoEstado' => $estado->tipoEstado->id)
							);
			return $this->db->insert_id();
		}
	}
 ?>