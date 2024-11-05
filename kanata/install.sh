# Install Kanata (For home row mods)
sudo wget -O /usr/bin/kanata https://github.com/jtroo/kanata/releases/download/v1.7.0/kanata
sudo chmod +x /usr/bin/kanata
sudo cp kanata.kbd /etc
sudo cp kanata.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start kanata.service
sudo systemctl enable kanata.service

