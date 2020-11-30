#!/bin/bash
set -eo pipefail
source ~/tianff/codes/202011_XasWater32Qe/local_env.sh

jobname=test_nscf
ncore=6
source ~/tianff/codes/common/sub_head.sh
#========================================[main script]
cat >> ${jobname}.sh<<eof
CP=${qe_cohsex_water_bin}cp.x
PW=${qe_cohsex_water_bin}pw.x
echo \$PW
echo \$CP

mpirun \$PW  < nscf.in > nscf.out
cp -r temp/water.save temp/water_50.save

echo "TotalTime \$((\${SECONDS} / 60)) m \$((\${SECONDS} % 60)) s."
eof

if true;then
    jobsub ${jobname}.sh
fi