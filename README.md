# Começando o Projeto e Importações

## Bibliotecas Utilizadas e Versões

- Flask-RESTful==0.3.10
- requests==2.32.3
- SQLAlchemy==2.0.31
- Flask==3.0.3
- bcrypt

Para instalar todas as dependências listadas, utilize o seguinte comando:

```bash```
pip install -r requirements.txt
pip install Flask-SQLAlchemy
pip install Flask-Login
pip install flask flask_sqlalchemy flask_login flask_session psycopg2



## Conexão com o Banco esta no Model no CreateSQL: 

Nesse arquiso esta a conexão com o banco e o tipo do Banco de dados 

## Estrutura de Pagina, ela segue uma estrutura MVC: 

## MODEL é a definição da classe do objeto junto ao ORM do SQLALCHEMY

Aqui eu faço todo o mapeamento do objeto com e com suas tabelas defininando suas caracteristica.
Essas classes são mapeadas diretamente para tabelas no banco de dados.

## Controller eu defino as rotas de acesso, e as validações que em breve sera feita por uma api

O Controller é responsável por definir as rotas de acesso (endpoints) e por conter a lógica de validação e processamento das requisições.
Em breve sera a API responsavel por fazer todo esse controller

## View é a visualização da pagina com os templates que o Flask consegue Carrega:

Aqui a view esta na pasta template aonde eu separo o Cliente do Admin 


## Como estatar o projeto,primeiramente veja se voce tem o Postgresql :

1 ° Caso tenha o Postgresql vai na pasta Model no arquivo config, e altere com a sua configuração do banco
2 ° Comece da uma database e vincule ela ao projeto, se quiser aqui tem o modelo do banco de dados para ficar mais facil
3 ° Da um run no arquivo app.py 

## O projeto não esta 100% finalizado, aonde falta 2 configuração a fazer sao elas:

1 ° Atualização do Pedido
2 ° Cancela o Pedido 

## Sobre a navegação do projeto, o Login ADM vai para o dashboard do site e finalidade administrativa como:

1° Cria Produto
2° Apagar produto
3° Ver os status do pedido
4° Ver tambem o lado financeiro

## Logando como cliente:

1° Voce pode adicionar o pedido no carrinho
2° Colocar observação nos produto 
3° e Criar o pedido 

