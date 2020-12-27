# kernel-configs
A database of configs for building the [Kernel](kernel.org).
specified on [my tutorial](https://gist.github.com/EduApps-CDG/733e29c28dd53e91128d384c2e879397). This is also a way for building Android custom ROMs.

## Add a device:
Implement our database by forking this repo, clone and so:

### Using Android (Termux and root)
```sh
cp /proc/config.gz "android/$(getprop | grep -i ro.product.model | sed "s/\[ro.product.model\]: //" | sed "s/\[//" | sed "s/\]//").gz"
```

### Using Desktop
```sh
cp -v /boot/config-$(uname -r)
