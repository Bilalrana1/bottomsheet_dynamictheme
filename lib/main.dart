// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Bottom  Sheet",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: const Text("Click On"),
                onPressed: () {
                  Get.bottomSheet(
                      Wrap(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.wb_sunny_outlined),
                            title: const Text("Light Theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.wb_sunny),
                            title: const Text("Dark Theme"),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                      backgroundColor: const Color.fromARGB(247, 91, 173, 241));

                  shape:
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.white,
                      width: 2.0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
