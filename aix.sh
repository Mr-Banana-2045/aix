echo -e "\033[94m     ##################"
echo -e "    ## ##          ## ##"
echo -e "   ##    ##      ##    ##"
echo -e "  ##       ##  ##       ##"
echo -e "  ##         \033[93mAI\033[94m         ##"
echo -e "  ##       ##  ##       ##"
echo -e "   ##    ##      ##    ##"
echo -e "    ## ##          ## ##"
echo -e "     ##################"
echo -e "\033[94m1- \033[93mQr create     \033[94m2- \033[93mgpt chat"
echo -e "\033[94m3- \033[93mimage create  \033[94m4- \033[93mtext to speech\033[94m"
read -p "Enter number > " num
if [ $num == "1" ]; then
while sleep 0
do
read -p "name file > " name
read -p "msg > " ms
qrencode -o $name '$ms'
echo -e "\033[92msaved in file $name\033[94m"
done
elif [ $num == "2" ]; then
while sleep 0
do
read -p "msg > " you
bot=$(curl -s 'https://5fire.fasttube.ir/bard-api?text=${you}' | jq --raw-output '.message')
echo "\033[92mbot > \033[93m${bot}\033[94m"
done
elif [ $num == "3" ]; then
while sleep 0
do
read -p "image name > " im
bot=$(curl -s 'https://haji-api.ir/prompts/?text=${im}' | jq --raw-output '.result' > img.txt)
echo "\033[92msaved in file img.txt\033[94m"
done
elif [ $num == "4" ]; then
while sleep 0
do
read -p "text > " sp
espeak "$sp"
done
else
echo "\033[91merror"
fi
done