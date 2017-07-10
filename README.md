[![Build Status](https://travis-ci.org/kmee/odoo-travis-robotframework.svg?branch=master)](https://travis-ci.org/kmee/odoo-travis-robotframework)

# odoo-travis-robotframework
Documentaçao e testes de aceitaçao da localizaçao brasileira - Odoo

O objetivo deste repositório é testar e documentar a localização brasileira através dos passos:

1. Realizar o download das dependencias;
2. Baixar o codigo com o buildout;
3. Executar os testes do Odoo;
4. Executar os testes de aceitação:
  - chromium-browser
  - selenium
5. Documentar o projeto e exibir o resultado na página: https://kmee.github.io/odoo-travis-robotframework/ 


Como contribuir
---------------

As palavras chaves estão definidas no arquivo: doc/source/robot.rst

E os casos de teste podem ser definidos dentro dos arquivos sphinix ( rst ) dentro de blocos como por ex:

.. code:: restructuredtext

	.. code:: robotframework
	
          *** Settings ***

          ...

          *** Variables ***

          ...

          *** Test cases ***

	    | Criaçao de um pedido de venda | Palavra chaves       | Argumento 1      | Argumento 2               |
	    |-------------------------------|----------------------|------------------|---------------------------|
	    |                               | Selecione o Menu     | Sales            |                           |
	    |                               | Selecione o SubMenu  | Sales Orders     |                           |
	    |                               | Ativar o Botão       | Create           |                           |
	    |                               | Selecione o registro | partner_id       | Cliente 1 SP Contribuinte |
	    |                               | Date                 | date_order       | 08/30/2015                |
	    |                               | Char                 | client_order_ref | AGR001                    |


Baixando este repositório
-------------------------

TODO

Instalando
----------


Executando os testes
--------------------

	 bin/sphinx-build -b html docs/source target/doc/build -D sphinxcontrib_robotframework_variables.'ODOO_DB'='seu banco de dados' -D sphinxcontrib_robotframework_variables.'ODOO_PASSWORD'='sua senha'

- Dentro da pasta: target/doc/build esta localizado o arquivo index.html que contem a documentação gerada.

Buscando as ultimas alterações do github
----------------------------------------

Acesse a pasta do repositório pelo terminal:

	cd nome_da_pasta
	cd nome_da_pasta/sub_pasta
	cd .. # para ir para a pasta de cima
	pwd # retorna o local atual
	cd ~ # vai para a home do usuário

	# Comando git para buscar as ultimas alterações do repositório, da pasta que vc esta
	git pull -r origin master

Criando um novo caso de teste
-----------------------------

- Editar o arquivo docs/source/index.rst e incluir na arvore novos diretórios, por exemplo

.. code:: restructuredtext

	.. toctree::
	   :maxdepth: 2
	   :numbered:

	   sale/index
	   novo/index # <----- [1]

- Via terminal:

    cd docs/source
    mkdir novo
    nano index.rst # para incluir o caminho do novo no indice [1]
    nano novo/index.rst

.. code:: restructuredtext

    
   
