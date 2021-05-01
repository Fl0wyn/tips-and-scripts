#!/bin/bash

function extractReadme() {
    listScripts() {
        echo -e "\n### $1 ([list](${1}.md))" >>README.md
        for i in $(find $1 -type f -name '*.*' | sed '/:/d;/^$/d'); do
            filtre=$(echo "$i" | cut -d/ -f2 | sed 's/_/ /g;s/.sh\|.js//g;s/^./\u&/')
            echo "- [$filtre]($i)" >>README.md
        done
    }

    listScripts BASH
    listScripts JavaScript

    sed -i '1i\# Tips and Scripts' README.md
}

function extractScripts() {
    listScripts() {
        echo -e "# $1\n" >>${1}.md
        for i in $(find $1 -type f -name '*.*' | sed '/:/d;/^$/d'); do
            filtre=$(echo "$i" | cut -d/ -f2 | sed 's/_/ /g;s/.sh\|.js//g;s/^./\u&/')
            echo "## $filtre" >>${1}.md
            echo "\`\`\`$1" >>${1}.md
            echo "$(cat $i)" >>${1}.md
            echo -e "\`\`\`  \n" >>${1}.md
        done
    }

    listScripts BASH
    listScripts JavaScript
}

for i in $(ls -1 *.md); do
    : >$i
done

extractReadme
extractScripts
