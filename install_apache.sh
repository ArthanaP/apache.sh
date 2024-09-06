#!/bin/bash

# Update package list and install Apache
sudo apt-get update
sudo apt-get install -y apache2

# Create the custom directory
sudo mkdir -p /var/www/postiefs.com

# Set permissions (optional)
sudo chown -R $USER:$USER /var/www/postiefs.com
sudo chmod -R 755 /var/www/postiefs.com

# Restart Apache to apply changes
sudo systemctl restart apache2
