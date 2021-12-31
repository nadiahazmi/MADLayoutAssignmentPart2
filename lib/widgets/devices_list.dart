import 'package:flutter/material.dart';

class Devices extends StatefulWidget {
  const Devices({
    Key? key,
    required this.size,
    required this.title,
    required this.icon,
    required this.power,
    required this.statusOn,
    required this.statusOff,
  }) : super(key: key);

  final Size size;
  final Icon icon;
  final String title;
  final Icon power;
  final String statusOn;
  final String statusOff;

  _ControlDevices createState() => _ControlDevices();
}

class _ControlDevices extends State<Devices> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool isPressed = false;

  void changeState() {
    setState(() {
      isPressed = !isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 140,
        width: widget.size.width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(3, 3),
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 0,
              offset: Offset(-3, -3),
            ),
          ],
        ),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widget.icon,
                      Container(
                          height: 45,
                          width: 60,
                          child: IconButton(
                              icon: widget.power,
                              onPressed: () => {changeState()}))
                    ]),
                SizedBox(height: 10),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  isPressed ? widget.statusOff : widget.statusOn,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isPressed
                          ? Colors.grey.withOpacity(0.6)
                          : Colors.green),
                ),
              ],
            )),
      ),
      SizedBox(height: 5),
    ]);
  }
}
