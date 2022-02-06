import 'package:flutter/material.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/back_screen_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This page not contain any BLoC Provider"),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () async {
                const url = 'https://github.com/alfianandinugraha/talk-o-bloc';
                try {
                  await launch(url);
                } catch (err) {
                  print(err.toString());
                  print("Cannot open the url");
                }
              },
              icon: const Icon(Icons.code),
              label: const Text("alfianandinugraha/talk-o-bloc")
            )
          ],
        ),
      ),
      floatingActionButton: BackScreenButton(),
    );
  }
}
