# miniweather
A paralleized version of the MiniWeather app for high performance computing

## Install
This requires you to install the required modules. Simply run `module load openmpi/4.0.5-nvhpc21.7 parallel-netcdf`
on bridges

Then type `make` in the main project directory to build the project executable. Then simply schedule a job (probably using `sbatch`) using the provided batch script.
