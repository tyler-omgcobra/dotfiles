# Dot Files

## Install Instructions

1. Fork the repository
2. git clone the forked repo into `~/dotfiles`
3. Modify `.gitconfig` to match your user information (username, email, name) and commit the change to your forked repo
4. `cd ~/dotfiles`
5. `./sync`, this will symlink files to your home directory
6. Add the following line to your .bashrc/.zshrc: `source ~/.git-completion.bash`
7. Add the following line to your .bashrc/.zshrc: `source ~/.git-prompt.sh`
8. Consider changing your PS1 to also show the current branch. See (git-prompt.sh)[https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh] for details
9. Enjoy!
