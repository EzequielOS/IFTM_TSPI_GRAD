function cadastrar() {
    nomeUser = document.getElementById("txtNome").value;
    raUser = document.getElementById("txtRa").value;
    notaUser1 = document.getElementById("txtNota1").value;
    notaUser2 = document.getElementById("txtNota2").value;

    if (nomeUser != "" && raUser != "" && notaUser1 != "" && notaUser2 != "") {
        usr = {
            nome: nomeUser,
            ra: raUser,
            nota1: notaUser1,
            nota2: notaUser2,
        };

        tabUsuarios = JSON.parse(localStorage.getItem("tabUsuarios"));

        if (!tabUsuarios) tabUsuarios = { usuarios: [] };

        tabUsuarios.usuarios.push(usr);

        localStorage.setItem("tabUsuarios", JSON.stringify(tabUsuarios));

        alert("Cadastro realizado com sucesso!");
    } else {
        alert("Você deve preencher todos os campos!");
    }
}

function listar() {
    var usr = [];
    var soma = [];
    var aprovados = [];

    usr = JSON.parse(localStorage.getItem("tabUsuarios"));

    if (usr == null) document.write("Não há alunos cadastrados!");
    else
        document.write(`<table border=1>
                <tr>
                    <th>Nome</th>
                    <th>RA</th>
                    <th>Nota 1º</th>
                    <th>Nota 2º</th>
                    <th>Total</th>
                    <th>Situação</th>
                </tr>`);
    for (i = 0; i < usr.usuarios.length; i++) {
        soma[i] =
            parseFloat(usr.usuarios[i].nota1) +
            parseFloat(usr.usuarios[i].nota2);

        if (soma[i] >= 60) {
            aprovados[i] = "Aprovado";
        } else aprovados[i] = "Reprovado";
        document.write(
            `<tr>
                    <td>
                    ${usr.usuarios[i].nome}
                    </td>
                    <td>
                    ${usr.usuarios[i].ra}
                    </td>
                    <td>
                    ${usr.usuarios[i].nota1}
                    </td>
                    <td>
                    ${usr.usuarios[i].nota2}
                    </td>
                    <td>
                    ${soma[i]}
                    </td>
                    <td>
                    ${aprovados[i]}
                    </td>
                </tr>`
        );
    }
    document.write(`</table>`);
}
