#!/bin/bash

set -eu

OUTPUT_DIR="assets/drawio"
mkdir -p "$OUTPUT_DIR"
rm -f $OUTPUT_DIR/*.svg

time docker pull rlespinasse/drawio-desktop-headless

for INPUT_FILE in assets/drawio/*.drawio; do
    # Extract tab names robustly using xmlstarlet (preferred)
    TAB_NAMES=($(xmlstarlet sel -t -v "//diagram/@name" "$INPUT_FILE"))

    # Count the number of tabs (pages)
    PAGE_COUNT=${#TAB_NAMES[@]}

    # Export each page separately
    for ((i = 0; i < PAGE_COUNT; i++)); do
        TAB_NAME="${TAB_NAMES[i]}"

        # Sanitize filename (remove spaces and special characters)
        SAFE_TAB_NAME=$(echo "$TAB_NAME" | tr ' ' '_' | tr -d '[:punct:]')

        # Define output filename
        OUTPUT_FILE="$OUTPUT_DIR/$(basename "$INPUT_FILE" .drawio)_${SAFE_TAB_NAME}.pdf"

        echo "$INPUT_FILE" - Page "$SAFE_TAB_NAME"

        # Export page with cropping enabled
        docker run --rm -v "$(pwd):/data" rlespinasse/drawio-desktop-headless -x -f pdf -p $i --crop -o /data/"$OUTPUT_FILE" /data/"$INPUT_FILE" >/dev/null

        inkscape "$OUTPUT_FILE" --pdf-poppler --export-plain-svg --export-type=svg 2>/dev/null

        rm -f "$OUTPUT_FILE"
    done
done

echo "Outputs:"
ls -l $OUTPUT_DIR/*.svg
