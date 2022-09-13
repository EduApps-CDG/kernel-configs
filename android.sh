echo -e "\033[0;33mNote that you need \033[107;32mgit\033[0;33m and \033[107;32mhub\033[0;33m to work\033[0;0m"

# clone the project
git clone git@github.com:EduApps-CDG/kernel-configs.git

# move to project
cd kernel-configs

# turn the clone a fork
hub fork --remote-name=origin

#copy /proc/config.gz into ./android/[your device].gz
cp /proc/config.gz "android/$(getprop | grep -i ro.product.model | sed "s/\[ro.product.model\]: //" | sed "s/\[//" | sed "s/\]//").gz"

#push to [your device]
git push origin "$(getprop | grep -i ro.product.model | sed "s/\[ro.product.model\]: //" | sed "s/\[//" | sed "s/\]//")"

#create a pull request
hub pull-request

echo -e "\033[0;33mAll Done!\033[0;0m"
