if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Coder2355/Filterstorebot /Filterstorebot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Filterstorebot
fi
cd /Filterstorebot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
