# Update and install requirements
sudo apt-get update
sudo apt install -y python3-pip nginx
sudo apt install -y uvicorn
# Copy the configuration file to the nginx enabled sites folder
sudo cp -R fastapi_setup /etc/nginx/sites-enabled/
sudo service nginx restart
cd ~/ Implementez-un-modele-de-scoring/fastAPI/
# Install FastAPI application requirements
pip3 install -r requirements.txt
# Kill any service running on port 80
sudo kill -9 $(sudo lsof -t -i:80)
sudo service nginx restart
# Run the application with nohup so the application runs as a background process
nohup python3 -m uvicorn main:main --reload --host 0.0.0.0