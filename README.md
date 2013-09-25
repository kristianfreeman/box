A Vagrant configuration for my development setup

- Ubuntu "Precise" (12.04)
- Installs Ruby 2 and Rails
- Installs Sqlite and Postgres

All of this is configured by shell scripts in the `scripts` folder.
My personal development stuff is next. My `dotfiles` repo is cloned
and `vim` and `tmux` are installed.

You can stop this from happening by commenting out:

    config.vm.provision :shell, path: "scripts/personal.sh"

in the `Vagrantfile`. You'll still have an up-to-date Ruby server
ready-to-go, though you may need to tweak it to get it to your liking.
