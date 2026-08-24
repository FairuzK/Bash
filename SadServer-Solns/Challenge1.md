## Scenario 1: (Saint John: What is writing to this Log File)
### Commands Used.
```bash
lsof /var/log/bad.log
kill -15 590
```
## Scenario 2: "Saskatoon": counting IPs.
### Commands Used
cat /home/admin/access.log
awk '{print $1}
sort 
uniq -c: Counts all the IPs
sort -r 
head -n 5

cat /home/admin/access.log | awk '{print $!}' | sort | uniq -c | sort -r | head -n 5
vim /home/admin/highestip.txt
sha1sum /home/admin/highestip.txt

## Scenario 3: "The Command Line Murders"
### Commands Used
cat crimescene
grep CLUE crimescene
cat people
head people
cat memberships/ Rotary_Club memberships/Delta_SkyMiles memberships/Terminal_City_Library memberships/Museum_of_Bash_History | sort | uniq -c |  grep 4 > suspects
