export TERM=linux
export KUBECONFIG=/etc/kubernetes/admin.conf
alias k="kubectl"
alias ll="ls -ltra"

rpm --quiet --query bash-completion || yum -q -y install bash-completion
rpm --quiet --query less || yum -q -y install less
source /usr/share/bash-completion/bash_completion
kubectl completion bash | sudo tee /etc/bash_completion.d/kubectl > /dev/null
complete -F __start_kubectl k
rpm --quiet --query tmux || yum -q -y install tmux
wget -nc -q -O /root/.tmux.conf https://raw.githubusercontent.com/apurvparekh30/tmux-conf/main/tmux.conf
wget -nc -q -O /root/.cloudsetup https://raw.githubusercontent.com/apurvparekh30/tmux-conf/main/cloudsetup
wget -nc -q -O /usr/bin/yq https://github.com/mikefarah/yq/releases/download/v4.25.3/yq_linux_amd64 && chmod +x /usr/bin/yq

