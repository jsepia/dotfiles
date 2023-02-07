export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export SCREENDIR="$HOME/.screen"
export $(cat "$HOME/.env" | xargs)
