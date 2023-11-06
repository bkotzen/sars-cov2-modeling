#!/bin/bash

dirs=$(gsutil ls gs://sabeti-tick/COVID/PyR0-Results/)

for d in $dirs;
do
    if [[ $d =~ \.([0-9]{4}-[0-9]{2}-[0-9]{2})/$ ]]; then
        date="${BASH_REMATCH[1]}"gsutil cp -r $d
        
        gsutil cp -r $d
        
        ln -sf results.$date/ results/
        
    


    # if [[ $d =~ \.([0-9]{4}-[0-9]{2}-[0-9]{2})/$ ]]; then
    #     date="${BASH_REMATCH[1]}"
        
#         if [ -d "$d" ]; then
#             echo "Directory $d exists."
#         else
#             mkdir $date/
#         fi
        
#         mutransFiles=$(gsutil ls $d | grep mutrans)
#         gsutil cp -r $mutransFiles $date/
#     else
#         echo "Bad dir:" $d
#     fi
done