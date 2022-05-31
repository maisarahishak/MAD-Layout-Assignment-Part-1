import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Maisarah's Home"),
          backgroundColor: Colors.green,
        ),
        body: TheGridView().build(),
      ),
    );
  }
}

//living room

class TheGridView {
  Card makeGridCell(String name, IconData icon) {
    return Card(
      elevation: 1.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Center(
              child: Icon(
            icon,
            size: 30,
          )),
          Center(child: Text(name)),
          Center(
            child: ToggleSwitch(
              minWidth: 40.0,
              minHeight: 30.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              totalSwitches: 2,
              labels: ['On', 'Off'],
              activeBgColors: [
                [Colors.green],
                [Colors.red]
              ],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          )
        ],
      ),
    );
  }

  GridView build() {
    return GridView.count(
        primary: true,
        padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: <Widget>[
          makeGridCell("Nest Cam Indoor Camera\n", Icons.photo_camera_front),
          makeGridCell("Lockitron Bolt Smart Lock\n", Icons.lock_clock),
          makeGridCell("RingPro Smart Video Doorbell\n", Icons.doorbell),
          makeGridCell("Samsung Neo QLED TV\n", Icons.connected_tv),
        ]);
  }
}
