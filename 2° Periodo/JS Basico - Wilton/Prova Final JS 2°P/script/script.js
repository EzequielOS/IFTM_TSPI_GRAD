	var cont =0;
nmroImg = 1;

function cadastra() {
	nomeUser = document.getElementById("txtNome").value;
	idadeUser = document.getElementById("txtIdade").value;
	sexoUser = document.getElementById("sexo").value;

	usr = { nome: nomeUser, idade: idadeUser, sexo: sexoUser };
	tabPassageiros = JSON.parse(localStorage.getItem("tabPassageiros"));

	if (!tabPassageiros) tabPassageiros = { passageiros: [] };
	tabPassageiros.passageiros.push(usr);

	localStorage.setItem("tabPassageiros", JSON.stringify(tabPassageiros));
	alert("Cadastro realizado com sucesso!");


}

function listarHomem() {
	tabPassageiros = JSON.parse(localStorage.getItem("tabPassageiros"));
	if (!tabPassageiros)
			document.write(`<p>Não há Passageiros cadastrado!</p>`);
		
		if(cont < tabPassageiros.passageiros.length){
			if(tabPassageiros.passageiros[cont].sexo == "masculino"){
					texto = `<p>${tabPassageiros.passageiros[cont].nome} [${tabPassageiros.passageiros[cont].idade} Anos]</p>`;
					
					parag = document.createElement("p");
					parag.innerHTML = texto;
		
					img = document.createElement("img");
					img.setAttribute("src", "imagens/stickMan.png");
					img.setAttribute("name", texto);
					
					div = document.createElement("div");
					div.setAttribute("class", "boxInterna");
					div.appendChild(img);
					div.appendChild(parag);
					document.getElementById("box").appendChild(div);
		
				}
				cont++;
		}
		setTimeout(listarHomem, 1000);
		}
		
function listarMulher() {
	tabPassageiros = JSON.parse(localStorage.getItem("tabPassageiros"));
	if (!tabPassageiros)
			document.write(`<p>Não há Passageiros cadastrado!</p>`);
		
		if(cont < tabPassageiros.passageiros.length){
			if(tabPassageiros.passageiros[cont].sexo == "feminino"){
					texto = `<p>${tabPassageiros.passageiros[cont].nome} [${tabPassageiros.passageiros[cont].idade} Anos]</p>`;
					
					parag = document.createElement("p");
					parag.innerHTML = texto;
		
					img = document.createElement("img");
					img.setAttribute("src", "imagens/stickWoman.png");
					img.setAttribute("name", texto);
					
					div = document.createElement("div");
					div.setAttribute("class", "boxInterna");
					div.appendChild(img);
					div.appendChild(parag);
					document.getElementById("box").appendChild(div);
		
				}
					cont++;
		}
		setTimeout(listarMulher, 1000);
		}


function validaNome() {
	var texto = document.getElementById("txtNome").value;
	var padrao = /^[A-ZÀ-Ú][a-zà-ú]{2,19}$/;
	padrao.test(texto) ? validaIdade()
		: alert("Nome não é valido!");
}
function validaIdade() {
	var texto = document.getElementById("txtIdade").value;
	var padraoDig = /^[0-1][0-7]|09|08/;
	padraoDig.test(texto) ? alert("Você é menor de idade, por isso não poderá ser cadastrado.")
		: cadastra();
}
function play() {
	id = setInterval("carrosel()", 1000);
}
function pause() {
	clearInterval(id);
}
function carrosel() {
	nmroImg++;
	if (nmroImg > 3) nmroImg = 1;
	document.getElementById("slideShow").src = `./imagens/onibus${nmroImg}.jpg`;

}
