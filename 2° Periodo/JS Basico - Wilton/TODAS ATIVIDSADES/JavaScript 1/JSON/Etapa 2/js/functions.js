function listar() {
    usr = JSON.parse(localStorage.getItem("dadosUser"));

    if (usr == null) document.write("Não há usuário cadastrado!");
    else document.write(`Usuario: ${usr.nome} e Senha: ${usr.senha}`);
}
function cadastrar() {
    nomeUser = document.getElementById("txtNome").value;
    senhaUser = document.getElementById("txtSenha").value;

    usr = { nome: nomeUser, senha: senhaUser };

    tabUsuarios = JSON.parse(localStorage.getItem("tabUsuarios"));

    if (!tabUsuarios) tabUsuarios = { usuarios: [] };

    tabUsuarios.usuarios.push(usr);

    localStorage.setItem("tabUsuarios", JSON.stringify(tabUsuarios));

    alert("Cadastro realizado com sucesso!");
}
