#!/bin/bash
user=`/bin/cat /project_path/cloudkey/.creds`
while read line;do
	name=$(echo $line | cut -d ":" -f 1)
	ip=$(echo $line | cut -d ":" -f 2)
	echo "Running CK Backups on $name $namei...."
	/usr/bin/scp $user@$ip:/srv/unifi/data/backup/autobackup/*.unf /project_path/cloudkey/$name/unifi/
	/usr/bin/scp $user@$ip:/mnt/.rwfs/data/etc/unifi-protect/backups/*.zip /project_path/cloudkey/$name/protect/
done</project_path/cloudkey/.sites

