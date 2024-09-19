# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/.local/bin:$HOME/bin:~/bin

export PATH

# Source .shell_prompt 
. ~/.shell_prompt


# Source .alias
. ~/.alias


# Source .library.sh

. ~/.library.sh

