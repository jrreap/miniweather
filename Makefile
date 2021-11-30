setup: clean miniWeather-serial.cpp
	mpicxx -acc -ta=multicore -fast -Minfo=accel miniWeather-serial.cpp -lpnetcdf -o miniWeather
packages:
	./utils/load_pacs.sh
clean: miniWeather
	rm miniWeather
