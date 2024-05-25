#!/bin/bash

# Crear carpeta del proyecto
mkdir -p proyecto

# Crear index.html
cat <<EOL > proyecto/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Condicionales</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div id="caja1">
        <label for="nombre">Nombre:</label>
        <input id="nombre" type="text" autofocus>
        <label for="edad">Edad:</label>
        <input id="edad" type="number">
        <button id="boton1">Aceptar</button>
    </div>

    <div id="caja2">
        <img src="img/news1.jpg" alt="tenedor lápiz">
        <button id="menos">-</button>
        <div id="cantidad">0</div>
        <button id="mas">+</button>
    </div>

    <script src="script.js"></script>
</body>
</html>
EOL

# Crear styles.css
cat <<EOL > proyecto/styles.css
img {
    max-width: 100%;
}

#caja2 {
    display: none;
    width: 250px;
}

#cantidad {
    display: inline-block;
    width: 50px;
    text-align: center;
}

button {
    margin: 5px;
}
EOL

# Crear script.js
cat <<EOL > proyecto/script.js
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
EOL

echo "Archivos creados con éxito en la carpeta 'proyecto'."
