#!/usr/bin/env bash
set -e

# -------------------------------------------------
# Build script – Generates the print‑ready PDF
# -------------------------------------------------

# 1) Ensure we are in the repository root
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

# 2) Pull latest changes (if using a remote)
git pull

# 3) Open InDesign, load the document, run the export script
#    This example works on macOS with AppleScript.
#    Adjust the application name if you have a different version.

osascript <<EOF
tell application "Adobe InDesign 2024"
    activate
    open POSIX file "$REPO_ROOT/src/indesign/notebook.indd"
    do script "$REPO_ROOT/scripts/indesign-export.js" language javascript
    close active document saving no
end tell
EOF

# 4) Move the exported PDF to the output folder
mv ~/Desktop/notebook_print.pdf "$REPO_ROOT/output/notebook_print.pdf"

echo "✅ PDF generated at output/notebook_print.pdf"
