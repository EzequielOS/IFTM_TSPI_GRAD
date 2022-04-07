function entrar(valor1, valor2, valor3, resetar) {
    a = document.getElementById("valor1").value;
    b = document.getElementById("valor2").value;
    c = document.getElementById("valor3").value;
    if (a == "" || b == "" || c == "") {
        alert("Todos os campos devem ser preenchidos!");
    } else {
        if (b == c) {
            alert("Senha correta!");
        } else {
            document.getElementById("resetar").reset();
            alert("Senha incorreta!");
        }
    }
}
