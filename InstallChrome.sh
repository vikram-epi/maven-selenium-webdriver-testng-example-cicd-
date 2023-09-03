#!/bin/bash
sudo apt install default-jdk
sudo curl -sS -o – https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
sudo bash -c “echo ‘deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main’ >> /etc/apt/sources.list.d/google-chrome.list”
sudo apt-get update
sudo apt-get install google-chrome-stable
wget https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/google-chrome
sudo chown root:root /usr/bin/google-chrome
sudo chmod 777 /usr/bin/google-chrome
wget https://github.com/SeleniumHQ/selenium/releases/download/selenium-4.1.0/selenium-server-4.1.2.jar
mv selenium-server-4.1.2.jar selenium-server.jar
#sudo apt install xvfb
xvfb-run java -Dwebdriver.chrome.driver=/usr/bin/google-chrome -jar selenium-server.jar
