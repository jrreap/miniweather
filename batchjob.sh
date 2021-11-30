#! /bin/bash
#SBATCH -A see200002p       # specify the project or allocation number
#SBATCH -p RM-shared  	    # RM-shared partition
#SBATCH -J miniweather         # Job name
#SBATCH --mail-user=jreap@udel.edu
#SBATCH --mail-type=ALL

#SBATCH -N 1     	    # Number of nodes, not cores (16 cores/node)
#SBATCH -n 8                # Number of cores requested in total

#SBATCH -t 00:20:00         # set maximum run time of 20 minutes

export ACC_NUM_CORES=8
mpirun -n 1 ./miniWeather
#ncu --set full -o serial -f mpirun -n 1 ./miniWeather
