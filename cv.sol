    // SPDX-License-Identifier: MIT

pragma solidity >0.4.0 <0.8.7;
// detallo las variables a usar dentro del contrato
contract HojaDeVida{

        string nombre= "Matias";
        uint edad= 32 ;
        string texto = "hola, mi nombre es matias ramirez y estoy en busqueda de mi primer empleo it" ;
        bool esDev= true;
        uint telefono= 1162551771;
        bool experienciaDev= false ;
        enum estatus_Dev {TRAINEE, JUNIOR}
        estatus_Dev estatus;

    //detallo la funcion y los parametros para devolver mi nombre
    function DevolverNombre () public view returns(string memory _nombre){
        return nombre;
    }

    //detallo la funcion y los parametros para devolver mi edad

    function DevolverEdad () public view returns (uint){
        return edad;
    }

    //detallo la funcion y los parametros para devolver un tipo de dato booleano que diga quesoy desarrollador
    

    function DevolverEsDev () public view returns (bool){
        return esDev;
    }

    //detallo la funcion y los parametros para devolver un dato uint que es mi numero de telefono

    function DevolverTelefono () public view returns (uint){
        return telefono;
    }

    //detallo la funcion y los parametros para devolver un booleano que diga mi experiencia como dev 

    function DevolverExperienciaDev () public view returns (bool){
        return experienciaDev;
    }

    //detallo la funcion y los parametros para devolver un tipo de dato enum 

    function DevolverEstatusDev () public {
        estatus = estatus_Dev.TRAINEE;
    }

    //detallo la funcion y los parametros para devolver un string con una pequeña presentacion

    function DevolverTexto () public view returns (string memory _texto){
        return texto ;

    }
    // declaro un tipo de dato complejo con mi experiencia laboral

     struct Expertise {
        string Lugar ;
        uint256 desde;
        uint256 hasta;
        string posicion ;

    }
    //creo un array dinamico 
    Expertise[] public trabajos;

    function modificarExpertise(string memory _Lugar, uint256 _desde, uint256 _hasta, string memory _posicion ) public {
    trabajos.push(Expertise(_Lugar, _desde, _hasta, _posicion));
    }


    // defino tipo de dato complejo con mis estudios 
    struct Estudios{
        string universidad;
        uint256 Desde;
        uint256 Hasta;
        string carrera;
        string terminado;
    }

    //creo una variable tipo struct 
    Estudios public studios;

    function DevolverEstudios(string memory _universidad, uint256 _Desde, uint256 _Hasta,
    string memory _carrera, string memory _terminado) public  {
        studios = Estudios (_universidad, _Desde, _Hasta, _carrera, _terminado);
    }

    //defino tipo de dato complejo con los idiomas que manejo
    struct LenguasExtranjeras{
    
        string idioma;
        string habla;
        string escribe;
        string comprende;
    }
    
    //creo tipo de dato complejo lengua 
    LenguasExtranjeras public languajes;
    function lengua (string memory _idioma, string memory _habla, string memory _escribe, string memory _comprende) public {
        languajes= LenguasExtranjeras (_idioma, _habla ,_escribe ,_comprende);
    }
    


}