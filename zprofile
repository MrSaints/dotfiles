export BROWSER=google-chrome-beta

export PATH="$HOME/.cargo/bin:$PATH"

export TERM="termite"

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi
