import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // equal صفحة
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(
              Icons.battery_charging_full,
              size: 30,
            ),
            SizedBox(
              //layout widget
              width: 2,
            ),
            Text(
              'Counter',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              size: 35,
            ),
            splashRadius: 30,
          )
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Icon(
                    Icons.exposure_plus_1,
                    size: 35,
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                FloatingActionButton(
                  onPressed: () {
                    if (counter != 0) {
                      setState(() {
                        counter--;
                      });
                    }
                  },
                  child: const Icon(
                    Icons.exposure_minus_1,
                    size: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              child: const Text(
                'Clear',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
              ),
            ),
            Image.network(
              'https://static.wikia.nocookie.net/logo-timeline/images/c/cf/4B4A9751-D2BF-4A93-BDCC-CDCA5326B65F.png/revision/latest/scale-to-width-down/1000?cb=20210426191500',
            )
          ],
        ),
      ),
    );
  }
}
