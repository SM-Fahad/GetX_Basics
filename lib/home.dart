import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxworks/counter_controller.dart';
import 'package:getxworks/example_controller.dart';
// import 'package:getxworks/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController counterController = Get.put(CounterController());
  bool notification = false;
  ExampleController exampleController = Get.put(ExampleController());
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('GetX Works'),
    //   ),
    //   body: Column(
    //     // mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Container(
    //         // height: MediaQuery.of(context).size.height * 0.5,
    //         height: Get.height * 0.5,
    //         // width: double.infinity,
    //         width: Get.width * 0.9,
    //         color: Colors.amber,
    //         child: Center(child: Text('Container')),
    //       ),

    //     Card(
    //       child: ListTile(
    //         title: const Text('GetX Snackbar Example'),
    //         subtitle: const Text('Tap the button to show Snackbar'),
    //         onTap: (){
    //           Get.defaultDialog(
    //             title: 'GetX Dialog',
    //             titlePadding: EdgeInsets.all(10),
    //             contentPadding: EdgeInsets.all(10),
    //             middleText: 'This is a dialog from GetX package',
    //             textConfirm: 'OK',
    //             textCancel: 'CANCEL',
    //             onConfirm: (){
    //               Get.back();
    //             },
    //             onCancel: () {
    //               Get.back();
    //             },
    //           );
    //         },
    //       ),
    //     ),
    //     Card(
    //       child: ListTile(
    //         title: Text('Bottom Sheet Example'),
    //         subtitle: Text('Tap to show Bottom Sheet'),
    //         onTap: (){
    //           Get.bottomSheet(
    //             Container(
    //               decoration: BoxDecoration(
    //                 color: Colors.white,
    //                 borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    //               ),
    //               padding: EdgeInsets.all(20),
    //               child: Column(
    //                 children: [
    //                   ListTile(
    //                     leading: Icon(Icons.light_mode),
    //                     title: Text('Light Mode'),
    //                     onTap: () {
    //                       Get.changeTheme(ThemeData.light());
    //                     },
    //                   ),
    //                   ListTile(
    //                     leading: Icon(Icons.dark_mode),
    //                     title: Text('Dark Mode'),
    //                     onTap: () {
    //                       Get.changeTheme(ThemeData.dark());
    //                     },
    //                   ),
    //                 ],
    //             ),
    //             ),
    //           );
    //         }
    //       ),
    //     ),
    //     Center(
    //       child: TextButton(onPressed: (){Get.to(ScreenOne());}, child: Text('Go to Next Page 1'))),
    //       Center(
    //       child: TextButton(onPressed: (){
    //         // Get.to(ScreenTwo());
    //         Get.toNamed('/screenTwo');
    //         },
    //         child: Text('Go to Next Page 2'))),
    //     ],
    //   ),
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       Get.snackbar('Hello', 'This is a GetX Snackbar',
    //       snackPosition: SnackPosition.TOP,
    //       backgroundColor: Colors.black,
    //       colorText: Colors.white
    //       );
    //     },
    //     child: const Icon(Icons.add),
    //   ),
    // );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Counter')
    //     ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     ListTile(
        //       title: Text('hello'.tr),
        //       subtitle: Text('message'.tr),
        //     ),
        //     SizedBox(height: 20),
        //     Row(
        //       children: [
        //         OutlinedButton(onPressed: (){
        //           Get.updateLocale(Locale('en','US'));
        //         }, child: Text("English")),
        //         SizedBox(width: 10),
        //         OutlinedButton(onPressed: (){
        //           Get.updateLocale(Locale('es','ES'));
        //         }, child: Text("Spanish")),
        //         SizedBox(width: 10),
        //         OutlinedButton(onPressed: (){
        //           Get.updateLocale(Locale('bn','BD'));
        //         }, child: Text("Bengali"))
        //       ],
        //     )
        //   ],
        // ),
        // body: Center(
        //   child: Obx(() => Text(
        //     counterController.counter.value.toString(),
        //     style: TextStyle(fontSize: 40),
        //   )),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){
        //     counterController.incrementCounter();
        //   },
        //   child: Icon(Icons.add),
        // )
        // );
        print('build called');
        return Scaffold(
          appBar: AppBar(
            title: const Text('GetX Works'),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notifications'),
                  Obx(() {
  return Switch(
    value: exampleController.notification.value,
    onChanged: (value) {
      exampleController.setNotification(value);
    },
  );
})

                ],
              )
            ],
          ),
        );
  }
}
