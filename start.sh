echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/impta/abubbax /ahubbax
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/subinps/ahubbax -b $BRANCH /ahubbax
fi
cd /ahubbax
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
