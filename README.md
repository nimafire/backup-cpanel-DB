# backup-cpanel-DB
shell script to backup databases on cPanel server, this will backup all users and store in .sql format

im lazy shell coder and write bash scripts in simple way.
i've removed "for" and "if" because they don't matter.

"simple script for system administrator"

<b>How use:</b><br>
just change this value to yours:
BACKUPDIR=backup/db_backup


<b>How add cron for this script</b><br>
its simple as the script.
just add this line into your cron system like this:

30 */12 * * * /etc/backupDB.sh > /dev/null 2>&1

