
PURPLE="\e[35m"
RESET="\e[0m"

echo -e "${PURPLE}🌌 Installing dotfiles into ~/.config...${RESET}"

SRC_DIR="$(pwd)"
DEST_DIR="$HOME/.config"

for dir in */; do
    folder="${dir%/}"

    if [[ -d "$folder" && "$folder" != .* ]]; then
        echo -e "${PURPLE}📁 Copying $folder to $DEST_DIR/$folder${RESET}"

        rm -rf "$DEST_DIR/$folder"

        cp -r "$SRC_DIR/$folder" "$DEST_DIR/$folder"
    fi
done

echo -e "${PURPLE}✅ All configs have been copied!${RESET}"
