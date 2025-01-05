#!/bin/bash

wc -w filename.txt
echo "am learning devops with AWS" | wc -w
#!/bin/bash

filename="$18-count-word.sh"

word_count=$(wc -w < "$filename")

echo "The file '$filename' contains $word_count words."