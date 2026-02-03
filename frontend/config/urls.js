//Rutas de las llamadas HTTP
/*let apiUrl = "";
var BACKEND_URL = "http://localhost:8080";
*/
//const apiUrl = "http://localhost:8080";

const isLocal = window.location.hostname === "localhost" || window.location.hostname === "127.0.0.1";

const apiUrl = isLocal 
    ? "http://localhost:8080"  
    : "http://51.20.1.231:8080";       
console.log("Conectado a API en: " + apiUrl);