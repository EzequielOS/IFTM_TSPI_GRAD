function listar() {
    usr = JSON.parse(localStorage.getItem("dadosUser"));

    if (usr == null) document.write("Não há usuário cadastrado!");
    else document.write(`Usuario: ${usr.nome} e Senha: ${usr.senha}`);
}
function cadastrar() {
    nomeUser = document.getElementById("txtNome").value;
    senhaUser = document.getElementById("txtSenha").value;

    usr = { nome: nomeUser, senha: senhaUser };

    localStorage.setItem("dadosUser", JSON.stringify(usr));

    alert("Cadastro realizado com sucesso!");
}
