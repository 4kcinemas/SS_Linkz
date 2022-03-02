if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/4kcinemas/SS_Linkz.git /SS_Linkz
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SS_Linkz
fi
cd /SS_Linkz
pip3 install -U -r requirements.txt
echo "Starting Netflix....🔥"
python3 bot.py
