#!/usr/bin/env bash
virtualenv . --system-site-packages
bin/pip install --upgrade pip setuptools zc.buildout

sudo apt-get install expect-dev python-lxml libappindicator1 fonts-liberation chromium-browser chromium-chromedriver

wget http://chromedriver.storage.googleapis.com/2.21/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo chmod u+x chromedriver
sudo mv chromedriver /usr/bin/
export CHROME_BIN=chromium-browser


echo "[buildout]
extends = test.cfg

[openerp]
options.admin_passwd = admin
#options.db_password = odoo
#options.db_host = localhost
#options.db_port = 5432" >> buildout.cfg
bin/buildout
