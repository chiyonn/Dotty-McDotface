if [ -d "$HOME/.config/sway" ]; then
    mv $HOME/.config/sway $HOME/.config/sway.bk
    echo "Existing 'sway' directory was renamed to 'sway.bk'."
fi

ln -s $(pwd)/../sway $HOME/.config/
echo "Symbolic link to 'sway' has been created in '$HOME/.config/'."

