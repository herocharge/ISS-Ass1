#read inp
##echo $inp | tr ',' ' ' | awk '{
#		for(i=1;i<=NF;i++){
#			arr[i-1]=$i;
#			c++;
#		}
#	}
#	END{
#	for(i = 0; i < c;i++){
#		for(j = i;j<c-1;j++){
#			if(arr[j] > arr[j+1]){
#				tmp = arr[j];
#				arr[j] = arr[j+1];
#				arr[j+1] = tmp;
#			}
#		}
#	}
#	for(i=0;i<c;i++)printf("%d,", arr[i]);
#}
#'

read inp
arr=()
count=$((0))
for i in $(echo $inp | tr ',' ' ')
do
	arr[$count]=$i
	((count++))
done

for ((i=0; i<$count;i++))
do
	for((j=0; j<$((count-i));j++))
	do
		if [[ ${arr[$((j+1))]} -lt ${arr[$((j))]} ]]
		then
			tmp=${arr[$((j+1))]}
			arr[$((j+1))]=${arr[$j]}
			arr[$j]=$tmp
		fi
	done
done

echo ${arr[@]}
