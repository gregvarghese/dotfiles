## dotfiles ##

This repo serves as a master collection of all my dotfiles. Each grouping has its own folder here. The install script will install all of the dotfiles in each folder to the home folder when run.

### Dependencies ###

Homebrew Install & dependencies:
    
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install wget python tmux node jq fzf
    brew install ffmpeg --with-libvpx
    npm install -g diff2html-cli
    pip install youtube_dl

Some aliases might not work without certain things installed, but it'll be pretty obvious. My tmux settings require tmux (brew install tmux), and [bin files from James Tomasino] (https://github.com/jamestomasino/bin) to be installed somewhere in the path. 

You probably want ruby 1.9.3+, python 2.7+, and php 7+, & Vim 7.4 installed.

### Install ###

From cloned git repo folder:

    $ ./install

### Update ###

From anywhere:

    $ shellupdate

### Credits ####

Most stuff is from [https://github.com/jamestomasino] (James Tomasino), but a lot of the aliases and functions are ripped off from around the web. 

# Function List

### Shortcut Functions ###

    cdf - Change directory to current finder window
    f - open current terminal directory in finder.
    ~ - Go home
    path - Echos all executable paths     
    z {Folder name} - Autocompletes path using the folder name. Learns as navigate using terminal. Type z and Doc and it will autocomplete to Document folder.
    extract - automatically unzips file based on extension.
    old {file name} - appends .old to the file name.
    battery - Outputs battery percentage left.
    flatten - Flattens files from subdirectories into current directory. If files already exist, you'll be prompted to decide if you want to overwrite or not.
    update - Updates brew, ruby, gisty, and pip
    zipf {folder} - Creates zip from folder
    tree - Generates a tree view from the current directory
    fext {extension} - Recursively searches for all files with the matching extension using the function findfilesbyextension
    dext  {extension} - Recursively deletes files with the specified extension using the function deletefilesbyextension
    .. - Up one directory
    ... - Up two directories
    .... - Up three directories
    ..... - Up four directories
    ...... - Up five directories
    up {#} - Pass # and it'll let you go up that number of directories (i.e. up 6)
    please - Run previous command as sudo
    pathadd - Add to path
    pathrm - Remove from path
    cls - Clears the screen followed by ls
    mkcd {Folder Name} - Make directory and cd into it
    l = ls -GFla

### Admin ###

    members - Outputs all members of admin group
    confirm - Prompts confirmation message before proceeding. Useful for embedding in other functions.
    systemupdate - updates the mac system, brew, and brew installed software
    update - Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
    hibernate - Ubuntu Only
    lock - locks the system when you're walking away

### Development ###

    server - spins up simple server in the current folder on terminal and opens in default browser
    phpserver - spins up simple server with php support
    netserver - spins up server with .NET support using mono
    cdfs - changes to current folder in finder and spins up simple server
    linkapache {source path} {name} - Assumes you have MAMP installed - creates a symlink for the source path with the name in the htdocs folder in MAMP's apache folder.
    imgsz {image filepath} - Returns height and width of image file.
    diff - generates side by side comparison of changes before committing

### Git ###

    lazygit "{Commit Message}" - My favorite shortcut for git. Adds all changes, commits it with the message you specify, and pushes to the current branch.
    gs - equivilant of git status
    gitexport - Creates an export from git without the git files. Useful for deployment or sending to a vendor.
    parse_git_branch - Return current git branch
    gitstaged - Return number of staged files in folder
    gitmodified - Return number of modified files in folder
    gituntracked - Return number of untracked files in folder
    gitpullall - Pulls all remotes
    gitoops - useful if you just pushed some code and realised you missed something
    gitsquash - squashes history

# Aliases

### General ###

    cleanup - Deletes .DS_Store and .thumbs files from current folder
    reload - reloads bash without exiting terminal
    shellupdate - updates dot files to latest

    emptytrash - Empties trash
    lock - locks computer
    ss - activates screensaver
    dext {file filename} - deletefilesbyextension
    fext {file extension} - findfilesbyextension
    f - opens current folder in finder window
    numFiles - Counts non-hidden files in folder
    cpu_hogs - displays applications with high CPU usage

    db - Switches to dropbox folder
    dl - Switches to downloads folder
    dt - Switches to desktop folder

### Clipboard ###

    pubkey - copies ssh key to clipboard
    cpwd - copies current path to clipboard
    c - Clears the clipboard of any new lines (\n)
    cl - Copy output of last command to clipboard
    cwd - Copies current terminal path to clipboard
    pubkey - Pipe public key to my clipboard.
    prikey - Pipe private key to my clipboard.

### Network ###

    myip - Public facing IP Address
    netCons - Show all open TCP/IP sockets
    flushDNS - Flush out the DNS Cache
    lsock - Display open sockets
    lsockU - Display only open UDP sockets
    lsockT - Display only open TCP sockets
    ipInfo0 - Get info on connections for en0
    ipInfo1 - Get info on connections for en1
    openPorts - All listening connections
    showBlocked - All ipfw rules inc/ blocked IPs
    httpstatuscode {url} - outputs http status code for url
    whois - Enhanced WHOIS lookups

### System ###

    usage - Grabs the disk usage in the current directory
    totalusage - Gets the total disk usage on your machine
    partusage - Shows the individual partition usages without the temporary memory values
    most - Gives you what is using the most space. Both directories and files. Varies on current directory
    show - Show hidden files in Finder
    hide - Hide hidden files in Finder
    hidedesktop - Hide all desktop icons (useful when presenting)
    showdesktop - Show all desktop icons (useful when presenting)
    cleanupLS - Clean up LaunchServices to remove duplicates in the "Open With" menu

    stfu - mutes volume
    pumpitup - max volume (7) when you need to drown out everything
    headphone - sets volume to 4 which is my personal preference  

### Development ###
    apacheEdit - Edit httpd.conf
    apacheRestart - Restart Apache
    editHosts - Edit /etc/hosts file
    herr - Tails HTTP error logs
    apacheLogs - Shows apache error logs
    httpHeaders - Grabs headers from web page
    urlencode - URL-encode strings

 Assumes you have the required browsers installed (or you get a file not found error):
    
    ff - Opens a new instance of Firefox for development testing
    chrome - Opens a new instance of Chrome for development testing
    opera - Opens a new instance of opera for development testing

### Internet Services ###

Shortcuts to various internet services

    getmp3 - Pass in the youtube URL and youtube-dl will download the mp3
    hibp - Pass e-mail see if email is in the Have I Been Pwned database

 
