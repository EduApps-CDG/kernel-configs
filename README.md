# kernel-configs
A database of configs for building the [Kernel](https://kernel.org).
specified on [my tutorial](https://gist.github.com/EduApps-CDG/733e29c28dd53e91128d384c2e879397). This is also a way for building Android custom ROMs.

## Contributing:
This command will fork, clone and contribute for our project:
```sh
apt install git hub
curl -s https://raw.githubusercontent.com/EduApps-CDG/kernel-configs/master/android.sh | bash -s --
```

### Using Desktop
```sh
cp -v /boot/config-$(uname -r)
```

Then, upload the file in a new pull request.
