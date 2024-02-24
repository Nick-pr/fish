function fish_prompt --description 'Informative prompt'
    
    #Save the return status of the previous command
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -g __fish_git_prompt_showcolorhints 1
    set -g __fish_git_prompt_color_branch brmagenta

    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color --bold $fish_color_status)
    set -l pipestatus_string (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)

    printf '(%s%s%s)%s\n 󰘍 ' (set_color $fish_color_cwd) (prompt_pwd --dir-length=0) (set_color normal) (fish_git_prompt)
end

function handler --on-event fish_prompt
    #New line before each draw of the prompt
    echo
end

