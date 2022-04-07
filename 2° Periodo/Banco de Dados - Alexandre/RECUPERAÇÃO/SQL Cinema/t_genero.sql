
create table genero (
	cod_gen int primary key auto_increment,
	nome_gen varchar(100));

insert into genero(cod_gen,nome_gen)
values
	(1,"Action"),
	(2,"Adventure"),
	(3,"Animation"),
	(4,"Comedy"),
	(5,"Crime"),
	(6,"Documentary"),
	(7,"Drama"),
	(8,"Family"),
	(9,"Fantasy"),
	(10,"History"),
	(11,"Horror"),
	(12,"Music"),
	(13,"Mystery"),
	(14,"Romance"),
	(15,"Science Fiction"),
	(16,"Thriller"),
	(17,"TV Movie"),
	(18,"War"),
	(19,"Western");

select * from genero_filme;



/*
____Genres:___ 5 colunas:
Action
Adventure
Animation
Biography
Comedy
Crime
Documentary
Drama
Family
Fantasy
Historic
History
Horror
Music
Mystery
Romance
Science Fiction
Thriller
TV Movie
War
Western

*/
