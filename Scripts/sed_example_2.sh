
phrase="another"

line_number=2

sed -n "${line_number}p" myfile.txt | grep "$phrase"

