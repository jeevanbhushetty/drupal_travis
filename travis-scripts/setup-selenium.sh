cd ~/
sh -e /etc/init.d/xvfb start
export DISPLAY=:99.0
sleep 5
wget http://selenium-release.storage.googleapis.com/3.8/selenium-server-standalone-3.8.1.jar
wget https://chromedriver.storage.googleapis.com/2.33/chromedriver_linux64.zip && unzip chromedriver_linux64.zip
java -jar -Dwebdriver.chrome.driver=chromedriver selenium-server-standalone-3.8.1.jar -log /tmp/webdriver.log > /tmp/webdriver_output.txt 2>&1 &
sleep 5