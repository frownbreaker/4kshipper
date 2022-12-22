# 4kshipper
scripts to automate processing of 4k content

Invoke via cron jobs eg


0 */1 * * * /storage/move4k.sh >> cronmove4k.log


*/15 * * * * /storage/jumper.sh >> jumprun.log


Output in log files if you need to debug

How it works

jumper.sh looks for files in the root of the source directory (where incoming files appear) level one directories and their sub directories are then passed to the jumpdir script. Files in the root of the source directory are moved to the destination directory's root using the jumpfiles script.

Move scripts are used to copy (cp) between drives or NAS Servers (time traken depends on filesize, network, etc)
Jump scripts are used to jump files between locations on the same drive / NAS (using the mv command so miliseconds to execute regardless of file size)


