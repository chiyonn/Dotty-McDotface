if [ -d "$HOME/.config/waybar" ]; then
    mv $HOME/.config/waybar $HOME/.config/waybar.bk
    echo "Existing 'waybar' directory was renamed to 'waybar.bk'."
fi

ln -s $(pwd)/../waybar $HOME/.config/
echo "Symbolic link to 'waybar' has been created in '$HOME/.config/'."

