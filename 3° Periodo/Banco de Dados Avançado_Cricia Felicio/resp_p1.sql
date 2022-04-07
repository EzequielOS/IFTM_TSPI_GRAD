create database MePoupe;
use MePoupe;

create table cliente(
cod_cliente int auto_increment,
nome varchar(50),
CPF char(11),
sexo char(1),
dt_nasc date,
telefone char(15),
email varchar(100),
primary key(cod_cliente));

insert into cliente values(1,'Bill Clinton','12999786543','M','1940-04-12', '11999786543',
 'william@gmail.com'),
 (2,'Trump', '13999786544', 'M','1942-05-10', '11999186543', 'trump@gmail.com');
 
 
create table conta_corrente(
cod_conta int auto_increment,
dt_hora_abertura date,
saldo numeric(9,2),
Status varchar(15),
cod_cliente int,
primary key(cod_conta),
foreign key(cod_cliente)references cliente(cod_cliente));

insert into conta_corrente values (1,current_date(),50,'Ativa',1);
insert into conta_corrente values (2,current_date(),500,'Ativa',2);
insert into conta_corrente values (3,current_date(),500,'Ativa',2);
insert into conta_corrente values (4,current_date(),500,'Ativa',1);
insert into conta_corrente values (5,current_date(),500,'Ativa',1);

create table Registro_Saque(
cod_saque int auto_increment,
cod_conta int,
dt_saque date,
valor_saque numeric(9,2),
primary key(cod_saque),
foreign key(cod_conta)references conta_corrente(cod_conta));

 create table Registro_Deposito(
cod_deposito int auto_increment,
cod_conta int,
dt_deposito date,
valor_deposito numeric(9,2),
primary key(cod_deposito),
foreign key(cod_conta)references conta_corrente(cod_conta));
select * from registro_saque;

insert into registro_saque 
values(16,2,"2020-03-22",90);
insert into registro_saque 
values(15,2,"2020-03-22",80);
insert into registro_saque values(1,2,current_date(), 20);
insert into registro_saque values(2,2,current_date(), 8);

insert into registro_saque values(3,2,'2018-10-08', 20);
insert into registro_saque values(4,2,'2018-10-07', 8);

insert into registro_deposito values(1,2,current_date(), 40);
insert into registro_deposito values(2,2,current_date(), 80);
insert into registro_deposito values(3,1,current_date(), 30);
insert into registro_deposito values(4,1,current_date(), 30);
insert into registro_saque values(5,1,'2018-10-08', 50);
insert into registro_saque values(6,1,'2018-10-07', 80);
insert into registro_saque values(7,3,'2018-10-07', 80);
insert into registro_saque values(8,4,'2018-10-07', 80);
insert into registro_saque values(9,1,current_date, 100);
insert into registro_saque values(10,4,'2018-10-07', 180);
insert into registro_saque values(11,2,'2018-10-07', 180);
insert into registro_saque values(12,2,'2018-10-07', 100);
insert into registro_saque values(13,1,'2018-10-07', 100);
insert into registro_saque values(14,1,current_date, 100);
select * from registro_saque;
-- 1)
select c.nome,cc.cod_conta,
concat("Deposito: ", sum(rd.valor_deposito)) operacao
from cliente c inner join 
conta_corrente cc on c.cod_cliente=cc.cod_cliente
inner join registro_deposito rd 
on cc.cod_conta=rd.cod_conta
group by c.cod_cliente,cc.cod_conta
UNION ALL
select c.nome,cc.cod_conta,
concat("Saque: ", sum(rs.valor_saque)) operacao
from cliente c inner join conta_corrente cc 
on c.cod_cliente=cc.cod_cliente
inner join registro_saque rs 
on cc.cod_conta=rs.cod_conta
group by c.cod_cliente,cc.cod_conta;

-- 2) a)
select cc.cod_conta,c.nome,c.telefone,c.email
from conta_corrente cc inner join cliente c 
on c.cod_cliente=cc.cod_cliente
where cc.cod_conta 
not in (select cod_conta from registro_saque
where 
timestampdiff(Day,dt_saque,current_date)<=180) 
and cc.cod_conta 
not in (select cod_conta from registro_deposito
where 
timestampdiff(Day,dt_deposito,current_date)<=180);



-- 2 b)
select cc.cod_conta,year(dt_saque) ano,
month(dt_saque) mes,
if(sum(valor_saque) is null,"Sem registro de saque",
sum(valor_saque)) operacao
from conta_corrente cc
 left join registro_saque rs 
 on cc.cod_conta=rs.cod_conta
group by cc.cod_conta,ano,mes
UNION ALL
select cc.cod_conta,
year(dt_deposito) ano,month(dt_deposito) mes,
if(sum(valor_deposito) is null,"Sem registro de deposito",sum(valor_deposito)) operacao
from conta_corrente cc left join registro_deposito rd on cc.cod_conta=rd.cod_conta
group by cc.cod_conta,ano,mes;

-- 2 c)

select cc.cod_conta,c.nome,
count(rs.cod_saque) qtde_saque
from cliente c left join 
conta_corrente cc on c.cod_cliente=cc.cod_cliente
left join registro_saque rs 
on  cc.cod_conta=rs.cod_conta 
and month(dt_saque)=month(current_date) 
and year(dt_saque)=year(current_date())
group by cc.cod_conta,c.cod_cliente;


-- 2 d)
select c.nome,c.cpf,cc.cod_conta
from cliente c inner join 
conta_corrente cc on c.cod_cliente=cc.cod_cliente
where cc.saldo>100000;

-- 3 a)
select distinct c.*
from cliente c inner join 
conta_corrente cc on c.cod_cliente=cc.cod_cliente
inner join registro_deposito rs 
on rs.cod_conta=cc.cod_conta
where rs.valor_deposito=(select max(valor_deposito) 
from registro_deposito
where month(dt_deposito)=month(current_date()) 
and year(dt_deposito)=year(current_date))
and month(dt_deposito)=month(current_date()) 
and year(dt_deposito)=year(current_date);


select * from registro_saque;

-- 3 b)

select c.nome,c.telefone,c.email
from cliente c inner join conta_corrente cc 
on c.cod_cliente=cc.cod_cliente
inner join registro_saque rs 
on rs.cod_conta=cc.cod_conta
where rs.valor_saque>(select avg(valor_saque) 
from registro_saque 
where  year(dt_saque)=2020) and
year(rs.dt_saque)=2020;
select * from conta_corrente;

-- 3 c)
select c.*
from cliente c
where c.cod_cliente in(
select cod_cliente
from conta_corrente
where month(dt_hora_abertura)=8
or month(dt_hora_abertura)=7);

-- 3 d)
select cc.cod_conta,cc.saldo,cc.dt_hora_abertura
from conta_corrente cc
where cc.cod_cliente in(
select cod_cliente from cliente
where sexo='F')
and year(cc.dt_hora_abertura)=2020;
select * from conta_corrente;



-- 3 e)

select cc.*
from conta_corrente cc
where cod_conta in(
select cod_conta
from registro_saque
where valor_saque>1000 
and month(dt_saque)=8 and year(dt_saque)=2020);

