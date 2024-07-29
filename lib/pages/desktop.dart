import 'package:flutter/material.dart';
import 'package:respoweb/variables/definedheight_width.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenUtil = ScreenUtil(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 253, 175),
      appBar: AppBar(
        title: const Text('D E S K T O P'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First column
            Expanded(
              child: Column(
                children: [
                  // youtube video
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: const Color.fromARGB(255, 206, 246, 8),
                      ),
                    ),
                  ),

                  // comment section & recommended videos
                  Expanded(
                    child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: const Color.fromARGB(255, 255, 164, 7),
                            height: screenUtil.height * 0.3,
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),

            // second column
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenUtil.width * 0.3,
                color: const Color.fromARGB(255, 207, 233, 178),
              ),
            )
          ],
        ),
      ),
    );
  }
}
