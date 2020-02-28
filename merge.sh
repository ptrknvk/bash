echo "BEGIN:VCALENDAR" >> merge;
for file in *.ics; do 
cat "$file" | sed -e '$d' $1 | sed -e '1,/VEVENT/{/VEVENT/p;d}' $2  >> merge; 
done
mv merge merge.ics
echo "END:VCALENDAR" >> merge.ics;