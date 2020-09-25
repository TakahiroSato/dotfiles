set -x PATH $PATH "$HOME/bin"
set -x PATH $PATH "/usr/sbin"
set -x PATH $PATH "$HOME/.local/bin"
set -x PATH $PATH "$HOME/.cargo/bin"
set -x EDITOR "/usr/bin/vim"

function fls
    ls -l | head -n 1
    ls -l | sed -e '1d' | awk '{printf "%10.2f[MB] ", $5/(1024*1024)}
                               { printf "%3s ", $6}{ printf "%2d ", $7 }
                               { printf "%5s ", $8 }
                               {
                                    for(i=9; i<=NF; i++){
                                        printf $i
                                        printf " "
                                    }
                                    printf "\n"
                               }'
end
