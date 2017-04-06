Parceiro
========
.. code:: robotframework
    :class: hidden

    *** Settings ***

    Resource  ../test_odoo_10_0.rst

    *** Test Cases ***

    | Criaçao de um parceiro        |                      |                  |                           |
    |-------------------------------|----------------------|------------------|---------------------------|
    |                               | Selecione o Menu     | Sales            |                           |
    |                               | Selecione o SubMenu  | Customers        |                           |
    |                               | Ativar o Botão       | Create           |                           |
    |                               | Char                 | name             | Leticia                   |
    |                               | Ativar o Botão       | Save             |                           |
