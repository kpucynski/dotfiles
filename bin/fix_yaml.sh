for i in `find $1 -name "*.yml"`; do
	echo $i

	# fix header
	if [ ! "`head -1 $i`" == "---" ]; then
		sed -i '1s,^,---\n,' $i;
	fi;

	# fix trailing spaces
	sed -i 's/[ \t]\+$//' $i;

	# fix comments
	sed -i 's/^#\([[:alpha:]]\)/# \1/g' $i
done;
