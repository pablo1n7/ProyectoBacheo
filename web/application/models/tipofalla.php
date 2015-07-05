<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	class TipoFalla
	{
		
		var $id;
		var $nombre;
		var $influencia;
		// Agregadas
		var $material;
		var $atributos;
		var $criticidades;
		var $reparaciones;
		var $multimedia;
		
		function __construct()
		{
			
		}


		private function inicializar($datos)
		{
			$this->id = $datos->id;		
			$this->nombre = $datos->nombre;	
		}

		static public function getInstancia($id)
		{
			$CI = &get_instance();
			$tipoFalla = new TipoFalla();
			$datos = $CI->TipoFallaModelo->get($id);
			$tipoFalla->inicializar($datos);
			$idMaterial = $CI->TipoFallaModelo->getMaterial($id);
			$tipoFalla->material = TipoMaterial::getInstancia($idMaterial);
			return $tipoFalla;
		}


		static public function getTiposFalla()
		{
			$CI = &get_instance();
			$tiposRotura= array();
			try {
				$datos = $CI->TipoFallaModelo->getTiposFalla();
    			foreach ($datos as $row) {
    				$tipoFalla = new TipoFalla();
    				$tipoFalla->inicializar($row);
    				array_push($tiposRotura, $tipoFalla);		
    			}
			}	
			catch (MY_BdExcepcion $e) {
				echo 'Excepcion capturada: ',  $e->getMessage(), "\n";
			}
			return $tiposRotura;
		}

		public function save()
		{
			$CI = &get_instance();
			return $CI->TipoFallaModelo->save($this);
		}

		static public function crear($datos)
		{
			$CI = &get_instance();
			$CI->utiles->debugger($datos);
			$tipoFalla = new TipoFalla();
			$tipoFalla->nombre = $datos->general->nombre;
			$tipoFalla->influencia = $datos->general->influencia;
			// 
			$tipoFalla->agregarMultimedia($datos->multimedia);
			$tipoFalla->id = $tipoFalla->save();
			// 
			$CI->utiles->debugger($tipoFalla);
			if ($datos->material->id != "")
				$tipoFalla->material = TipoMaterial::getInstancia($datos->material->id);
			else
				$tipoFalla->material = TipoMaterial::crear($datos->material);
			$datos->atributos = array_map(function($atributo) use ($tipoFalla)
			{
				$atributo->falla = $tipoFalla->id;
				return $atributo;
			}, $datos->atributos);
			$CI->utiles->debugger($datos->atributos);
			$tipoFalla->atributos = $tipoFalla->cargar('TipoAtributo', $datos->atributos);
			$CI->utiles->debugger($tipoFalla->atributos);
			$tipoFalla->criticidades = $tipoFalla->cargar('Criticidad', $datos->criticidades);
			$tipoFalla->reparaciones = $tipoFalla->cargar('TipoReparacion', $datos->reparaciones);
			$tipoFalla->asociar();
			
			
			return $tipoFalla;
		}

		public function cargar($tipo, $datos)
		{
			return array_map(function($object) use ($tipo)
			{
				if (isset($object->id))
					$nuevo = call_user_func(array($tipo, 'getInstancia'), $object->id);
				else
					$nuevo = call_user_func(array($tipo, 'crear'), $object);
				return $nuevo;
			}, $datos);
		}

		public function asociar()
		{
			$CI = &get_instance();
			$CI->utiles->debugger($this);
			$idTipoFalla = $this->id;
			$this->material->asociar($idTipoFalla);
			array_map(function($criticidad) use (&$idTipoFalla)
			{
				$criticidad->asociar($idTipoFalla);
			}, $this->criticidades);
			array_map(function($tipoReparacion) use (&$idTipoFalla)
			{
				$tipoReparacion->asociar($idTipoFalla);
			}, $this->reparaciones);
		}

		public function getMaterial()
		{
			return $this->material;
		}

		public function agregarMultimedia($datos)
		{
			/* 
			Tener en cuenta....
			sudo chown -R www-data:www-data web/
			sudo chmod -R 777 web/
			sudo apt-get install php5-gd && sudo service apache2 restart

			Idea.... 
			Multimedia sabe como recortar imagen
			Configurar un directorio y jerarquia para guardar los objetos multimedia
			$multimedia = new ImagenMultimedia();
			$multimedia->falla = $tipoFalla;
			$multimedia->setNombreArchivo($tipoFalla->nombre);
			$multimedia->save();
			$this->multimedia = $multimedia;
			$this->multimedia->recortar($datos);
			$CI->utiles->debugger($multimedia);

			*/
			
			$CI = &get_instance();
			$this->multimedia = new ImagenMultimedia($datos);
			$this->multimedia->setNombreArchivo($this->nombre);
			$this->multimedia->save();
			$CI->utiles->debugger($this->multimedia);
		}

		static public function datosCrearValidos($datos)
		{
			$datos_validar_tipo_falla = array(
					'general' => array('nombre' => array('string', '\w'), 'influencia' => array('integer', '\w')),
					'material' => array('nombre' => array('string', '\w')),
					'atributos' => array('nombre' => array('string', '\w'), 'unidadMedida' => array('string', '\w')),
					'criticidades' => array('nombre' => array('string', '\w'), 'descripcion' => array('string', '\w'), 'ponderacion' => array('integer', '\w')),
					'reparaciones' => array('nombre' => array('string', '\w'), 'costo' => array('double', '\w'), 'descripcion' => array('string', '\w')),
					'multimedia' => array('coordenadas', 'imagen')
					);
			$CI = &get_instance();
			foreach ($datos_validar_tipo_falla as $clave => $valor)
			{
				if (!is_array($datos->$clave)) {
					foreach ($valor as $key => $value) {
						if (!property_exists($datos->$clave, $key) || !isset($datos->$clave->$key) || (gettype($datos->$clave->$key) != $value[0]))
						{
							return FALSE;
						}
					}
				}else{
					foreach($datos->$clave as $c => $v)
					{
						foreach ($valor as $key => $value)
						{
							if (!property_exists($v, $key) || !isset($v->$key) || (gettype($v->$key) != $value[0]))
							{
								return FALSE;
							}
						}
					}
				}
			}
			return TRUE;
		}

	}
 ?>