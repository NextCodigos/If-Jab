window.onload = inicio;
var intentos = 0;

function inicio() {
    document.getElementById("boton1").addEventListener("click", evaluar);
}

function evaluar() {
    let nombre = document.getElementById("nombre").value.toLowerCase();
    let edad = Number(document.getElementById("edad").value);

    if (nombre === "ataulfo" || nombre === "ataúlfo") {
        location.href = "https://wikipedia.org/wiki/Ervigio";
    } else if (nombre === "ervigio" && edad === 680) {
        document.getElementById("caja1").style.display = "none";
        document.getElementById("caja2").style.display = "block";
    } else {
        alert("No te conozco. Por favor, intenta de nuevo.");
        if (edad !== 680) {
            document.getElementById("edad").value = "";
            document.getElementById("edad").focus();
        }
        if (nombre !== "ervigio") {
            document.getElementById("nombre").value = "";
            document.getElementById("nombre").focus();
        }
        intentos++;
        if (intentos > 3) {
            alert("Demasiados intentos. Redirigiendo...");
            location.href = "https://wikipedia.org/wiki/Ervigio";
        }
    }
}
