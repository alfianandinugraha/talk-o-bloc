import 'package:flutter/material.dart';

class BackScreenButton extends StatelessWidget {
  const BackScreenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: 'backScreenButton',
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Icon(Icons.arrow_back),
    );
  }
}
