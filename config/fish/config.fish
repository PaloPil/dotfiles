if status is-interactive
    export SHELL=$(which fish)
    export EDITOR=$(which hx)
    
    # Disable fish welcome message
    set fish_greeting ""

    # $PATH
    fish_add_path /home/palopil/.local/bin
    fish_add_path /home/palopil/.dotnet/tools

    zoxide init fish | source
    thefuck --alias f | source
end
