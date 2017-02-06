Login
=====
.. code:: robotframework
    :class: hidden

    *** Settings ***

    Resource  ../robot.rst

    *** Test Cases ***

    Valid Login
        Login

assa

.. code:: robotframework

    | Criaçao de um parceiro        |                      |                  |                           |
    |-------------------------------|----------------------|------------------|---------------------------|
    |                               | Selecione o Menu     | Sales            |                           |
    |                               | Selecione o SubMenu  | Customers        |                           |
    |                               | Ativar o Botão       | Create           |                           |
    |                               | Char                 | name             | Leticia                   |
    |                               | Char                 | street           | Avenida BPS               |
    |                               | Button               | res.partner      | oe_form_button_save       |


    | Criaçao de um pedido de venda |                      |                  |                           |
    |-------------------------------|----------------------|------------------|---------------------------|
    |                               | Selecione o Menu     | Sales            |                           |
    |                               | Selecione o SubMenu  | Sales Orders     |                           |
    |                               | Ativar o Botão       | Create           |                           |
    |                               | Selecione o registro | partner_id       | Leticia
    |                               | Date                 | date_order       | 11/01/2016                |
    |                               | Char                 | client_order_ref | AGR001                    |
    |                               | Adicione um item     | order_line       |                           |
    |                               | Selecione o registro | product_id       | [M-Opt] Mouse, Optical    |
    |                               | Char                 | product_uom_qty  | 2                         |
    |                               | Ativar o Botão       | Save & Close     |                           |
    |                               | Button               | sale.order       | oe_form_button_save       |




