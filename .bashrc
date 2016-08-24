# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
### bundler
alias be="bundle exec"
alias berr="bundle exec rake routes"
alias bers="bundle exec rails s"

### docker
alias dps="docker ps -a"
alias dim="docker images"
alias drm="docker rm"
alias dac="docker attach"
alias dstart="docker start"
alias dstop="docker stop"
dexec() 
{
	docker exec -it $1 /bin/bash --login
}
