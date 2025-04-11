#!/bin/bash

mkdir -p "$HOME/.ssh/config.d"
if [ ! -f "$HOME/.ssh/config" ]; then
    touch "$HOME/.ssh/config"
fi
if ! grep -q "Include config.d/\*.conf" "$HOME/.ssh/config"; then
    {
        printf "Include config.d/*.conf\n\n"
        cat "$HOME/.ssh/config"
    } > "$HOME/.ssh/config.tmp" && mv "$HOME/.ssh/config.tmp" "$HOME/.ssh/config"
fi
