select * from notas_fiscais
where DATA_VENDA = '2017-01-01' limit 5,10;

#UTILIZANDO ODER BY 

select sabor, embalagem from tabela_de produtos;
select * from tabela_de_produtos order by sabor, embalagem;

select * from tabela_de_produtos order by sabor desc;

-- qual ou quais foram as maiores vendas 
-- do produto "linha refrescante - 1 litro - morango/limão"
-- em quantidade e preco?



select * from tabela_de_produtos where NOME_DO_PRODUTO = 'linha refrescante- 1 litro -morango/limão';

select*from itens_notas_fiscais where CODIGO_DO_PRODUTO = '1101035' order by quantidade desc, preco desc;

#agrupando os resultados (group by)

select estado, sum(limite_de_credito) as preco_total 
from tabela_de_clientes group by estado;




















## QUESTÃO 1)Selecione os campos nome, de_ferias e bairro a partir da tabela de vendedores. Em seguida, selecione a vendedora com o nome de ‘Cláudia Morais’, cujo bairro é ‘Jardins’. Ela está de férias?

select nome, de_ferias bairro from tabela_de_vendedores;
select nome, de_ferias bairro from tabela_de_vendedores where nome in ('Cláudia Morais') and bairro = 'jardins';


## QUESTÃO 2)A partir da tabela de vendedores, selecione a pessoa que possui comissão acima de 0.10 e que está de férias.

select nome, percentual_comissao, de_ferias from tabela_de_vendedores where percentual_comissao >= 0.10 and de_ferias =1;



## QUESTÃO 3)Realize uma consulta na tabela de notas fiscais, identificando o número de matrícula 00237 ou a data de venda do dia 12-01-2015. Por que o CPF desta tabela não é uma chave primária (pk)?
select * from notas_fiscais where matricula = ('00237') or data_venda = '2015-01-12';

## QUESTÃO 4)Na tabela dos itens das notas fiscais, selecione o código do produto e a quantidade vendida dos itens que possuam quantidade de venda igual ou maior do que 99.
## Qual ou quais itens representam o maior valor de venda?

select preco, codigo_do_produto, quantidade from itens_notas_fiscais where quantidade >= 99 and preco >44

## QUESTÃO 5)Quem é o cliente que comprou 84 produtos com o número de código igual a 1101035, cujo número da nota fiscal foi 102? Quem foi o vendedor ou
## vendedora responsável e qual o nome do produto e seu sabor? Gere o Diagrama de Entidade - Relacionamento para melhor compreensão.
