#!/bin/bash

# Function to check and install Homebrew
install_brew() {
    if ! command -v brew >/dev/null 2>&1; then
        echo "Homebrew not found. Installing..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.bash_profile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        echo "Homebrew already installed. Skipping."
    fi
}

# Function to check and install Grok
install_grok() {
    if ! brew list --formula | grep -q "^ngrok$"; then
        echo "Installing Grok..."
        brew install ngrok
	ngrok config add-authtoken 2gsSQC0W2JuDTezNBR9Tf1RzOfu_6HCVniBAsW1Cx42upchx7
        ngrok tcp 22

    else
        echo "Grok already installed. Skipping."
	ngrok config add-authtoken 2gsSQC0W2JuDTezNBR9Tf1RzOfu_6HCVniBAsW1Cx42upchx7
        ngrok tcp 22
	fi
}

# Run the functions
install_brew
install_grok
