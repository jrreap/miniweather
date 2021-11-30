#! /bin/bash
#SBATCH -A see200002p       # specify the project or allocation number
#SBATCH -p GPU-shared       #GPU-shared partition
#SBATCH --gpus=v100-32:1    #allocation 1 v100 gpu(i.e. = v100-32:5 allocates 5GPUS)
#SBATCH -J miniweatherJob  # Job name
#SBATCH --mail-user=jreap@udel.edu
#SBATCH --mail-type=ALL

#SBATCH -N 1     	    # Number of nodes, not cores (16 cores/node)
#SBATCH -n 4                # Number of cores requested in total

#SBATCH -t 00:20:00         # set maximum run time of 20 minutes

export PGI_ACC_TIME=1
mpirun -n 1 ./miniWeather
