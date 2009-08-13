#!/bin/bash

# saves all standard input to a file
cat > /tmp/screen_pbcopy_kludge_buffer

# uses osascript to set the MacOSX pastebaord to the contents of the file
/usr/bin/osascript -e 'tell application "System Events"' -e 'set the clipboard to (read posix file "/tmp/screen_pbcopy_kludge_buffer" as text)' -e 'end tell'

rm /tmp/screen_pbcopy_kludge_buffer
