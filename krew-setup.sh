(
  set -x; cd "$(mktemp -d)" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/download/v0.4.4/krew-linux_amd64.tar.gz" &&
  tar zxvf krew-linux_amd64.tar.gz &&
  mv krew-linux_amd64 krew &&
  chmod +x krew &&
  ./krew install &&
  export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
  cp krew ~/.krew/bin/kubectl-krew
  exec bash
)
     
