async function getClient(filename) {
    arquivo = await fetch(filename);
    conteudo = await arquivo.json();
	
    document.getElementById("modelo").innerHTML = conteudo.geladeiras[0].modelo;
}