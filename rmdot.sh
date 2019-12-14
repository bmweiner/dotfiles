input="."
target=~
while IFS= read -r fname
do
dir="$( cd "$(dirname "$input")" ; pwd -P )"
src=$dir/$fname
dst=$target/$fname
rm -rf $dst
done < "$input"/.dotlink
