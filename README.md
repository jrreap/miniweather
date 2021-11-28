# miniweather
A paralleized version of the MiniWeather app for high performance computing. Built off the sample code found [here](https://github.com/mrnorman/miniWeather).
This program simulates "weather" patterns in an approachable format. Produces viewable netCDF files to visualize the data better.

## Requirements
This requires you to install the required modules. Simply run `module load openmpi/4.0.5-nvhpc21.7 parallel-netcdf`
on bridges

## Building the Project and Execution
After installing the required modules (see above) type `make` in the main project directory to build the project executable. 
Then simply schedule a job using `sbatch` and the provided batch script. This can take a few moments and will output a finished `output.nc` file when done!

## Maintainers
Jaydon Reap (jrreap)
Daniel Horta (???)
Aaron Liu (olympus)
