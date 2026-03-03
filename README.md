## dotfiles

Personal dotfiles for **zsh** + **Oh My Zsh** on macOS. The install script symlinks everything into your home directory, installs Oh My Zsh, Homebrew, CLI tools, and applications.

### Requirements

- macOS with zsh as default shell (Catalina+)
- Git

### Install

Clone the repo and run:

    git clone https://github.com/your-username/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ./install

The install script will:

1. Symlink all dotfiles to `~/`
2. Install [Homebrew](https://brew.sh/) (if not already installed)
3. Install CLI tools and applications via Homebrew
4. Install [Oh My Zsh](https://ohmyz.sh/) (if not already installed)
5. Install vim-plug and tmux plugin manager
6. Set up FZF keybindings

### Update

From anywhere:

    shellupdate

---

## What Gets Installed

### CLI Tools

| Tool | Description |
|---|---|
| `wget` / `curl` | File downloads and HTTP requests |
| `git` | Version control |
| `tmux` | Terminal multiplexer |
| `node` | Node.js runtime |
| `jq` | JSON processor |
| `fzf` | Fuzzy finder |
| `tree` | Directory tree viewer |
| `python3` | Python runtime |
| `mas` | Mac App Store CLI |
| `pngcrush` | PNG optimizer |
| `ffmpeg` | Video/audio processing |
| `ripgrep` | Fast recursive search (`rg`) |
| `fd` | Modern `find` replacement |
| `bat` | `cat` with syntax highlighting (aliased to `cat`) |
| `eza` | Modern `ls` with git integration (aliased to `ls`) |
| `htop` | Interactive process viewer |
| `gh` | GitHub CLI |
| `zoxide` | Smarter `cd` with frecency |
| `httpie` | Friendlier `curl` for APIs |
| `diff-so-fancy` | Better git diff output (auto-configured as git pager) |
| `coreutils` | GNU core utilities |

### Applications

#### Browsers
| App | Install method |
|---|---|
| Firefox | `brew --cask` |
| Vivaldi | `brew --cask` |
| Arc | `brew --cask` |
| Dia Browser | Direct DMG download |

#### Development
| App | Install method |
|---|---|
| VS Code | `brew --cask` |
| BBEdit | `brew --cask` |
| Docker | `brew --cask` |
| JetBrains Toolbox | `brew --cask` |
| Postman | `brew --cask` |
| iTerm2 | `brew --cask` |
| Warp | `brew --cask` |
| ngrok | `brew --cask` |

#### Laravel / PHP
| App | Install method |
|---|---|
| Laravel Herd | `brew --cask` |
| Tinkerwell | `brew --cask` |
| Ray | `brew --cask` |

#### AI
| App | Install method |
|---|---|
| Claude | `brew --cask` |
| Claude Code CLI | `brew --cask` |
| ChatGPT | `brew --cask` |
| Codex (OpenAI) | `brew --cask` |

#### Utilities
| App | Install method |
|---|---|
| 1Password | `brew --cask` |
| VLC | `brew --cask` |
| Rambox | `brew --cask` |
| Slack | `brew --cask` |
| Alfred | `brew --cask` |
| JDownloader | `brew --cask` |
| Rectangle | `brew --cask` |
| The Unarchiver | `brew --cask` |
| ImageOptim | `brew --cask` |
| Notion | `brew --cask` |
| Zoom | `brew --cask` |
| FileZilla | Direct tar.bz2 download (no bundleware) |

---

## Oh My Zsh Plugins

| Plugin | What it provides |
|---|---|
| `git` | Git aliases and completions (`gst`, `gco`, `gcb`, etc.) |
| `z` | Frecency-based directory jumping |
| `fzf` | Fuzzy finder integration |
| `macos` | macOS utilities (`ofd`, `cdf`, `quick-look`, etc.) |
| `docker` | Docker completions and aliases |
| `docker-compose` | Docker Compose aliases (`dco`, `dcup`, `dcdown`) |
| `composer` | Composer aliases (`c`, `csu`, `ci`, `cr`) |
| `laravel` | Laravel Artisan aliases |
| `npm` | npm completions and aliases |
| `nvm` | Node version manager completions |
| `extract` | Extract any archive with `extract <file>` |
| `web-search` | Search from terminal (`google "query"`, `ddg "query"`) |
| `sudo` | Press `Esc` twice to prepend `sudo` to current command |
| `copypath` | Copy current directory path to clipboard |
| `copyfile` | Copy file contents to clipboard |
| `history` | History search aliases (`h`, `hs`, `hsi`) |
| `jsontools` | JSON utilities (`pp_json`, `is_json`, etc.) |

---

## Shell Integration

The `.zshrc` automatically configures these tools when detected:

| Tool | Integration |
|---|---|
| `bat` | Aliased to `cat` with syntax highlighting |
| `eza` | Aliased to `ls`, `l`, `ll`, `la` with `--git` flag |
| `zoxide` | Initialized for smarter `cd` / `z` jumping |
| `diff-so-fancy` | Configured as git pager for better diffs |

---

## Structure

```
zsh/
├── .zshrc          # Main zsh config (Oh My Zsh, plugins, sources everything)
├── .environment    # Environment variables, PATH, zsh options
├── .alias          # All aliases
├── .functions      # Shell functions
├── .platform       # Platform-specific settings (macOS/Linux/Cygwin)
├── .scripts        # Additional scripts
├── .tmux.conf      # Tmux configuration
├── .inputrc        # Readline config (for bash fallback)
└── ...             # Other dotfiles (.ctags, .jshintrc, etc.)
```

---

## Function Reference

### Navigation

| Function | Description |
|---|---|
| `cdf` | cd to directory of front Finder window |
| `cdroot` | Jump to root of current git repo |
| `cdfs` | cd to Finder window and start a server |
| `mkcd <dir>` | Create directory and cd into it |
| `up <n>` | Go up `n` directories |
| `fd` | Fuzzy find and cd to a directory |
| `fda` | Fuzzy find directories (including hidden) |
| `z <query>` | Jump to frecent directory (fzf-enhanced) |

### File Management

| Function | Description |
|---|---|
| `tre` | Pretty `tree` ignoring `.git`, `node_modules`, etc. |
| `swap <f1> <f2>` | Swap two filenames |
| `old <file>` | Rename file to `file.old` |
| `flatten` | Move all files from subdirectories into current directory (prompts on conflict) |
| `flatteni` | Flatten without overwrite (skip existing) |
| `zipf <folder>` | Create a zip archive of a folder |
| `fs [files]` | Show human-readable file/directory sizes |
| `sizeof <path>` | Total size of a file or directory |
| `crushpng` | Crush all PNGs in current directory |
| `fext <ext>` | Find files by extension recursively |
| `dext <ext>` | Delete files by extension recursively (with confirmation) |
| `append <str>` | Append string to all filenames in directory |
| `prepend <str>` | Prepend string to all filenames in directory |
| `lowercasefilenames` | Lowercase all filenames recursively |
| `replacespacewithhyphen` | Replace spaces with hyphens in filenames |

### Development

| Function | Description |
|---|---|
| `server [port]` | Start Python 3 HTTP server (default: 8000) and open browser |
| `pserve [port]` | Start PHP dev server and open browser |
| `phpserver [port]` | PHP server bound to local IP |
| `scratch` | Create a temp directory and cd into it |
| `cdiff <f1> <f2>` | Unified diff in less |
| `json` | Format and highlight JSON |
| `dataurl <file>` | Create a data URL from a file |
| `fe [pattern]` | Fuzzy find and open file in editor |
| `port <num>` | Check what's listening on a port |
| `killport <num>` | Kill whatever's running on a port |
| `retry <n> <delay> <cmd>` | Retry a command `n` times with `delay` seconds between |

### Git

| Function | Description |
|---|---|
| `lazygit "<msg>"` | Add all, commit, and push in one shot |
| `repo` | Open current git repo's remote URL in browser |
| `flog` | Interactive git log browser with fzf |
| `gitexport <dir>` | Export repo without `.git` |
| `gitinit <remote>` | Init repo, first commit, push to remote |
| `gitpullall` | Pull all remotes for all branches |
| `gitoops` | Amend last commit and force-push with lease |
| `gitsquash <n>` | Squash last `n` commits |
| `gittreestatus` | Show git status for all subdirectories |
| `gitlie <date>` | Set commit date (use `gitlie not` to unset) |
| `gilaravel` | Generate Laravel `.gitignore` |

### Docker

| Function | Description |
|---|---|
| `dsh <container>` | Shell into a running container (tries zsh/bash/sh) |
| `dlogs <container>` | Follow container logs (last 100 lines) |
| `dclean` | Prune all stopped containers, images, and volumes |

### Utilities

| Function | Description |
|---|---|
| `topcmd [n]` | Show your `n` most-used shell commands |
| `b64e <string>` | Base64 encode |
| `b64d <string>` | Base64 decode |
| `genpass [len]` | Generate random password (default: 32 chars) |
| `wttr [city]` | Weather in terminal |
| `battery` | Show battery percentage |
| `hr [char]` | Print horizontal rule across terminal |
| `todo -a <text>` | Add to todo list |
| `todo -d <n>` | Delete from todo list |
| `todos` | Find TODO/FIXME comments in current git project |
| `confirm <msg>` | Prompt yes/no confirmation |
| `latencyavg <n> <url>` | Average latency over `n` requests |

### Laravel

| Function | Description |
|---|---|
| `newspark` | Scaffold a new Laravel Spark project |
| `newlaravel <name>` | Scaffold a new Laravel project with common packages |
| `mcr <model>` | `php artisan make:model -a` |

---

## Alias Reference

### Navigation & Shell

| Alias | Command |
|---|---|
| `..` through `......` | Navigate up 1-5 directories |
| `~` | Go home |
| `reload` | Re-source `.zshrc` and clear |
| `cls` | Clear and ls |
| `path` | Print PATH entries, one per line |
| `show_options` | Display zsh options |
| `l` | `eza -lah --git` (or `ls -GFla` without eza) |
| `ll` | `eza -lh --git` (or `ls -lh`) |
| `la` | `eza -lah --git` (or `ls -lAh`) |
| `cat` | `bat --paging=never` (when bat is installed) |

### Git

| Alias | Command |
|---|---|
| `gs` | `git status` |
| `gb` | `git branch` |
| `gp` | `git pull` |
| `gap` | `git add -p` |
| `nah` | `git reset --hard && git clean -df` |

### Laravel / PHP

| Alias | Command |
|---|---|
| `art` | `php artisan` |
| `pam` | `php artisan migrate` |
| `serve` | `php artisan serve` |
| `tinker` | `artisan tinker` |
| `ci` | `composer install` |
| `cu` | `composer update` |
| `cr` | `composer require` |
| `cda` | `composer dump-autoload -o` |

### npm

| Alias | Command |
|---|---|
| `npmd` | `npm run dev` |
| `npmp` | `npm run production` |
| `npmw` | `npm run watch` |

### Network

| Alias | Command |
|---|---|
| `ip` | Public IP address |
| `iplocal` | Local IP address |
| `flushdns` | Flush DNS cache |
| `openPorts` | All listening connections |
| `sniff` | Watch HTTP traffic on en1 |

### macOS

| Alias | Command |
|---|---|
| `show` / `hide` | Show/hide hidden files in Finder |
| `showdesktop` / `hidedesktop` | Show/hide desktop icons |
| `emptytrash` | Empty all trash |
| `stfu` | Mute volume |
| `pumpitup` | Max volume |
| `lock` | Lock the screen |
| `cleanup` | Remove `.DS_Store` and `Thumbs.db` files |

### Clipboard

| Alias | Command |
|---|---|
| `pubkey` | Copy SSH public key to clipboard |
| `cpwd` | Copy current path to clipboard |
| `cl` | Copy last command output to clipboard |

---

## Credits

Most stuff is from [James Tomasino](https://github.com/jamestomasino), but many aliases and functions are collected from around the web.
