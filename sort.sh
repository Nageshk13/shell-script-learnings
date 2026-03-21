a=10 b=20 c=5 d=40

nums=($a $b $c $d)

sorted=($(printf "%s\n" "${nums[@]}" | sort -n))

echo ${sorted[@]}
