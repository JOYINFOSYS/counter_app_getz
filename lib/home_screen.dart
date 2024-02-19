
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

final controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),

      ),
      body:  Center(
        child:Obx(() => Text(controller.count.value.toString(),style: const TextStyle(fontSize: 40,fontWeight: FontWeight.w700)),),),
        floatingActionButton: FloatingActionButton(onPressed: (){
        controller.increment();
      },
    child: const Icon(Icons.add),

    ),

    );
  }
}