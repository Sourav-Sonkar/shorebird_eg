import 'dart:isolate';

import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const CircularProgressIndicator(),
          ElevatedButton(
            child: const Text('Simulate Heavy work'),
            onPressed: () async {
              // ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text("Calculating...")));
              //  int x= computationallyExpensiveTaskWithOutIsolates();
              //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Calculated value is :$x") ));

              //ReceivePort is to listen for the isolate to finish job
              final receivePort = ReceivePort();
              //here we are passing method name and sendPort instance from ReceivePort as listener
              await Isolate.spawn(
                  computationallyExpensiveTask, receivePort.sendPort);

              //It will listen for isolate function to finish
              receivePort.listen((sum) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Calculated value is :$sum")));
              });
            },
          )
        ],
      ),
    );
  }
}

int computationallyExpensiveTaskWithOutIsolates() {
  var sum = 0;
  for (var i = 0; i <= 9000000000; i++) {
    sum += i;
  }
  return sum;
}

void computationallyExpensiveTask(SendPort sendPort) {
  var sum = 0;
  for (var i = 0; i <= 9000000000; i++) {
    sum += i;
  }
  //Remember there is no return, we are sending sum to listener defined defore.
  sendPort.send(sum);
}
