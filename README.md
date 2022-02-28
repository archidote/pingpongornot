# Run
```
chmod u+x internet.sh
./internet.sh & 
```
# Run the program from the boot 
Open your crontab and add the following line : 
- Make sure that your current user have sudo rights

```
@reboot export DISPLAY=:0 && sleep 10 && /home/kali/github-tools/pingpongornot/internet.sh
```