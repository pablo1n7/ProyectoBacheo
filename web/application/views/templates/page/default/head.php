<head>
	<meta charset="utf-8">
	<title>  Bacheo Trelew - <?php echo $page_title; ?></title>
	<meta name="description" content="<?php echo $meta_description; ?>" />
	<meta name="keywords" content="<?php echo $meta_keywords; ?>" />

	<?php /* Mobile viewport optimized: j.mp/bplateviewport */ ?>
	<meta name="viewport" content="width=device-width,initial-scale=1">

	<?php /* CSS: implied media="all" */ ?>
	<link href="<?php echo $this->config->base_url(); ?>_/css/fontAwesome/font-awesome.css" rel="stylesheet">
		<link href="<?php echo $this->config->base_url(); ?>_/css/bootstrap/bootstrap.min.css" rel="stylesheet">
		<link href="<?php echo $this->config->base_url(); ?>_/css/header.css" rel="stylesheet">
	  	<script src="<?php echo $this->config->base_url(); ?>_/js/libs/jquery-2.1.1.min.js"></script>
		<script src="<?php echo $this->config->base_url(); ?>_/js/libs/bootstrap/bootstrap.min.js"></script>
	    <script src="<?php echo $this->config->base_url(); ?>_/js/plugins.js"></script>
	    <script src="<?php echo $this->config->base_url(); ?>_/js/header.js"></script>
	<?php /* More ideas for your <head> here: h5bp.com/d/head-Tips */
	if (is_array($path)){
		foreach($path as $value){
			$this->load->view("{$header_directory}/".$value);
		}
	}else{$this->load->view("{$header_directory}/".$path);} 
	?>
	
</head>