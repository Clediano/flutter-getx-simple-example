import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kmobx/app/pages/home/controller/home_controller.dart';
import 'package:kmobx/app/services/api_service.dart';

class HomePage extends GetView<HomeController> {
  final HomeController _homeController = Get.find<HomeController>();
  final ApiService _apiService = Get.find<ApiService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          IconButton(
            icon: Get.isDarkMode
                ? Icon(Icons.lightbulb)
                : Icon(Icons.monochrome_photos),
            onPressed: () {
              Get.changeThemeMode(
                Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
              );
            },
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${_homeController.count}",
                style: TextStyle(fontSize: 24),
              ),
            ),
            Text("This is HomePage"),
            TextButton(
              onPressed: () {
                Get.toNamed(
                  "/detail?id=id_passado_pela_rota",
                  arguments: "parametro passado para rota 'detail'",
                );
                print(_apiService.fetchTextFromApi());
              },
              child: Text("Go to detail"),
            ),
            SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Get.defaultDialog(
                  middleText: "Dialog made in 3 lines of code",
                  cancel: TextButton(
                    onPressed: () => Get.back(),
                    child: Text("Fechar"),
                  ),
                  confirm: TextButton(
                    onPressed: () {},
                    child: Text("Confirmar"),
                  ),
                );
              },
              child: Text("Open dialog"),
            ),
            TextButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.black54,
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text('Música'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.videocam),
                          title: Text('Vídeo'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.favorite_sharp),
                          title: Text('Favoritos'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text("Open BottomSheets"),
            ),
            TextButton(
              onPressed: () => Get.toNamed("/iaushdas"),
              child: Text("Página nao existe"),
            )
          ],
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () => _homeController.increment(),
      ),
    );
  }
}
