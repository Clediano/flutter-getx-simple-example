import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmobx/app/pages/home/controller/home_controller.dart';
import 'package:kmobx/app/services/api_service.dart';
import 'package:kmobx/app/widgets/snackbar_widget.dart';

class DetailPage extends StatelessWidget {
  //Encontra uma instância da classe já injetada(não injeta novamente)
  final apiService = Get.find<ApiService>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail page"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Snackbar().success(
              title: "Título do snackbar",
              messageText: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Message do snackbar"),
                  TextButton(
                    child: Text("Dimiss"),
                    onPressed: () {},
                  )
                ],
              ),
            );
            // Get.back();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${homeController.count}",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Text("This is DetailPage"),
            TextButton(
              onPressed: () {
                Get.toNamed("/home");
              },
              child: Text("Go to home"),
            ),
            Text("ARGUMENTO: ${Get.arguments}"),
            Text("PARAMETRO: ${Get.parameters['id']}"),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () => homeController.increment(),
      ),
    );
  }
}
