<?php
// defined('BASEPATH') OR exit('No direct script access allowed');
class ExcepcionPHP extends Exception {
	public function __construct($message="", $code = 0, Exception $previous = null) {
        // asegúrese de que todo está asignado apropiadamente
        parent::__construct($message, $code, $previous);
    }
   
}

?>