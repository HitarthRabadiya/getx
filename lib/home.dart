import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home-Screen"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("This is Home Screen",
            style: TextStyle(color: Colors.purpleAccent, fontSize: 30),),
          SizedBox(height: 8,),
          ElevatedButton(onPressed: () {

          }, child: Text("Next Screen",style: TextStyle(fontSize: 18),)),
          ElevatedButton(onPressed: () {
            /* Get.back();*/
            Get.back(result: 'This is From Home Screen');
          }, child: Text("Back to Main",style: TextStyle(fontSize: 18),)),
          SizedBox(height: 8,),
          /*Text("${Get.arguments}",style: TextStyle(color: Colors.green,fontSize: 20),),*/
        ],
      ),
    );
  }
}
