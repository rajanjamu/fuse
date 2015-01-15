# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_user(name, username, email)
  User.create(name: name, username: username, email: email)
end

def create_creation(name, description, user_id, category_id)
  Creation.create(name: name, description: description, user_id: user_id, category_id: category_id)
end

def create_category(name)
  Category.create(name: name)
end

description1 = "If you’ve ever tried to connect a 3-3V device to a 5V system, you know what a challenge it can be. The SparkFun bi-directional logic level converter is a small device that safely steps down 5V signals to 3.3V AND steps up 3.3V to 5V at the same time. This level converter also works with 2.8V and 1.8V devices. What really separates this Logic level converter from our previous versions is that you can successfully set your high and low voltages and step up and down between them safely on the same channel. Each level converter has the capability of converting 4 pins on the high side to 4 pins on the low side with two inputs and two outputs provided for each side."
description2 = "This is the SparkFun Real Time Clock (RTC) Module. This little breakout that uses the DS1307 to keep track of the current year, month, day as well as the current time. The module comes fully assembled and pre-programmed with the current time (MST) and includes a small CR1225 Lithium coin cell battery that will run the RTC for a minimum of 9 years (17 years typical) without an external 5V power supply. The DS1307 RTC is accessed via the I2C protocol. We’ve written a test-bed to program the modules, this code should give you some insight on how to interface the module to any microcontroller using our example software I2C and BCD routines."
description3 = "The MPL3115A2 is a MEMS pressure sensor that provides Altitude data to within 30cm (with oversampling enabled). The sensor outputs are digitized by a high resolution 24-bit ADC and transmitted over I2C, meaning it’s easy to interface with most controllers. Pressure output can be resolved with output in fractions of a Pascal, and Altitude can be resolved in fractions of a meter. The device also provides 12-bit temperature measurements in degrees Celsius."
description4 = "This tiny breakout board features the ADMP401 MEMs microphone. One of the key advantages to this breakout and microphone is the bottom ported input. This means the microphone’s input can fit flush against the enclosure of your project. Plus you will not have to deal with trying to solder the microphone’s wacky footprint. Wootness!"
description5 = "The 9DOF Razor IMU incorporates three sensors - an ITG-3200 (MEMS triple-axis gyro), ADXL345 (triple-axis accelerometer), and HMC5883L (triple-axis magnetometer) - to give you nine degrees of inertial measurement. The outputs of all sensors are processed by an on-board ATmega328 and output over a serial interface. This enables the 9DOF Razor to be used as a very powerful control mechanism for UAVs, autonomous vehicles and image stabilization systems."
description6 = "The TB6612FNG motor driver can control up to two DC motors at a constant current of 1.2A (3.2A peak). Two input signals (IN1 and IN2) can be used to control the motor in one of four function modes - CW, CCW, short-brake, and stop. The two motor outputs (A and B) can be separately controlled, the speed of each motor is controlled via a PWM input signal with a frequency up to 100kHz. The STBY pin should be pulled high to take the motor out of standby mode."

create_user("Rajan", "rajanjamu", "rajanjamu@gmail.com")
create_user("Bhavya", "nutakki.bhavya", "nutakki.bhavya@gmail.com")
create_user("Rohit", "rohit.dega", "rohit.dega@gmail.com")

create_category("Sensor")
create_category("Breakout Boards")
create_category("Robotics")

create_creation("Logic Level Convertor", description1, 1, 2)
create_creation("Real Time Clock", description2, 1, 2)
create_creation("Pressure Sensor", description3, 1, 1)
create_creation("Mems Microphone", description4, 2, 2)
create_creation("IMU", description5, 2, 1)
create_creation("Motor Driver", description6, 3, 3)


