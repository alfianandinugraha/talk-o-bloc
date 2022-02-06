import 'package:flutter/material.dart';
import 'package:talk_o_bloc/widgets/base/count.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/reset_quote_button.dart';

class TotalScreen extends StatelessWidget {
  const TotalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Count()
        ],
      ),
      floatingActionButton: const ResetQuoteButton(),
    );
  }
}
