#!/usr/bin/env bash
virtualenv . --system-site-packages
bin/pip install --upgrade pip setuptools zc.buildout
echo "[buildout]
extends = test.cfg

#[openerp]
#options.db_user = odoo
#options.db_password = odoo
#options.db_host = localhost
#options.db_port = 5432" >> buildout.cfg
bin/buildout