select * 
from cliente;

(select c.nome, cnt.cod_conta, concat('Deposito: ' , CAST(rd.valor_deposito as char)) as operacao
from cliente c inner join conta_corrente cnt
on c.cod_cliente = cnt.cod_cliente inner join Registro_Deposito rd
on cnt.cod_conta = rd.cod_conta
order by valor_deposito)
UNION ALL
(select c.nome, cnt.cod_conta, concat('Saque: ', CAST(rs.valor_saque as char)) as operacao
from cliente c inner join conta_corrente cnt
on c.cod_cliente = cnt.cod_cliente inner join Registro_Saque rs
on cnt.cod_conta = rs.cod_conta 
order by valor_saque);

select * 
from Registro_Deposito;

### Exercicio 2
select cnt.cod_conta, c.nome, c.telefone, c.email
from cliente c join conta_corrente cnt
on c.cod_cliente = cnt.cod_cliente join Registro_Saque rs
on cnt.cod_conta = rs.cod_conta
where dt_saque in ( select rs.dt_saque
					from Registro_Saque rs join Registro_Deposito rd 
						on rs.cod_conta = rd.cod_conta
						where date_add(dt_saque, Interval 6 month) >= current_date()); ##Incompleta
                        
select *
from Registro_Deposito;
                        
## ex 2b
#select cnt.cod_conta, year(rs.dt_saque) as ano,  if (rs.dt_saque = null, "Sem movimentação", month(rs.dt_saque)) as mes , concat('Saque: ', CAST(rs.valor_saque as char)) as movimento
#from conta_corrente cnt join Registro_Saque rs
#on cnt.cod_conta = rs.cod_conta
#;


## Execises 3 A
select c.*
from cliente c join conta_corrente cnt
on c.cod_cliente = cnt.cod_cliente join Registro_Deposito rd
on cnt.cod_conta = rd.cod_conta
where rd.valor_deposito = (select max(valor_deposito) 
								from Registro_Deposito
									where month(dt_deposito)= month(current_date())
										and year(dt_deposito) = year(current_date())
                                        and month(current_date())
										and year(dt_deposito) = year(current_date));

## Execises 3 B
select c.cpf, c.nome, c.telefone, c.email, cnt.cod_conta
from cliente c join conta_corrente cnt
on c.cod_cliente = cnt.cod_cliente join Registro_Saque rs
on cnt.cod_conta = rs.cod_conta
where valor_saque > (select avg(valor_saque) from Registro_Saque where year(dt_saque)=2022)
and year(rs.dt_saque)=2022;


#### Execises 3 C
select c.*
from cliente c join conta_corrente cnt
on c.cod_cliente = cnt.cod_cliente
where month(cnt.dt_hora_abertura) = 06 or month(cnt.dt_hora_abertura) = 08;

#### Execises 3 D
select cnt.cod_conta, cnt.saldo, cnt.dt_hora_abertura
from conta_corrente cnt join cliente c
on cnt.cod_cliente = c.cod_cliente
where year(cnt.dt_hora_abertura) = '2020' and c.sexo = 'F';


### 3e
select cc.*
from conta_corrente cc
where cod_conta in (select cod_conta
					from Registro_Saque
					where valor_saque > 1000
					and month(dt_saque)=3 and year(dt_saque)=2022);