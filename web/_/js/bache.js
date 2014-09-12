$(document).ready(function(){
	Bache.init();
	$( "#fechaFin").datepicker();

	Bache.redimensionarImg();

	Bache.comentarios();
    $("#botonTwitter").click(function(){
    	Bache.comentarTwitter();
    });
    $("#registrarEstadoBache").click(function(evento){
		evento.preventDefault();
		Bache.cambiarEstado();
	});

	$("#enviarObservacion").click(function(){
		Bache.comentar();
	});
	$("#formularioComentario")[0].reset()

	setInterval("Bache.comentarios();",30000);
});

	
function cargarComentarios(comentarios) {
	$comentarios = $('<div id="comentarios" class="divComentarios"></div>');
	$("#observaciones").empty();
	$("#observaciones").append($comentarios);
	$comentarios.append("");
	for (var i = 0; i < comentarios.length; i++) {
		var $comentarioUsuario = $('<div/>');
		$comentarioUsuario.addClass("comentarioUsuario")
		var $avatar= $('<div/>');
		$avatar.addClass("avatar");
		var $comentario = $('<div/>');
		$comentario.addClass("comentarioIndividual");
		if (comentarios[i].hasOwnProperty('screenName')) {
			$avatar.append('<a href="https://twitter.com/'+comentarios[i].screenName+'" target="_blank">'+comentarios[i].screenName+'</a>('+comentarios[i].fecha+') Dice:');
			$avatar.css('background-image','url('+comentarios[i].imagenPerfil+')');			
		}else{
			$avatar.append(comentarios[i].usuario+" ("+comentarios[i].fecha+") Dice:");
		}
		
		$comentario.append(comentarios[i].texto);
		$comentarioUsuario.append($avatar);
		$comentarioUsuario.append($comentario);
		$comentarios.append($comentarioUsuario);
	};
	$("#comentarios").scrollTop(1000);	
}


function estadoBache(estado, tiposEstado){
	var indice = parseInt(estado[estado.length-1].idTipoEstado)-1;
	$("#nombreEstado").text("Estado del Bache: "+tiposEstado[indice].nombre);
	$("#contenedorControladorEstado").append('<div id="slider" class="controlEstado"></div>');
	$( "#slider" ).slider({
		value:parseInt(indice),
		min: 0,
		max: tiposEstado.length-1,
		step: 1,
		slide: function( event, ui ) {
			$("#nombreEstado").empty();
			$("#nombreEstado").text("Estado del Bache: "+tiposEstado[ui.value].nombre);
			cargarFormularioTecnico(ui.value);
		}
	});
}


function cargarFormularioTecnico (estado) {
	var $form = $("#formularioEspecificacionesTecnicas");
  	switch(estado){
	 	case 0:

			$("#contenedorFormulario").hide();
  			break;
	 	case 1:
	 		$("#contenedorEstado2").hide();
	 		$("#contenedorEstado1").show();
	 		$("#contenedorFormulario").show();
	 		break;
	 	case 2:
	 		$("#contenedorEstado1").hide();
	 		$("#contenedorEstado2").show();
	 		$("#contenedorFormulario").show();
	 		break;
	 	case 3:
	 		$("#contenedorEstado1").hide();
	 		$("#contenedorEstado2").hide();
	 		$("#contenedorFormulario").show();
	 	default:
	 		break;
	 }
}