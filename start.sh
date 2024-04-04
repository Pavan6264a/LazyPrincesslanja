if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/Pavan6264a/LazyPrincesslanja.git /LazyPrincess
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" /LazyPrincess
fi

cd /LazyPrincess

if [ -f "requirements.txt" ]; then
  pip3 install -U -r requirements.txt
else
  echo "requirements.txt not found. Skipping installation of dependencies."
fi

echo "Starting Bot...."
python3 bot.py
