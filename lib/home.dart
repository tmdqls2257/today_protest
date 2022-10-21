import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_protest2/provider/counter_provider.dart';
import 'package:today_protest2/shared/custom_text.dart';

import 'ui/count_home_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider =
        Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Provider Sample',
        ),
      ),
      body: const CountHomeWidget(),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        IconButton(
            onPressed: () {
              counterProvider.add();
            },
            icon: const Icon(Icons.add)),
        IconButton(
            onPressed: () {
              counterProvider.remove();
            },
            icon: const Icon(Icons.remove))
      ]),
    );
  }
}
