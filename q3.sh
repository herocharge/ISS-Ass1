read file
wc -c $file | awk '{print $1}'
wc -l $file | awk '{print $1}'
wc -w $file | awk '{print $1}'
awk '{c++;print "Line No: "c, "- Count of Words: "NF;}' $file
awk 'BEGIN{var=0}
{
	for(i = 1; i<= NF; i++){
		if(count[$i]==0){
			var++;
			arr[var]=$i;
		}
		count[$i]++;
	}
} END {
for(i=0;i<var;i++){
	if(count[arr[i]] !=0){
		print "Word: "arr[i], "- Count of repetition: "count[arr[i]]; 
		count[arr[i]]=0;
	}
}
}' $file

