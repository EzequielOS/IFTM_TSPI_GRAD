### 1A
select cl.nome, cl.cnpj, max(pe.valorTotal)
from cliente cl inner join Pedido pe 
on cl.codCliente = pe.codCliente
where month(pe.dataCompra) = '03' AND pe.Status = 'PAGO'
group by cl.codCliente
limit 10
;

## 1B
select c.nome, month(current_date()), max((pe.valorTotal * 0.01)) as pontuacao
from cliente c inner join Pedido pe
on pe.codCliente = c.codCliente
where month(pe.dataCompra) = month(current_date())
group by c.codCliente
;

## 1C
select ctg.nomeCategoria, count(p.codCat) as qtd_Produtos
from categoria ctg inner join produto p
on ctg.codCat = p.codCat
group by p.codCat
;

## 1D
select year(pe.dataCompra), month(pe.dataCompra), sum(pe.valorTotal)
from Pedido pe
group by pe.codPedido
;

## 1E
select prd.nome, sum(itPe.quantidade)
from produto prd left join ItemPedido itPe
on prd.codProduto = itPe.codProduto inner join Pedido pe
on itPe.codPedido = pe.codPedido
where date_add(pe.dataCompra,Interval 6
month)>=current_date()
group by 1
;

## 2A

