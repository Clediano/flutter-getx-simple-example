import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Página não encontrada",
              style: TextStyle(fontSize: 22),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Voltar"),
            )
          ],
        ),
      ),
    );
  }
}
