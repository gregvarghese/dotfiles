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

# Function List

### Shortcut Functions ###

    cdf - Change directory to finder window
    z {Folder name} - Autocompletes path using the folder name. Learns as navigate using terminal. Type z and Doc and it will autocomplete to Document folder.
    extract - automatically unzips file based on extension.
    old {file name} - appends .old to the file name.
    battery - Outputs battery percentage left.
    flatten - Flattens files from subdirectories into current directory. If files already exist, you'll be prompted to decide if you want to overwrite or not. 
    update - Updates brew, ruby, gisty, and pip
    zipf {folder} - Creates zip from folder
    tree - Generates a tree view from the current directory
    findfilesbyextension {extension} - Recursively searches for all files with the matching extension
    deletefilesbyextension {extension} - Recursively deletes files with the specified extension

### Admin ###

    members - Outputs all members of admin group
    confirm - Prompts confirmation message before proceeding. Useful for embedding in other functions.

### Development ###

    server - spins up simple server in the current folder on terminal and opens in default browser
    phpserver - spins up simple server with php support
    netserver - spins up server with .NET support using mono
    cdfs - changes to current folder in finder and spins up simple server 
    linkapache {source path} {name} - Assumes you have MAMP installed - creates a symlink for the source path with the name in the htdocs folder in MAMP's apache folder.


### Git ###

    lazygit "{Commit Message}" - My favorite shortcut for git. Adds all changes, commits it with the message you specify, and pushes to the current branch.
    gitexport - Creates an export from git without the git files. Useful for deployment or sending to a vendor.
    parse_git_branch - Return current git branch
    gitstaged - Return number of staged files in folder
    gitmodified - Return number of modified files in folder
    gituntracked - Return number of untracked files in folder
    gitpullall - Pulls all remotes

# Aliases

### General ###

    cleanup - Deletes .DS_Store and .thumbs files from current folder
    reload - reloads bash without exiting terminal
    pubkey - copies ssh key to clipboard
    cpwd - copies current path to clipboard
    emptytrash - Empties trash 
    lock - locks computer
    ss - activates screensaver
    dext - deletefilesbyextension
    fext - findfilesbyextension
    f - opens current folder in finder window
    numFiles - Counts non-hidden files in folder
    cpu_hogs - displays applications with high CPU usage
    myip - Returns your public IP address
    ipInfo0 - Get info on connections for en0
    ipInfo1 - Get info on connections for en1
    httpstatuscode {url} - outputs http status code for url

 Assumes you have the browsers installed:
    ff - Opens a new instance of Firefox for development testing
    chrome - Opens a new instance of Chrome for development testing
    opera - Opens a new instance of opera for development testing 