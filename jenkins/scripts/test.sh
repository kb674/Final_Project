#!/bin/bash

echo "test script has been run"

sudo apt update

# install chromium browser (by default will download 91.0.4472.101)
sudo apt install chromium-browser -y

# install chrome-driver same version
sudo apt install wget unzip -y
version=$(curl -s https://chromedriver.storage.googleapis.com/LATEST_RELEASE_91.0.4472)
wget https://chromedriver.storage.googleapis.com/${version}/chromedriver_linux64.zip
sudo unzip chromedriver_linux64.zip -d /usr/bin
rm chromedriver_linux64.zip

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# install node
nvm install v14.17.1

# install angular cli
npm install -g @angular/cli@8.0.1

#install karma dependencies in the project directory. Change name accordingly
cd  frontend/

npm install karma --save-dev
npm install -g karma-cli
npm install karma-jasmine karma-chrome-launcher jasmine-core --save-dev


# export variable
export CHROME_BIN=/usr/bin/chromium-browser

# run tests
ng test --karma-config karma.conf.js --browsers=ChromeHeadless --watch=false
