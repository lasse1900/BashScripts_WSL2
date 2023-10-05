
phrase="Hello, world!"

line_number=4

sed -n "${line_number}p" myfile.txt | grep "$phrase"

