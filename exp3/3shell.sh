Shell Script — process.sh
#!/bin/bash
echo "Parent Process ID : $$"
(
echo "Child Process ID : $$"
echo "Parent Process ID : $PPID"
exit 0
) &
wait
echo "Child Process Completed"

Shell Script
#!/bin/bash(
echo "Child Process Running"
sleep 5
echo "Child Process Completed"
) &wait
echo "Parent Resumes Execution"


Shell Script
#!/bin/bash
exec 3<sample.txt
echo "File Opened Successfully"
exec 3<&-
echo "File Closed Successfully"

