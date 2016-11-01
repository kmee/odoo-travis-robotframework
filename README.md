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





