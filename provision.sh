sudo apt-get update -y
sudo apt-get install -y nginx
# allow nginx at port 80
sudo ufw allow 'Nginx HTTP'

sudo apt-get install -y python3-pip
# pip 3 is a bitch
export LC_ALL=C
sudo pip3 install virtualenv

# setup flask app
cd /home/ubuntu/fumaki
# if virtaulenv exist delete it
if [ -d "fumaki" ]; then
    rm -rf fumaki
fi
virtualenv fumaki
# activate virtualenv
source fumaki/bin/active
pip install -r requirements.txt
python app.py