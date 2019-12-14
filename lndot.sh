input="."
target=~
while IFS= read -r fname
do
dir="$( cd "$(dirname "$input")" ; pwd -P )"
src=$dir/$fname
dst=$target/$fname
ln -sF $src $dst
done < "$input"/.dotlink
