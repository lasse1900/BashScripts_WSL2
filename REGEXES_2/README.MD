# REGEX & SED
# https://www.youtube.com/watch?v=WX5Zfflvdt0&t=33s

1) Basic search clauses

^ - at the beginning of the line 
$ - at the end of the line

grep -n 'work' GNULicense.txt
grep -n ^'work' GNULicense.txt
grep -n 'work'$ GNULicense.txt

grep -n 'General' GNULicense.txt
grep -n 'general' GNULicense.txt

grep -n $'th..' GNULicense.txt -c  
# -c = count

# lines starting with a or b
grep -n ^'[ab]' GNULicense.txt

# lines starting eith with ab
grep -n ^'[ab][ab]' GNULicense.txt
lasse@DESKTOP-S2JLDIN:~/BashScripts_WSL2/REGEXES_2$ grep -n ^'[ab][ab]' GNULicense.txt
615:above cannot be given local legal effect according to their terms,

# lines with at least one char between 0..9
grep -n '[0-9]' GNULicense.txt

# lines having number 0..9 and char a..Z
grep -n '[0-9][a-zA-Z]' GNULicense.txt


grep -n '\[\]' GNULicense.txt

2) Modifiers

# lines with 2 or 4 consecutive numbers 0..9
grep -n '[0-9]\{2,4\}' GNULicense.txt

# lines with strick word "work"
grep -n '\<work\>' GNULicense.txt

or

grep -n -w 'work' GNULicense.txt

3) Backreferencing

grep -n '\([0-9]\)\1' GNULicense.txt

lasse@DESKTOP-S2JLDIN:~/BashScripts_WSL2/REGEXES_2$ grep -n '\([0-9]\)\1' GNULicense.txt
2:                       Version 3, 29 June 2007
4: Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
183:11 of the WIPO copyright treaty adopted on 20 December 1996, or
413:paragraph of section 11).
471:  11. Patents.
534:or that patent license was granted, prior to 28 March 2007.

grep -n '\([a-z]\)\1' GNULicense.txt

# searches words like radar, refer vs palindrome
grep -n '\([a-z]\)\([a-z]\)[a-z]\2\1' GNULicense.txt


3) Grep

-i ignore case
-v exclude found patters (used as a pipeline filter)
- !! to repeat the last command

grep -n -i 'general' GNULicense.txt

# exclude line with "general"
grep -n -i -v 'general' GNULicense.txt

# -i is a command needed -e (escape char)
grep -n -e -i GNULicense.txt

grep -n -w 'work' GNULicense.txt


4) Sed

- s substitude
- a append
- /../../ delimiters

/replace

sed 's/License/Linux/' GNULicense.txt > text.txt

# replace globally
sed 's/License/Linux/g' GNULicense.txt > text.txt

# replace
echo 'Sunday' | sed 's/day/night/'

# another delimiter instead of /
sed 's_License_AAAAA_g' GNULicense.txt > text.txt

# substitude all / to aaa
sed 's_/_aaa_g' GNULicense.txt > text.txt

# doubles numbers/digits: 3 -> 33, 2007 -> 22000077
sed 's/[0-9]/&&/g' GNULicense.txt > text.txt
grep '[0-9]' text.txt

# reverses two digit numbers e.g. 10 -> 01
sed 's_\([0-9]\)\([0-9]\)_\2\1_g' GNULicense.txt > text.txt


# replaces digits with DELETE from every 2nd occurence on the lines
sed 's/[0-9]/DELETE/2g' GNULicense.txt > text.txt

# check the outcome
grep '[0-9]' text.txt



















