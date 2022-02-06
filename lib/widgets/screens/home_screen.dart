import 'package:flutter/material.dart';
import 'package:talk_o_bloc/widgets/base/count.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/add_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/delete_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/increment_max_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/floating_button/reset_quote_button.dart';
import 'package:talk_o_bloc/widgets/base/list_quote.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: const [
            Count(),
            SizedBox(height: 5),
            Expanded(
              child: ListQuote()
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "/about");
            },
            child: const Icon(Icons.person),
            heroTag: 'toAboutScreenButton',
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "/total");
            },
            child: const Icon(Icons.check),
            heroTag: 'pushToTotalScreen',
          ),
          const SizedBox(height: 10),
          const IncrementMaxQuoteButton(),
          const SizedBox(height: 10),
          const ResetQuoteButton(),
          const SizedBox(height: 10),
          const DeleteQuoteButton(),
          const SizedBox(height: 10),
          const AddQuoteButton(),
        ],
      ),
    );
  }
}
