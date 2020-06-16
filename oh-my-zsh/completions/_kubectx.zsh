#compdef kubectx kctx=kubectx
# Source: https://github.com/ahmetb/kubectx/blob/master/completion/kubectx.zsh

local KUBECTX="${HOME}/.kube/kubectx"
PREV=""

local all_contexts="$(kubectl config get-contexts --output='name')"
if [ -f "$KUBECTX" ]; then
    # show '-' only if there's a saved previous context
    local PREV=$(cat "${KUBECTX}")

    _arguments \
      "-d:*: :(${all_contexts})" \
      "(- *): :(- ${all_contexts})"
else
    _arguments \
      "-d:*: :(${all_contexts})" \
      "(- *): :(${all_contexts})"
fi
