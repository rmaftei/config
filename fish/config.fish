# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set PATH /home/romeo/.sdkman/candidates/scala/current/bin $PATH
set PATH /usr/local/go/bin $PATH

function fish_prompt
    switch (pwd) 
        case $HOME
            echo ➜ '' \~ ''
        case '*'
            echo ➜ '' (basename (pwd)) ''
    end
end


