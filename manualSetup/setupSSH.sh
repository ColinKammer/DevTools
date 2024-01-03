keyName="myKey"

ssh-keygen -t ed25519 -C "colin.kammer@gmx.de" -f ~/.ssh/$keyName
sh-add ~/.ssh/$keyName
echo "The Public key (to add to the git server) is:"
cat ~/.ssh/$keyName.pub
