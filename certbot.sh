sudo apt-get update
sudo apt-get install snapd nginx
sudo snap install core
sudo snap refresh core
sudo snap install --classic certbot

sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --nginx

# since certbot automatically creates a systemd service to renew, the following line isn't really necessary
# echo "15 3 * * * certbot renew --quiet" >> /etc/cronjob
