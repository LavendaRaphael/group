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
#PBS -j oe
cd \$PBS_O_WORKDIR
eof

elif [ "$mycluster" = "sbatch" ]; then
    cat > ${jobname}.sh <<eof
#!/bin/bash
#SBATCH -N ${jobnodes}
#SBATCH --ntasks-per-node=${jobppn}
#SBATCH -J ${jobname}
#SBATCH -p ${jobqueue}
#SBATCH -o %x.oe%j
eof

elif [ "$mycluster" = "bsub" ]; then
    cat > ${jobname}.sh <<eof
#!/bin/bash
#BSUB -q ${jobqueue}
#BSUB -n ${ncore}
#BSUB -J ${jobname}
eof


else
    echo "ERROR: 'mycluster' not exist!"
    exit
fi

#=========================================================[head]
cat >>${jobname}.sh<<eof

source ~/tianff/codes/common/environment.sh
set -euo pipefail
SECONDS=0
mpirun ${software_bin}intelmpi_test.x

eof

#==========================================================[jobsub]
if [ "$mycluster" = "pbs" ]; then
    alias jobsub="qsub"
elif [ "$mycluster" = "sbatch" ]; then
    alias jobsub="sbatch <"
elif [ "$mycluster" = "bsub" ]; then
    alias jobsub="bsub <"
else
    echo "ERROR: 'mycluster' not exist!"
    exit
fi
