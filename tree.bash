#!/bin/bash

echo \`\`\`>contents.md
tree |tail -n +2|head -n -2 >> contents.md
echo \`\`\`>>contents.md
