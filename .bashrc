# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
### git
unset SSH_ASKPASS

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
dcpupd()
{
	sudo docker-compose -f $1 up -d
}
dcpstop()
{
	sudo docker-compose -f $1 stop
}
dcprmf()
{
	sudo docker-compose -f $1 rm -f
}

### kubernetes
alias kgpods="kubectl get pods --all-namespaces"
alias kgpodsn="kubectl get pods --namespace"
alias kgserv="kubectl get services --all-namespaces"
alias kgservn="kubectl get services --namespace"
alias kgdep="kubectl get deployments --all-namespaces"
alias kgns="kubectl get namespaces"
