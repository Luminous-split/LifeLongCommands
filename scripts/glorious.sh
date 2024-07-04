#!/bin/bash
download_file_path=$(pwd)/deep/downloads

for page in {2..91}; do
    girl_file=page_$page'_girls'.txt
    curl -s https://asianscandal.net/tag/singapore/page/$page/ | awk -F'["\047]' '/href=/{for(i=1;i<=NF;i++){if($i~/(href=|href =)/){print $(i+1)}}}' | grep 20 | grep -v '#comment' | grep -v 'tag' | uniq > $(pwd)/deep/raw/girls/$girl_file
    echo "Successfully Saved girls name from page $page to $girl_file"
    count=1
    while IFS= read -r girl;do
	    
        girl_image_link=girl_$count'_links'.txt
        curl -s $girl | awk -F'"' '/https:\/\// { for (i=1; i<=NF; i++) if ($i ~ /^https:\/\//) print $i }' | grep .jpg > $(pwd)/deep/raw/$girl_image_link
	    echo "Successfully saved links of girl $count to $girl_image_link" 
	
	    dir=$count'_girl_images'
	    mkdir -p $(pwd)/deep/downloads/page$page/$dir
	    echo "Successfully created dir $download_file_path/page$page/$dir"

	    image_count=1
            while IFS= read -r line; do
			
                echo "Downloading girl $count $image_count.jpg to $download_file_path/page$page/$dir"

                curl -s -o $download_file_path/page$page/$dir/$image_count.jpg $line

                OCR_OUTPUT=$(tesseract "$download_file_path/page$page/$dir/$image_count.jpg" -)

                if echo "$OCR_OUTPUT" | grep -q "Removed" || $(stat -f %z "$download_file_path/page$page/$dir/$image_count.jpg"); then
                    rm $download_file_path/page$page/$dir/$image_count.jpg
                fi

                ((image_count++))

	        done < "$(pwd)/deep/raw/$girl_image_link"
        echo "Successfully downloaded all files from $girl_image_link"
        ((count++))  
    done < "$(pwd)/deep/raw/girls/$girl_file"

done
