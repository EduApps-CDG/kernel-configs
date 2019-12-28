# kernel-configs
A database of configs for building the [Kernel](kernel.org).
specified on [my tutorial](https://gist.github.com/EduApps-CDG/733e29c28dd53e91128d384c2e879397)

## Add a device:

### Using Android (Termux and root)
```sh
# clone the project
git clone https://github.com/EduApps-CDG/kernel-configs

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
```
