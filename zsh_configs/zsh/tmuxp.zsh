# autocomplete tmuxp conf files
compdef "_files -W ~/.tmuxp -/" l

l(){
    cd $(eval "sed -n 's|start_directory: ||p' ~/.tmuxp/$1")
    tmuxp load ~/.tmuxp/$1
}
