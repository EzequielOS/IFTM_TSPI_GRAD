-- ------------------------------------------------------------------------
use Cinemao;
# EXERCÍCIOS FILMES
-- ----------------------------------------------------------------------------------
/* EXEMPLO - LISTAR NOME DE TODOS OS FILMES FEITOS NO BRASIL */
select f.nome_film FILME, p.nome_pais
from fpais fp
inner join filme f on f.cod_film = fp.cod_film
inner join pais p on p.cod_pais = fp.cod_pais
where p.nome_pais = 'Brazil'
ORDER BY 1;
-- ----------------------------------------------------------------------------------
/* 1 QUAIS DIRETORES ESTÃO EM MAIS DE 1 FILME? */
select d.nome_dir
from diretor d
inner join fdiretor fd on d.cod_dir = fd.cod_dir
inner join filme f on f.cod_film = fd.cod_film
group by d.nome_dir
having count(*)>2;
-- ----------------------------------------------------------------------------------
/* 2 QUAL O DIRETOR QUE TEM MAIS FILME? USE UMA CONSULTA APENAS! */
select d.nome_dir
from diretor d, fdiretor fd
where d.cod_dir = fd.cod_dir
group by d.cod_dir
order by count(*) desc
limit 1
;
#select d.nome_dir
#from diretor d, fdiretor fd
#where d.cod_dir = fd.cod_dir and d.nome_dir = 'Abbas Fahdel';
-- ----------------------------------------------------------------------------------
/* 3 LISTE NUMA SÓ CONSULTA O FILME MAIS DEMORADO E O FILME MAIS CURTO (COM DURAÇÃO DIFERENTE DE ZERO) */

;





-- ----------------------------------------------------------------------------------
/* 4 LISTE NUMA SÓ CONSULTA QUAL O FILME MAIS ANTIGO E O MAIS RECENTE (COM DATA DE LANÇAMENTO DIFERENTE DE ZERO) */










-- ----------------------------------------------------------------------------------
/* 5 QUANTOS FILMES TEM DATA DE LANCAMENTO ZERADA? */
select count(*)
from filme
where release_date = "1111-11-11"; #OS FILMES COM DATAS ZERADAS FORAM ALTERADOS DEVIDO NÂO SUPORTAR DATE=0
-- ----------------------------------------------------------------------------------
/* 6 QUAL(IS) FILME(S) TEM MAIS IDIOMAS FALADOS? */
select f.nome_film
from filme f, flingua fl
where f.cod_film = fl.cod_film
group by fl.cod_film
order by count(*) desc
;
-- ----------------------------------------------------------------------------------
/* 7 MOSTRA NUMA CONSULTA QUAL PAIS TEM MAIS FILMES LANÇADOS A PARTIR DO ANO 2000 E A GUANTIDADE DE FILMES */
select p.nome_pais, count(*)
from pais p inner join fpais fp
on p.cod_pais = fp.cod_pais inner join filme f
on fp.cod_film = f.cod_film
where year(f.release_date) >= "2000"
group by p.cod_pais
order by count(*) desc
;
#select *
#from filme
#where year(release_date) >= "2000";
-- ----------------------------------------------------------------------------------
/* 8 LISTE NUMA SÓ CONSULTA OS FILMES LANCADO EM 1940 E 2021? (MOSTRAR NOME DO FILME E DATA DE LANÇAMENTO */
select nome_film, release_date
from filme
where year(release_date) = "1940" or year(release_date) = "2021";
-- ----------------------------------------------------------------------------------
/* 9 QUALIS FILMES FOIRAM LANCADOS ANTES DE 1960 NO BRAZIL? LISTE NOME DO FILME, ANO DO FILME, DATA DE LANÇAMENTO E NOME DO PAIS*/
# CONSIDERE APENAS O CAMPO "ANO DO FILME"
select f.nome_film, f.film_year, f.release_date, p.nome_pais
from filme f inner join fpais fp 
on f.cod_film - fp.cod_film inner join pais p 
on fp.cod_pais = p.cod_pais
where p.nome_pais = "Brazil" and year(f.release_date) = "1960";
-- ----------------------------------------------------------------------------------
/* 10 MOSTRE EM UMA SÓ CONSULTA O NOME DO FILME, A DATA DE LANÇAMENTO E O OVERVIEW DO FILME MAIS NOVO E MAIS ANTIGO */
# NÃO MOSTRAR FILMES COM DATA ZERADA!







-- ----------------------------------------------------------------------------------
/* 11 QUAIS SAO OS FILMES DE GUERRA E DE CRIME? LISTE O NOME DO GENERO E A QUANTIDADE DOS DOIS NA MESMA CONSULTA */
select g.nome_gen, count(*) as qtd
from genero g inner join fgenero fg
on g.cod_gen = fg.cod_gen  
where g.nome_gen = "Crime" or g.nome_gen = "War"
group by g.cod_gen;
-----------------------------------
/* 12 QUAIS FILMES DE FICÇÃO CIENTIFICA SAO DOS JAPÃO? LISTE NOME, GENERO E PAIS*/
select f.nome_film, g.nome_gen, p.nome_pais
from filme f inner join fgenero fg
on f.cod_film = fg.cod_film inner join genero g
on fg.cod_gen = g.cod_gen inner join fpais fp
on f.cod_film = fp.cod_film inner join pais p
on fp.cod_pais = p.cod_pais
where g.nome_gen = "Science Fiction" and p.nome_pais = "Japan"
;
-- ----------------------------------------------------------------------------------
/* 13 QUAIS OS FILMES BRASILEIROS TEM MEDIA DE VOTOS ACIMA DE 8? */
select f.nome_film
from filme f inner join fpais fp
on f.cod_film = fp.cod_film inner join pais p
on fp.cod_pais = p.cod_pais
where p.nome_pais = "Brazil" and f.vote_avg > 8
;

-- ----------------------------------------------------------------------------------
/* 14 QUAIS FILMES TEM A PIOR COTACAO DE VOTOS? E A MAIOR? MOSTRE O NOME E A MÉDIA DE AMBOS NA MESMA CONSULTA */
select nome_film, vote_avg
from filme
order by vote_avg desc
limit 1
;





-- ----------------------------------------------------------------------------------
/* 15 QUAL FILME FALA O IDIOMA GUARANI E QUEM É O DIRETOR? */
select f.nome_film, d.nome_dir
from filme f 
inner join fdiretor fd on f.cod_film = fd.cod_film
inner join diretor d on d.cod_dir = fd.cod_dir
inner join flingua fl on f.cod_film = fl.cod_film
inner join lingua l on l.cod_ling = fl.cod_ling
where l.nome_ling = "GUARANI"
;
-- ----------------------------------------------------------------------------------
/* 16 QUANTOS FILMES TEM LINK PARA O IMDB E QUANTOS NÃO TEM LINK? MOSTRE AMBOS OS RESULTADOS NUMA SÓ CONSULTA */
select count(*)
from filme f
where f.imdb_link != ""
;






-- ----------------------------------------------------------------------------------
/* 17 LISTAR TODOS OS GENEROS PARA CADA FILME FEITO NO BRASIL */
select f.nome_film, g.nome_gen
from filme f inner join fgenero fg
on f.cod_film = fg.cod_film inner join genero g
on fg.cod_gen = g.cod_gen inner join fpais fp
on f.cod_film = fp.cod_film inner join pais p
on fp.cod_pais = p.cod_pais
where p.nome_pais = "Brazil";
-- ----------------------------------------------------------------------------------
/* 18 LISTAR TODOS OS GENEROS DE FILMES FEITOS NO BRASIL - SEM REPETIÇÃO E EM ORDEM ALFABÉTICA. */
select DISTINCT g.nome_gen
from filme f inner join fgenero fg
on f.cod_film = fg.cod_film inner join genero g
on fg.cod_gen = g.cod_gen inner join fpais fp
on f.cod_film = fp.cod_film inner join pais p
on fp.cod_pais = p.cod_pais
where p.nome_pais = "Brazil"
order by g.nome_gen
;
-- ----------------------------------------------------------------------------------
/* 19 QUAIS FILMES FORAM FEITOS PELO DIRETOR DE 'PSYCHO'? FAZER UMA CONSULTA APENAS */
select f.nome_film
from filme f inner join fdiretor fd
on f.cod_film = fd.cod_film inner join diretor d 
on fd.cod_dir = d.cod_dir
where d.nome_dir = "Alfred Hitchcock" and f.nome_film not like "Psycho";
-- ----------------------------------------------------------------------------------
/* 20 QUAL FILME TEM O MAIOR E O MENOR TITULO? MOSTRE O NOME DO FILME E A QUANTIDADE DE CARACTERES DE AMBOS NA MESMA CONSULTA */
select nome_film, CHAR_LENGTH(nome_film)
from filme;





-- ----------------------------------------------------------------------------------
/* 21 QUAIS FILMES DE GUERRA (WAR) FORAM FEITOS NO JAPAO ANTES DE 1960? */
# LISTE O NOME, GENERO, DATA DE LANÇAMENTO E O NOME DO PAIS SEM REPETIÇÃO
select f.nome_film, g.nome_gen, f.release_date, p.nome_pais
from filme f inner join fgenero fg
on f.cod_film = fg.cod_film inner join genero g 
on fg.cod_gen = g.cod_gen inner join fpais fp
on f.cod_film = fp.cod_film inner join pais p 
on fp.cod_pais = p.cod_pais
where g.nome_gen = "war" and p.nome_pais = "Japan" and year(f.release_date) < 1960
;
-- ----------------------------------------------------------------------------------
/* 22 QUANTOS NOMES DE DIRETORES COMECAM COM A LETRA DO SEU NOME? E QUANTOS TEM A LETRA DO SEU NOME NO FINAL? MOSTRE AMBOS NA MESMA CONSULTA */
select count(*)
from diretor d
where d.nome_dir LIKE "%E" 
;

-- ----------------------------------------------------------------------------------
/* 23 QUAIS DIRETORES FIZERAM FILMES NA Ethiopia? NAO MOSTRAR NOMES REPETIDOS */
select distinct d.nome_dir
from diretor d inner join fdiretor fd
on d.cod_dir = fd.cod_dir inner join fpais fp
on fd.cod_film = fp.cod_film inner join pais p 
on fp.cod_pais = p.cod_pais
where p.nome_pais = "Ethiopia"
;

-- ----------------------------------------------------------------------------------
/* 24 QUAIS FILMES INDIANOS SAO DE CRIME? ORDENE ALFABETICAMENTE */
select f.nome_film
from filme f inner join fpais fp
on f.cod_film = fp.cod_film inner join pais p
on p.cod_pais = fp.cod_pais inner join fgenero fg
on f.cod_film = fg.cod_film inner join genero g
on g.cod_gen = fg.cod_gen
where p.nome_pais = "India" and g.nome_gen = "Crime"
order by p.nome_pais
;
-- ----------------------------------------------------------------------------------
/* 25 QUANTOS FILMES CADA GENERO TEM NESSA LISTA? LISTAR NOME DO GENERO E A CONTAGEM ORDENADOS DO MAIOR PARA O MENOR */
select g.nome_gen, count(*)
from genero g inner join fgenero fg
on g.cod_gen = fg.cod_gen
group by g.nome_gen
order by count(*) desc;
-- ----------------------------------------------------------------------------------