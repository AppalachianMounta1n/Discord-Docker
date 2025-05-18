#!/bin/bash

# Determine which Discord binary is available
DISCORD_BIN=""
if command -v /usr/bin/discord &> /dev/null; then
    DISCORD_BIN="/usr/bin/discord"
elif command -v /usr/bin/discord-ptb &> /dev/null; then
    DISCORD_BIN="/usr/bin/discord-ptb"
else
    echo "Error: No Discord binary found."
    exit 1
fi

# Start Discord as the 'discord' user
exec su discord -c "$DISCORD_BIN"