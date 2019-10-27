# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
## for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
for file in ~/.{path,bash_prompt,exports,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
## shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
## shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
## for option in autocd globstar; do
## 	shopt -s "$option" 2> /dev/null;
## done;

# Add tab completion for many Bash commands
## if which brew &> /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
## 	source "$(brew --prefix)/share/bash-completion/bash_completion";
## elif [ -f /etc/bash_completion ]; then
## 	source /etc/bash_completion;
## fi;

# Enable tab completion for `g` by marking it as an alias for `git`
## if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
## 	complete -o default -o nospace -F _git g;
## fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
## [ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
## complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
## complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# a serious approach to command line
set -o vi

# cargo for rust
export PATH="$HOME/.cargo/bin:$PATH"

# python
#export PATH="/usr/local/Cellar/python3/3.6.3/bin:$PATH"

# Virtual Environment Wrapper
#VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#VIRTUALENVWRAPPER_PYTHON=/usr/local/Cellar/python3/3.6.3/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh

# cowsay all the way
if [ -x /usr/local/bin/cowsay -a -x /usr/local/bin/fortune -a -x /usr/local/bin/lolcat ]; then
    fortune | cowsay -f tux | lolcat
fi

# lein for clojure
export PATH="$HOME/bin/lein:$PATH"

# /usr/local/bin ahead of /Users/michael/.rbenv/shims for chromedriver to work
#export PATH="/usr/local/bin:$PATH"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
#export PATH

# lolcommits are even better in a web page
alias lols='ls -t ~/.lolcommits/**/*.gif | sed "s/^/<img src=\"/" | sed "s/$/\">/" > ~/temp_lolcommitters.html && open ~/temp_lolcommitters.html'
alias lolsrod='ls -t ~/.lolcommits/republic-of-data/*.gif | sed "s/^/<img src=\"/" | sed "s/$/\">/" > ~/temp_lolcommitters.html && open ~/temp_lolcommitters.html'
