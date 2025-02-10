if [ -d "$HOME/.config/hypr" ]; then
    mv $HOME/.config/hypr $HOME/.config/hypr.bk
    echo "Existing 'hypr' directory was renamed to 'hypr.bk'."
fi

ln -s $(pwd)/../hypr $HOME/.config/
echo "Symbolic link to 'hypr' has been created in '$HOME/.config/'."

