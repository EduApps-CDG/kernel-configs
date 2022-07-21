# Contributing:
Implement our database by forking this repo, clone and so:

### Using Android (Termux and root)
```sh
cp /proc/config.gz "android/$(getprop | grep -i ro.product.model | sed "s/\[ro.product.model\]: //" | sed "s/\[//" | sed "s/\]//").gz"
```

### Using Desktop
```sh
cp -v /boot/config-$(uname -r)
```

Then, upload the file in a new pull request.
