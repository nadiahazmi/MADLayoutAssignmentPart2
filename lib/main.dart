import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layoutassignment/widgets/devices_list.dart';
//import 'package:layoutassignment/widgets/devices_list.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "My Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(15),
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 5.0,
        children: [
          Devices(
            size: size,
            icon: Icon(
              Icons.light_rounded,
              size: 45,
              color: Colors.grey.shade400,
            ),
            power: Icon(
              Icons.power_settings_new,
              size: 35,
              //shape: CircleBorder()
              color: Colors.grey.shade400,
            ),
            title: 'Parking Lights',
            statusOn: 'ON',
            statusOff: 'OFF',
          ),
          Devices(
            size: size,
            icon: Icon(
              Icons.balcony_rounded,
              size: 45,
              color: Colors.grey.shade400,
            ),
            power: Icon(
              Icons.power_settings_new,
              size: 35,
              //shape: CircleBorder()
              color: Colors.grey.shade400,
            ),
            title: 'Front Gate',
            statusOn: 'OPEN',
            statusOff: 'LOCKED',
          ),
          Devices(
            size: size,
            icon: Icon(
              Icons.ac_unit_rounded,
              size: 45,
              color: Colors.grey.shade400,
            ),
            power: Icon(
              Icons.power_settings_new,
              size: 35,
              //shape: CircleBorder()
              color: Colors.grey.shade400,
            ),
            title: 'Living Room AC',
            statusOn: 'ON',
            statusOff: 'OFF',
          ),
          Devices(
            size: size,
            icon: Icon(
              Icons.light_rounded,
              size: 45,
              color: Colors.grey.shade400,
            ),
            power: Icon(
              Icons.power_settings_new,
              size: 35,
              //shape: CircleBorder()
              color: Colors.grey.shade400,
            ),
            title: 'Living Room Lights',
            statusOn: 'ON',
            statusOff: 'OFF',
          ),
          Devices(
            size: size,
            icon: Icon(
              Icons.videocam,
              size: 45,
              color: Colors.grey.shade400,
            ),
            power: Icon(
              Icons.power_settings_new,
              size: 35,
              //shape: CircleBorder()
              color: Colors.grey.shade400,
            ),
            title: 'Kitchen CCTV',
            statusOn: 'ON',
            statusOff: 'OFF',
          ),
          Devices(
            size: size,
            icon: Icon(
              Icons.sensor_door,
              size: 45,
              color: Colors.grey.shade400,
            ),
            power: Icon(
              Icons.power_settings_new,
              size: 35,
              color: Colors.grey.shade400,
            ),
            title: 'Master Bedroom',
            statusOn: 'OPEN',
            statusOff: 'CLOSED',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          /* selectedFontSize: 12,
          unselectedFontSize: 12, */
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.filter_tilt_shift_rounded),
              label: 'Scene',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded, color: Colors.blue, size: 40),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            )
          ]),
    ));
  }
}
