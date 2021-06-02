set -x PATH $PATH "$HOME/bin"
set -x PATH $PATH "/usr/sbin"
set -x PATH $PATH "$HOME/.local/bin"
set -x PATH $PATH "$HOME/.cargo/bin"
set -x PATH $PATH "$HOME/go/bin"
set -x EDITOR "/usr/bin/vim"

function fls
    ls -l | head -n 1
    ls -lh | sed -e '1d' | awk '{printf "%10s ", $5}
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
