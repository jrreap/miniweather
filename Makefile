setup: miniWeather-serial.cpp
	mpicxx miniWeather-serial.cpp -lpnetcdf -o miniWeather
packages:
	./utils/load_pacs.sh
clean: miniWeather
	rm miniWeather
