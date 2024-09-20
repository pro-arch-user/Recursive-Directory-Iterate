parse_dir () {
	initial_path=$1

	# echo Converting directory $initial_path

	for file_path in "$initial_path"/*; do
		if [ -d "$file_path" ]; then
			parse_dir "$file_path"
		else;
			# it's a file
		fi
	done

	# echo Finished converting directory $initial_path
}

if [ -z "$1" ]; then
  echo "Specify the directory"
  exit 1
fi

echo Convertion started
echo
parse_dir "$1"
echo
echo Convertion finished
