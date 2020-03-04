# This script adds a H1 header to each .md file, based off that file's name
# Intended to be used on an export of a GitHub style wiki
for f in *.md
do
	title=$(echo $f | sed s/.md//g | sed s/-/\ /g)
	echo "Adding title '$title' to $f"
	sed -i "1s;^;# $title\n\n;" $f
done