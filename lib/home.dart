import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_protest2/provider/bottom_navigation_provider.dart';

import 'package:today_protest2/shared/theme.dart';

import 'ui/count_home_widget.dart';
import 'ui/movie_list_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget _navigationBody(BottomNavigationProvider bottomNavigationProvider) {
    switch (bottomNavigationProvider.currentPage) {
      case 0:
        return const CountHomeWidget();
      case 1:
        return const MovieListWidget();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    BottomNavigationProvider bottomNavigationProvider =
        Provider.of<BottomNavigationProvider>(context);

    return Scaffold(
      // body: const CountHomeWidget(),
      body: _navigationBody(bottomNavigationProvider),
      bottomNavigationBar: _BottomNavigationBar(
          bottomNavigationProvider: bottomNavigationProvider),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  final BottomNavigationProvider bottomNavigationProvider;

  const _BottomNavigationBar({Key? key, required this.bottomNavigationProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavigationProvider>(
      builder: (context, provider, widget) {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'movies')
          ],
          currentIndex: bottomNavigationProvider.currentPage,
          selectedItemColor: customColor[ColorType.red],
          onTap: (index) {
            bottomNavigationProvider.updateCurrentPage(index);
          },
        );
      },
    );
  }
}
