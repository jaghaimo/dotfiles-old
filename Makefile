.PHONY: help
help: Makefile
	@echo "Please use one of the following:"
	@sed -n 's/^##//p' $<

## backup		: Backup existing configuration files
.PHONY: backup
backup:
	cp ~/.gitconfig dotfiles/
	cp ~/.gitignore dotfiles/
	cp ~/.local/bin/* dotfiles/.local/bin/
	cp ~/.p10k.zsh dotfiles/
	cp ~/.profile dotfiles/
	cp ~/.ssh/authorized_keys dotfiles/.ssh
	cp ~/.ssh/config dotfiles/.ssh
	cp ~/.tmux.conf dotfiles/
	cp ~/.zshrc dotfiles/

## install	: Install new configuration files
.PHONY: install
install:
	mkdir -p ~/.local/share/nvim/backup
	rsync -r dotfiles/ ~
