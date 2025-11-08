if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # Greetings
    function fish_greeting
        echo -e "\e[38;5;85mGreetings sire! Your stronghold awaits you.\e[0m"
    end

    # force longer pwd length
    set -g fish_prompt_pwd_dir_length 80

    # bash-like prompt
    function fish_prompt
        # show error code
        set -l last_status $status
        set -l stat
        if test $last_status -ne 0
            set stat (set_color red)"<$last_status>"(set_color normal)
        end
        echo (set_color --bold green)(whoami)@(hostname)(set_color normal):(set_color --bold blue)(prompt_pwd)"$stat"(set_color normal)"\$ "
    end

    # Fish git prompt
    set -g __fish_git_prompt_showupstream auto

    function fish_right_prompt
        echo (fish_git_prompt)
    end
end

alias shutdown='systemctl poweroff'
alias suspend='systemctl suspend'
alias hibernate='systemctl hibernate'
alias reboot='systemctl reboot'

# nvidia
function nvlimit --description "nvlimit <max_gpu_clocks> <max_memory_clocks>"
    sudo nvidia-smi -pm 1
    sudo nvidia-smi -lgc 0,$argv[1]
    sudo nvidia-smi -lmc 0,$argv[2]
end
alias nvdmon='nvidia-smi dmon --select=mpc'

# swanctl
alias swanup='sudo swanctl --initiate -c nord -i'
alias swandown='sudo swanctl --terminate -i'
alias swanrestart='sudo service strongswan restart'
alias swanls='sudo swanctl --list-sas'
alias swanping='sudo python3 ~/.config/fish/functions/ping_swanctl_conns.py'
alias swanbest="sudo python3 ~/.config/fish/functions/ping_swanctl_conns.py | awk '{ if (NR==1) print \$1 }'"
alias swanupbest='swanup (swanbest)'

alias git-revert-perm='git diff -p -R --no-color | grep -E "^(diff|(old|new) mode)" --color=never | git apply'
alias check-CRLf='find . -type f -exec file {} \; | grep CRLF'
alias list-empty-folder='find . -type d -empty -print'
alias delete-empty-folder='find . -type d -empty -print -delete'
