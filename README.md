## dotfiles ##

This repo serves as a master collection of all my dotfiles. Each grouping has its own folder here. The install script will install all of the dotfiles in each folder to the home folder when run.

### Dependencies ###

Homebrew Install & dependencies:
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget
brew install python
brew install tmux
brew install node


Nothing, really. Some aliases might not work without certain things installed, but it'll be pretty obvious. My tmux settings require tmux (brew install tmux), and [bin files from James Tomasino](https://github.com/jamestomasino/bin) to be installed somewhere in the path. You probably want ruby 1.9.3+, python 2.7+, and php 5.4+ installed. Vim 7.4 too. 

### Install ###

From cloned git repo folder:

    $ ./install

### Update ###

From anywhere:

    $ shellupdate
   
### Credits ####

Most stuff is original, but a lot of the aliases and functions are ripped off from around the web. If you notice your idea in my repo somewhere and want credit, send me a note. Once I'm done rolling my eyes, I'll post a link or something.
