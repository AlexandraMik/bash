!/bin/bash
S=0
for I in $(df -k | grep '^/dev' | tr -s ' ' | cut -d' ' -f4)
do
    S=$(( $S+$I ))
done
echo "$S kb"