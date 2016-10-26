
.. Robot Framework slides file, created by
   hieroglyph-quickstart on Sun Oct 16 10:06:11 2016.

=================================================
Documentação Odoo Brasil - Localização Brasileira
=================================================

Esta é a documentação oficial da localização brasileira e atua também como sistema automação de testes, para mais detalhes acesse o link sobre.


Formato Tabular? Verbos?
========================

Assim:

.. code-block:: robotframework

  | * Test Cases * | Verbos                        | Argumentos | ...   |
  | Login Válido   |                               |            |       |
  |                | Ir para a página de Login     |            |       |
  |                | Digitar no Campo              | Email      | demo  |
  |                | Digitar no Campo              | Password   | demo  |
  |                | Ativar o Botão                | Log in     |       |
  |                | Identificação do Usuário Será | Demo User  |       |

Verbos
======

.. code-block:: robotframework

  ** Keywords **

  Ir para a página de login
    Go To    http://localhost:8069/web/login
    Really Boostrap jQuery

.. image:: _static/imgs/login.png
   :align: center

Verbos
======

.. code::

  |                | Digitar no Campo              | E-mail     | demo  |
  |                | Digitar no Campo              | Senha      | demo  |

.. code-block:: robotframework

  ** Keywords **

  Digitar no Campo
    [Arguments]    ${name}    ${value}
    Input Text    xpath=//input[@id=( //label[ text()='${name}' ]/@for )]
    ...           ${value}

.. image:: _static/imgs/label.png
  :align: center

.. code:: html

  <div class="form-group field-login">
      <label for="login" class="control-label">E-mail</label>
      <input type="text" name="login" id="login">
  </div>


Verbos
======

.. code::

  |                | Ativar o Botão                | Acessar    |       |

.. code-block:: robotframework

  ** Keywords **

  Ativar o Botão
    [Arguments]    ${name}
    Click Button    xpath=//button[@type='submit' and text()='${name}']

.. image:: _static/imgs/login.png
   :align: center

.. code:: html

  <button type="submit" class="btn btn-primary">Acessar</button>

Verbos
======

Verificando se deu certo...

.. code-block:: robotframework

  ** Keywords **

  Identificação do Usuário Será
    [Arguments]    ${UserName}
    ${element_path} =    Set Variable    //span[@class="oe_topbar_name"]
    Wait Until Page Contains Element    xpath=${element_path}
    Element Text Should Be    xpath=${element_path}   ${UserName}

.. image:: _static/imgs/ident-bar.png
   :align: center

.. code:: html

  <a class="dropdown-toggle" data-toggle="dropdown" href="#">
    <img class="oe_topbar_avatar" src="http://localhost:8069/...">
    <span class="oe_topbar_name">Demo User</span>
  </a>

Tirando Selfies
===============

Página de Login e sua notinha:

.. code-block:: robotframework

  ** Test Cases **
  Login Form Screenshot
    [Tags]    Screenshot

    ${login_box} =    Set Variable
    ...     jquery=div.oe_single_form_container:has(form.oe_login_form)
    ${note} =    Add Pointy Note    ${login_box}
    ...     Formulário de Login    position=top

    Capture and crop page screenshot    docs/source/_static/imgs/login.png
    ...     ${login_box}    ${note}

    Remove element    ${note}

Tirando Selfies
===============

Campo "E-mail" e sua notinha

.. code-block:: robotframework

  ** Test Cases **
  Login Field Screenshot
    [Tags]    Screenshot

    ${label} =    Set Variable    jquery=label[for="login"]
    ${label_note} =    Add Pointy Note    ${label}
    ...     Label for "E-mail" field    position=top

    ${field} =    Set Variable    id=login
    ${field_note} =    Add Pointy Note    ${field}
    ...     "E-mail" field    position=right

    Capture and crop page screenshot    docs/source/_static/imgs/label.png
    ...     ${label}    ${label_note}    ${field}    ${field_note}
    Remove elements    ${label_note}    ${field_note}


Tirando Selfies
===============

Botão de login e sua notinha:

.. code-block:: robotframework

  ** Test Cases **
  Login Button Screenshot
  [Tags]    Screenshot

    ${note} =    Add Pointy Note    jquery=button[type=submit]
    ...     Botão de Envio    position=right

    Capture and crop page screenshot    docs/source/_static/imgs/login.png
    ...     jquery=button[type=submit]    ${note}

    Remove element    ${note}


Tirando Selfies
===============

Identidade na toolbar e sua notinha:

.. code-block:: robotframework

  ** Test Cases **
  Toolbar Identity Screenshot
    [Tags]    Screenshot

    Login como "demo" com senha "demo"
    ${note} =    Add Pointy Note    jquery=span.oe_topbar_name
    ...     Botão p/ Ativar Formulário    position=bottom

    Capture and crop page screenshot    docs/source/_static/imgs/ident-bar.png
    ...     jquery=a.dropdown-toggle:has(span.oe_topbar_name)
    ...     ${note}

    Remove element    ${note}


Comandos com parâmetros embutidos
=================================

.. code-block:: robotframework

  ** Keywords **

  Login como "${username}" com senha "${password}"
    Ir para a página de Login
    Input Text        id=login       ${username}
    Input Password    id=password    ${password}
    Click Button      xpath=//button[@type='submit']
    Wait Until Page Contains Element
    ...     xpath=//span[@class="oe_topbar_name"]
    ...     timeout=30
    Really Boostrap jQuery


E de onde vieram esses outros comandos?
=======================================

.. code-block:: robotframework

  ** Settings **          Valores

  Library                 Selenium2Library
  Library                 Selenium2Screenshots
  Suite Setup             Abrir Browser no Login
  Test Setup              Login Test Setup
  Suite TearDown          Close All Browsers

  ** Variables **    Valores
  ${SPEED}           0.

  ** Keywords **

  Abrir Browser no Login
    Set Selenium Speed      ${SPEED}
    Open Browser    http://localhost:8069/web/login    browser=chrome

  Login Test Setup
    Ir para a página de Login

Comandos para consertar bugs...
===============================

.. code-block:: robotframework

  ** Keywords **

  Really Boostrap jQuery
    Bootstrap jQuery
    Wait Until Keyword Succeeds    20    1 sec
    ...    JQuery Is Loaded

  JQuery Is Loaded
    ${jQueryType} =    Execute javascript    return typeof(window.jQuery);
    Should Be Equal    function    ${jQueryType}


.. toctree::
   :maxdepth: 2

   sobre
