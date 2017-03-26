
// Constantes globales compartidas por, otros modulos
#ifndef INCLUIDO_MAX_CADENA
	#define INCLUIDO_MAX_CADENA
	const int MAX_CADENA = 150;
#else
	extern int MAX_CADENA;
#endif



// Se define una macro que indica al preprocesador que defina la constante
// en MAIN y en el resto de los modulos utilice extern (hecho en shared.h)
#ifndef INCLUIDO_FORMATO_COMPARTIDO
	#define INCLUIDO_FORMATO_COMPARTIDO
	const int FORMATO_NUBE = 0;
#else
	extern int FORMATO_NUBE;
#endif


// Metodos necesarios por varios modulos
void imprimir_json(char* csv_nube, char* imagen,char* carpetaTmpRaiz);
void debug(std::string msg);
char* generarCsv(char* pcdEntrada,char* nombreCarpetaNube, char* carpetaRaizPcd,char* carpetaCsv);
void append_string(char* destino,char* fuente);
