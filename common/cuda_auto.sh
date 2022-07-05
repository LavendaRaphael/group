nvidia-smi
qstat -f ${PBS_JOBID}|grep exec_gpus

str_gpu_export=$(python << EOF
import subprocess
import os
import numpy
import time

subprocess_tmp = subprocess.run( args=["qstat -f ${PBS_JOBID}|grep exec_gpus"], shell=True ,stdout=subprocess.PIPE, encoding="utf-8")
list_gpu_exec = subprocess_tmp.stdout.split()[-1].split("+")
list_gpu_exec = [ str_gpu.split("/")[-1] for str_gpu in list_gpu_exec ]
str_gpu_exec = ",".join(list_gpu_exec)

str_cuda_visible_devices = os.environ["CUDA_VISIBLE_DEVICES"]

if (str_cuda_visible_devices == "" or str_gpu_exec == str_cuda_visible_devices):
    str_gpu_export = str_gpu_exec
else:
    str_gpu_export = list_gpu_exec[ int(str_cuda_visible_devices) ]

subprocess_tmp = subprocess.run( args=[f"nvidia-smi -q -d MEMORY -i {str_gpu_export}|grep Free|head -n 1"], shell=True ,stdout=subprocess.PIPE, encoding="utf-8")
float_memory_free = float(subprocess_tmp.stdout.split()[-2])
if (float_memory_free < 10000):
    subprocess_tmp = subprocess.run( args=["nvidia-smi -q|grep Attached"], shell=True ,stdout=subprocess.PIPE, encoding="utf-8")
    int_gpu_all = int(subprocess_tmp.stdout.split()[-1])
    np_memory_free = numpy.zeros( shape=int_gpu_all )
    for int_i in range(int_gpu_all):
        subprocess_tmp = subprocess.run( args=[f"nvidia-smi -q -d MEMORY -i {int_i}|grep Free|head -n 1"], shell=True ,stdout=subprocess.PIPE, encoding="utf-8")
        np_memory_free[int_i] = float(subprocess_tmp.stdout.split()[-2])
    if numpy.all(np_memory_free < 10000):
        open('memory','w').write("")
        time.sleep(3600)
    else:
        str_gpu_export = numpy.argmax(np_memory_free)
    
print(str_gpu_export)
EOF
)

CUDA_VISIBLE_DEVICES=$str_gpu_export

