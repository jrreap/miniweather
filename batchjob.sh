#! /bin/bash
#SBATCH -A see200002p       # specify the project or allocation number
#SBATCH -p RM-shared  	    # RM-shared partition
#SBATCH -J miniweather         # Job name
#SBATCH --mail-user=jreap@udel.edu
#SBATCH --mail-type=ALL

#SBATCH -N 1     	    # Number of nodes, not cores (16 cores/node)
#SBATCH -n 4                # Number of cores requested in total

#SBATCH -t 00:05:00         # set maximum run time of 30 minutes

mpirun -n 4 ./miniWeather
