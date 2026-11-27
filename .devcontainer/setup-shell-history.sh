#!/bin/sh
# Point bash and zsh history at the /commandhistory volume so it survives rebuilds.
set -e

HIST_DIR=/commandhistory

# The volume is created root-owned; hand it to the current (remote) user.
sudo chown "$(id -u):$(id -g)" "$HIST_DIR"
touch "$HIST_DIR/.bash_history" "$HIST_DIR/.zsh_history"

cat >> "$HOME/.bashrc" <<EOF

# Persistent shell history (dev container)
export HISTFILE=$HIST_DIR/.bash_history
export PROMPT_COMMAND="history -a\${PROMPT_COMMAND:+; \$PROMPT_COMMAND}"
EOF

cat >> "$HOME/.zshrc" <<EOF

# Persistent shell history (dev container)
export HISTFILE=$HIST_DIR/.zsh_history
setopt INC_APPEND_HISTORY
EOF
