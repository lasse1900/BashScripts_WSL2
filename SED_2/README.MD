# SED examples
# https://www.youtube.com/watch?v=nXLnx8ncZyE

sed 's/Pineapple/Feta/' toppings.txt

# replace in line
sed -i 's/Pineapple/Feta/' toppings.txt
sed 's_Feta_Olives_' toppings.txt

find /etc -type f
sudo find /etc -type f > paths.txt
cat paths.txt

sed 's./etc..' paths.txt
sed 's./etc.strut.' paths.txt

echo 'hello' | sed 's/hello/goodbye/'


