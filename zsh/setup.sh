#!/bin/zsh

HERE=$(cd $(dirname $0); pwd)

create_symlink() {
    local source_path="$1"
    local target_path="$2"

    if [ -e "$target_path" ]; then
        echo "$target_path already exists. Override? (y/N): "
        read -r answer

        case "$answer" in
            [yY][eE][sS]|[yY])
                ln -sf "$source_path" "$target_path"
                echo "Symlink created: $target_path -> $source_path"
                ;;
            *)
                echo "Canceled."
                exit 0
                ;;
        esac
    else
        ln -sf "$source_path" "$target_path"
        echo "Symlink created: $target_path -> $source_path"
    fi
}

create_symlink "$HERE/zshrc" "$HOME/.zshrc"
create_symlink "$HERE/aliases" "$HOME/.aliases"
create_symlink "$HERE/zsh" "$HOME/.zsh"
