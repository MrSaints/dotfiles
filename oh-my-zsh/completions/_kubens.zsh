#compdef kubens kns=kubens
# Source: https://github.com/ahmetb/kubectx/blob/master/completion/kubens.zsh
_arguments "1: :(- $(kubectl get namespaces -o=jsonpath='{range .items[*].metadata.name}{@}{"\n"}{end}'))"
