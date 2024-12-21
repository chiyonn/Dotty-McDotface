if [ -d "$HOME/.config/foot" ]; then
    mv $HOME/.config/foot $HOME/.config/foot.bk
    echo "Existing 'foot' directory was renamed to 'foot.bk'."
fi

ln -s $(pwd)/../foot $HOME/.config/
echo "Symbolic link to 'foot' has been created in '$HOME/.config/'."

