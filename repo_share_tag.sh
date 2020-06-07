#!/bin/bash

show_help()
{
	echo -e "Usage: repo_share_tag.sh <tag>"
	echo -e 'Eg. ./repo_share_tag.sh release-v1'
}

[ x"$1" = x"" ] && {
	show_help
	exit 1
}

tag=$1
file=update-tag-$tag.sh

echo "#!/bin/bash" > $file
echo "" >> $file

repo forall -p -c git log -1 $tag --pretty=format:'%h' | awk '{tmp=$2;getline;print "echo "tmp"\ncd "tmp"\ngit tag -d '$tag' 2>/dev/null\ngit tag '$tag' "$1" || exit 1\ncd - > /dev/null\n"}' >> $file

chmod +x $file

#for debug
cat $file

echo -e '\033[0;31;1m'
echo "to update tag $tag, please run ./$file"
echo -e '\033[0m'
