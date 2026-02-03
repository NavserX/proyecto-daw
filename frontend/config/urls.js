//Rutas de las llamadas HTTP
/*let apiUrl = "";
var BACKEND_URL = "http://localhost:8080";
*/
//const apiUrl = "http://localhost:8080";

const apiUrl = window.location.hostname === "localhost" 
    ? "http://localhost:8080" 
    : "http://51.20.1.231:8080";

    
fetch(`${apiUrlL}/tu_script_backend.php`)
  .then(res => res.json())
  .then(data => console.log(data));