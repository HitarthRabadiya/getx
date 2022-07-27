import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:getx_all/home.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Snakbar",
      home: Scaffold(
          appBar: AppBar(title: Text("Snakbar"),),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    Get.snackbar("SnackBar Title", "This will be snackbar Message",
                      onTap: (snack) {
                        print("Snakbar Clicked");
                      },
                      snackPosition: SnackPosition.TOP,
                      /*titleText: Text("Another Title"),
                  messageText: Text("Another Message",style: TextStyle(color: Colors.white),),*/
                      colorText: Colors.red,
                      backgroundColor: Colors.black,
                      borderRadius: 30,
                      margin: EdgeInsets.all(10),
                      /*maxWidth: 100,*/
                      animationDuration: Duration(milliseconds: 3000),
                      backgroundGradient: LinearGradient(colors: [Colors.red,Colors.green]),
                      borderColor: Colors.purple,
                      borderWidth: 4,
                      boxShadows: [
                        BoxShadow(
                          color: Colors.yellow,
                          offset: Offset(30,50),
                          spreadRadius: 20,
                          blurRadius: 8,
                        ),
                      ],
                      isDismissible: true,
                      dismissDirection: DismissDirection.horizontal,
                      forwardAnimationCurve: Curves.bounceInOut,
                      duration: Duration(milliseconds: 8000),
                      icon: Icon(Icons.send,color: Colors.white,),
                      shouldIconPulse: false,
                      leftBarIndicatorColor: Colors.white,
                      overlayBlur: 5,
                      /*overlayColor: Colors.grey,*/
                      padding: EdgeInsets.all(50),
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.deepOrange,
                      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      snackbarStatus: (val) {
                        print(val);
                      },
                      userInputForm: Form(child: Row(
                        children: [
                          Expanded(
                              child: TextField()),
                        ],
                      )),
                    );
                  }, child: Text("Show Snackbar")),
                  ElevatedButton(onPressed: () {
                    /*Get.defaultDialog();*/
                    Get.defaultDialog(
                      title: "Dialog Title",
                      titleStyle: TextStyle(fontSize: 25,),
                      middleText: "This is Middle Text",
                      middleTextStyle: TextStyle(fontSize: 20,),
                      backgroundColor: Colors.purple,
                      radius: 80,
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Text("Data Loading"),
                          ),
                        ],
                      ),
                      textCancel: "Cancel",
                      cancelTextColor: Colors.white,
                      textConfirm: "Confirm",
                      confirmTextColor: Colors.white,
                      onCancel: () {},
                      onConfirm: () {},
                      buttonColor: Colors.green,
                      cancel: Text("Cancels",style: TextStyle(color: Colors.white,),),
                      confirm: Text("Confirms",style: TextStyle(color: Colors.white,),),
                      actions: [
                        ElevatedButton(onPressed: () {

                        }, child: Text('Action-1')),
                        ElevatedButton(onPressed: () {

                        }, child: Text('Action-2')),
                      ],
                      barrierDismissible: true,

                    );
                  }, child: Text("Show Dialog")),
                  ElevatedButton(onPressed: () {
                    Get.bottomSheet(
                      Container(
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: Icon(Icons.wb_sunny_outlined),
                              title: Text("Light Theme"),
                              onTap: () => {Get.changeTheme(ThemeData.light())},
                            ),
                            ListTile(
                              leading: Icon(Icons.wb_sunny),
                              title: Text("Dark Theme"),
                              onTap: () => {Get.changeTheme(ThemeData.dark())},
                            ),
                          ],
                        ),
                      ),
                      barrierColor: Colors.greenAccent.shade100,
                      backgroundColor: Colors.purpleAccent,
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 2,
                        ),
                      ),
                      enableDrag: true,
                    );
                  }, child: Text("Show Bottom sheet & Dynamic Theme")),
                  ElevatedButton(onPressed: () async {
                    /* Get.to(Home(),
                    fullscreenDialog: true,
                    transition: Transition.zoom,
                    duration: Duration(milliseconds: 4000,),
                    curve: Curves.bounceInOut,
                  );*/
                    /*Get.to(Home(),arguments: "Data from Main");*/
                    var data = await Get.to(Home());
                    print("The Recived Data is $data");
                  }, child: Text("Route Navigation for un-named Routes")),
                ],
              ),
            ),
          )x
      ),
    );
  }
}