setup: miniWeather-serial.cpp
	mpicxx miniWeather-serial.cpp -lpnetcdf -o miniWeather
packages:
	module purge
	module load openmpi/4.0.5-nvhpc21.7 parallel-netcdf/1.12.1
clean: miniWeather
	rm miniWeather
run:
	./miniWeather
