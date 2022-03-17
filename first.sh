S=0
S1=0
read D
for I in $(df -k | grep '^/dev' | tr -s ' ' | cut -d' ' -f4) 
do
    S=$(( $S+$I ))
done
for I in $(df -k | grep '^/dev' | tr -s ' ' | cut -d' ' -f2) 
do
    S1=$(( $S1+$I ))
done
if [[ "$D" == "K" || "$D" == "k" ]] ; then
     echo $S
     echo $S1 
fi 
if [[ "$D" == "M" || "$D" == "m" ]] ; then

    echo $(bc<<<"scale=3; $S/1024")
    echo $(bc<<<"scale=3; $S1/1024")
fi 
if [[ "$D" == "G" || "$D" == "g" ]] ; then
    echo $(bc<<<"scale=3; $S/1024/1024")
    echo $(bc<<<"scale=3; $S1/1024/1024") 
fi 