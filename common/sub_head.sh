#!/bin/bash
set -euo pipefail

echo "jobname=${jobname}"
echo "ncore=$ncore"
jobnodes=$[($ncore/$maxppn)+($ncore%$maxppn>0)]
echo "jobnodes=$jobnodes"
jobppn=$[($ncore/$jobnodes)+($ncore%$jobnodes>0)]
echo "jobppn=$jobppn"
#========================================[mycluster]
if [ "$mycluster" = "pbs" ]; then
    cat > ${jobname}.sh <<eof
#!/bin/bash
#PBS -l nodes=${jobnodes}:ppn=${jobppn}
#PBS -N ${jobname}
#PBS -q ${jobqueue}
cd \$PBS_O_WORKDIR
eof
elif [ "$mycluster" = "sbatch" ]; then
    cat > ${jobname}.sh <<eof
#!/bin/bash
#SBATCH -N ${jobnodes}
#SBATCH --ntasks-per-node=${jobppn}
#SBATCH -J ${jobname}
#SBATCH -p ${jobqueue}
eof
else
    echo "ERROR: 'mycluster' not exist!"
    exit
fi

cat >>${jobname}.sh<<eof

set -euo pipefail
source ~/tianff/codes/common/environment.sh
SECONDS=0

eof