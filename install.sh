#!/bin/bash

# Script written by @anatolethien

echo -e '\n# Prompt\nfunction prompt() {\n\tPS1=" \\[\\e[1;36m\\]\\w\\[\\e[m\\]\\n `if [ \$? -eq 0 ]; then echo "\\[\\e[1;32m\\]"; else echo "\\[\\e[1;31m\\]"; fi`❱\\[\\e[m\\] ";\n}\nPROMPT_COMMAND=prompt' >> ~/.bashrc
source ~/.bashrc
