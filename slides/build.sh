#!/usr/bin/env bash

set -eu
shopt -s nullglob

cd "$(dirname "$0")"

REVEALMD_FLAGS="--scripts assets/heti.js,assets/heti_worker.js --template assets/template.html --assets-dir assets"
DIST_DIR=${DIST_DIR:-dist}
CHROME_PATH=${CHROME_PATH:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}

help() {
    echo "Usage:"
    echo "  $0 <sub_dir>        # to live preview (e.g. ./build.sh test)"
    echo "  $0 build <sub_dir>  # to build a document (e.g. ./build.sh build test)"
    echo "  $0 build            # to build all documents"
    echo "  $0 pdf <sub_dir>    # to export a document to PDF (e.g. ./build.sh pdf test)"
    echo "  $0 pdf              # to export all documents to PDF"
    exit 1
}

file_check() {
    # Check if file exists
    local target="$1"
    local md_file=""

    if [ -d "$1" ]; then
        md_file="$target/index.md"
        if [ ! -f "$md_file" ]; then
            echo "File not found: $md_file"
            help
        fi

    elif [ -f "$target" ]; then
        if [[ "$target" != *.md ]]; then
            echo "Unsupported file format(only .md or dir can be accepted): $target"
            help
        fi
        md_file="$target"
    else
        echo "Target not found: $target"
        help
    fi

    export CHECKED_MD_FILE="$md_file"
    export CHECKED_DIR=$(dirname "$md_file")
    export DOC_NAME=$(basename "$CHECKED_DIR")
}

live() {
    echo "Live preview of $1"

    reveal-md "$CHECKED_MD_FILE" -w $REVEALMD_FLAGS
}

build() {
    echo "Building $1"

    reveal-md "$CHECKED_MD_FILE" $REVEALMD_FLAGS --static "$DIST_DIR/$DOC_NAME"
    cp -rp "$CHECKED_DIR/"* "$DIST_DIR/$DOC_NAME/"
    rm -rf "$DIST_DIR/$DOC_NAME/index.md"
}

pdf() {
    echo "Exporting $1 to PDF"

    mkdir -p "$DIST_DIR/pdf"
    reveal-md "$CHECKED_MD_FILE" $REVEALMD_FLAGS \
        --puppeteer-chromium-executable "$CHROME_PATH" \
        --print "$DIST_DIR/pdf/$DOC_NAME.pdf"
}

if [ "$1" == "build" ] || [ "$1" == "pdf" ]; then
    action="$1"
    if [ $# -lt 2 ]; then
        echo "Running $action for all documents"
        for dir in */; do
            if [ "$dir" = "$DIST_DIR/" ] || [ "$dir" = "assets/" ]; then
                continue
            fi
            if [ -f "$dir/index.md" ]; then
                file_check "$dir"
                "$action" "$dir"
            else
                echo "Escape sub_dir $dir: index.md not found"
            fi
        done
    else
        file_check $2
        "$action" $2
    fi
else
    file_check $1
    live $1
fi
