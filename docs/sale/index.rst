Pedido de Venda
===============

.. code:: robotframework

    *** Settings ***

    Documentation  Full workflow demonstration
    Resource  ../robot.rst

    *** Test Cases ***

    Valid Login
        Login

.. figure:: _screenshots/sale.png

.. figure:: _screenshots/line.png

.. figure:: _screenshots/other.png

.. figure:: _screenshots/save.png

.. code:: robotframework

    * Test Cases *

    Pedido de Venda
        MainMenu                    Sales
        SubMenu                     Sales Orders
        Button                      oe_list_add
        Many2OneSelect              partner_id          Cliente 1 SP Contribuinte
        Date                        date_order          08/30/2015
        Char                        client_order_ref    SP001
        Capture viewport screenshot  _screenshots/sale-header.png
        NewOne2Many                 order_line
        Many2OneSelect              product_id	        [M-Opt] Mouse, Optical
        Char                        product_uom_qty     2
        Capture viewport screenshot  _screenshots/line.png
        Button	            	    oe_form_button_save_and_close
        NotebookPage                Other Information
        Select-Option       	    picking_policy	    Deliver all products at once
        Select-Option       	    order_policy	    On Delivery Order
        Capture viewport screenshot  _screenshots/other.png
        Button	            	    oe_form_button_save
        Capture viewport screenshot  _screenshots/saved.png
