Login
=====
.. code:: robotframework
    :class: hidden

    *** Settings ***

    Resource  ../robot.rst

    *** Test Cases ***

    Valid Login
        Login

.. code:: robotframework

    | Criaçao de um parceiro        |                      |                  |                           |
    |                               | Selecionar o Menu    | Sales            |                           |
    |                               | Selecionar o SubMenu | Sales            | Customers                 |
    |                               | Ativar o Botão       | Create           |                           |
    |                               | Preencher campo      | name             | Leticia                   |
    |                               | Preencher campo      | street           | Avenida BPS               |
    |                               | Ativar o Botão       | Save             |                           |


    | Criaçao de um pedido de venda |                      |                  |                           |
    |                               | Selecionar o Menu    | Sales            |                           |
    |                               | Selecionar o SubMenu | Sales            | Sales Orders                           |
    |                               | Ativar o Botão       | Create           |                           |
    |                               | Selecione o registro | partner_id       | Leticia                   |
    |                               | Date                 | date_order       | 11/01/2016 17:30:49       |
    |                               | Char                 | client_order_ref | AGR001                    |
    |                               | Adicione um item     | order_line       |                           |
    |                               | Selecione o registro | product_id       | [M-Opt] Mouse, Optical    |
    |                               | Char                 | product_uom_qty  | 2                         |
    |                               | Ativar o Botão       | Save & Close     |                           |
    |                               | Button               | sale.order       | oe_form_button_save       |

.. code:: robotframework
    :class: hidden

Capture viewport screenshot  _screenshots/venda.png

  .. figure:: _screenshots/venda.png
