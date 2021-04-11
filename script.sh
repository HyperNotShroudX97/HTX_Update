# update script of userbot by AshSTR

cd ..

echo " "
echo """###You're running the USERGE-X update script.###"""
echo " "

#get username of user
echo -n "Kakashi or Itachi or gpack repo? (k)/(i)/(g): "
read u_n

if [[ "${u_n}" == "k" ]]; then
	rm -rf HyperUserge-UX
	git clone https://github.com/ashwinstr/UX-itachi.git
	cd HyperUserge-UX
	git pull
	git pull https://github.com/HyperNotShroudX97/HyperUserge-UX.git
	repo="HyperUserge-UX"
fi

if [[ "${u_n}" == "i" ]]; then
	rm -rf HyperUserge-UX
	git clone https://github.com/HyperNotShroudX97/HyperUserge-UX.git
	cd HyperUserge-UX
	git pull
	git pull https://github.com/code-rgb/USERGE-X.git
	repo="HyperUserge-UX"
fi

if [[ "${u_n}" == "g" ]]; then
        rm -rf MyGpack
        git clone https://github.com/HyperNotShroudX97/MyGpack.git
        cd MyGpack
        git pull
        git pull https://github.com/code-pms/MyGpack.git
        repo="MyGpack"
fi

echo " "
echo "Updating your ${repo} repo..."
echo " "

git add .
git commit -m "Windows/termux merge"
git push
git diff
echo " "
echo "Updated"
echo " "
cd ..
