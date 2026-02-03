const apiUrl = window.location.hostname === "localhost" || window.location.hostname === "127.0.0.1"
    ? "http://localhost:8080" 
    : "http://51.20.1.231:8080";

console.log("Conectando a la API en: ", apiUrl);