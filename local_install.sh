#!/usr/bin/env bash
virtualenv . --system-site-packages
bin/pip install --upgrade pip setuptools zc.buildout

sudo apt-get install expect-dev python-lxml libappindicator1 fonts-liberation chromium-browser chromium-chromedriver

wget http://chromedriver.storage.googleapis.com/2.21/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip
rm chromedriver_linux64.zip.1
rm chromedriver_linux64.zip.2
sudo chmod u+x chromedriver
sudo mv chromedriver /usr/bin/
export CHROME_BIN=chromium-browser

wget https://github.com/mozilla/geckodriver/releases/download/v0.15.0/geckodriver-v0.15.0-linux64.tar.gz
tar xvfz geckodriver-v0.15.0-linux64.tar.gz
rm geckodriver-v0.15.0-linux64.tar.gz
sudo chmod u+x geckodriver
sudo mv geckodriver /usr/bin/

echo "[buildout]
extends = test.cfg

[openerp]
options.admin_passwd = admin
#options.db_password = odoo
#options.db_host = localhost
#options.db_port = 5432" >> buildout.cfg
bin/buildout
