SOURCE="$HOME/Documents"
DEST="$HOME/Backups/Documents"

echo "Backing up $SOURCE to $DEST..."
mkdir -p "$DEST"
rsync -av --delete "$SOURCE/" "$DEST/"

echo "Backup completed"
