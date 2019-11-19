for i in `find $1 \( -name "*.yml" -o -name "*.yaml" \)`; do
	echo $i

	# fix header
	if [ ! "`head -1 $i`" == "---" ]; then
		sed -i '1s,^,---\n,' $i;
	fi;

	# fix trailing spaces
	sed -i 's/[ \t]\+$//' $i;

	# fix comments
    sed -i 's/^\([[:space:]]*\)#\([[:alpha:]]\)/\1# \2/g' $i
done;
