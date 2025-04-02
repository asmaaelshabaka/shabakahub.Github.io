import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shabaka Hub',
      // home: const FirstScreen(),
      routes: {
        '/': (context) => const FirstScreen(),
        '/Second-Screen': (context) => const SecondScreen()
      },
      getPages: [
        GetPage(name: '/', page: () => const FirstScreen()),
        GetPage(name: '/Second-Screen', page: () => const SecondScreen())
      ],
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'simple navigation',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SecondScreen()));
                },
                child: const Text('Default nav'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(SecondScreen());
                },
                child: const Text('Getx Nav'),
              ),
            ),
            Divider(),
            const Text(
              'Names Nav',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/Second-Screen');
                },
                child: Text('Default Nmae Nav'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/Second-Screen?coursename=blinderlevel1',
                      arguments: 'ISA we will WIN');
                },
                child: Text('Named Getx Nav'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: [Text(Get.parameters['coursename']?? ''),Text('data')],),
      ),
    );
  }
}
