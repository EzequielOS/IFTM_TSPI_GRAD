### Cria uma VISAO ####
Create view vw_aposentados as
Select *, timestampdiff(Year, dt_nasc,current_date()) as Age 
From paciente
Where date_add(dt_nasc,Interval 60
year)<=current_date();

### Lista Visao Criada #####
select * from vw_aposentados;

### FUNÇÃO PARA DIFERENÇA ENTRE DATE E DATETIME ###
select timestampdiff(Year, dt_nasc,current_date())
from paciente;

#### Cria VISAO cardio_hipertenso ###
Create view vw_cardio_hipertenso(codigo, nome,
datanasc) as
Select codp, nomep,dt_nasc from paciente
Where problema='cardiaco' or problema='hipertensao';

### CRIA VISAO Crie uma visão com as informações dos pacientes cardiacos ou hipertensos que tenham idade menor ou igual a 40 anos 
create view vw_cardio_hipertenso_jovem as
select * from vw_cardio_hipertenso
where timestampdiff(Year, datanasc,current_date()) >=
40;
### Insere João Pedro na lista de pacientes
insert into paciente(nomep,sexo,dt_nasc,problema)
values ('Joao Pedro', 'm', '2005-03-06','cardiaco');
Select * from vw_cardio_hipertenso_jovem;


### Execicios em aula
use empresa;
create view DadosFunc(nomeFunc, dtAdmiss, nomeDept, nomeCarg, salario) as
select f.nome, f.data_adm, d.nome, c.nome, c.salario
from funcionario f inner join departamento d 
on f.cod_depto = d.cod_depto inner join cargo c
on f.cod_cargo = c.cod_cargo;

create view funcionariosPorDepto(nomeDept, qtdFunc) as
select d.nome, count(*)
from departamento d inner join funcionario f 
on d.cod_depto = f.cod_depto
group by f.cod_depto
;  


