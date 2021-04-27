# update script of userbot by AshSTR

cd ..

echo " "
echo """###You're running the USERGE-X update script.###"""
echo " "

#get username of user
echo -n "HyperUserge-UX Or HyperTerminator-X Or HTX_Pack Repo? (H)/(I)/(M): "
read u_n

if [[ "${u_n}" == "H" ]]; then
	rm -rf HyperUserge-UX
	git clone https://github.com/HyperNotShroudX97/HyperTerminator-X.git
	cd HyperTerminator-X
	git pull
	git pull https://github.com/HyperNotShroudX97/HyperUserge-UX.git
	repo="HyperTerminator-X"
fi

if [[ "${u_n}" == "H" ]]; then
	rm -rf HyperUserge-UX
	git clone https://github.com/HyperNotShroudX97/HyperUserge-UX.git
	cd HyperUserge-UX
	git pull
	git pull https://github.com/code-rgb/USERGE-X.git
	repo="HyperUserge-UX"
fi

if [[ "${u_n}" == "H" ]]; then
        rm -rf MyGpack
        git clone https://github.com/HyperNotShroudX97/HTX_Pack.git
        cd MyGpack
        git pull
        git pull https://github.com/code-pms/MyGpack.git
        repo="HTX_Pack"
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
