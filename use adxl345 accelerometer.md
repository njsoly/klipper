# Set-up ADXL345 Accelerometer to work with Ender 5 S1 #

  Method: plugged into Raspberry Pi (Octoprint host)


###  Sources 
 - https://www.klipper3d.org/Measuring_Resonances.html#mounting-the-accelerometer
 - https://www.klipper3d.org/RPi_microcontroller.html

## Install additional packages ##
	sudo apt update
	sudo apt install python3-numpy python3-matplotlib libatlas-base-dev libopenblas-dev


## Install NumPy into Klipper environment ##
	~/klippy-env/bin/pip install -v numpy

