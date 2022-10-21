import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_protest2/provider/counter_provider.dart';
import 'package:today_protest2/shared/custom_text.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    return Center(
      child: Consumer<CounterProvider>(builder: (context, provider, child) {
        return CustomText(
          text: provider.count.toString(),
          typoType: TypoType.h1Title,
        );
      }),
    );
  }
}
