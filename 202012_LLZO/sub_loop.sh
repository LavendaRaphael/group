#!/bin/bash
homedir=`find ~ -maxdepth 3 -name "server.me.sh" -print -quit|xargs dirname`/
source local_env.sh
set -euo pipefail

cd $work_dir
for N in $loopfile
do
	echo $N
	cd a_${N}
	bash $subfile
    rm ${subfile}
	cd -
done
