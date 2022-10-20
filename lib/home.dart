import 'package:flutter/material.dart';

import 'package:today_protest2/shared/theme.dart';

import 'shared/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade200.withOpacity(0.8)
          ])),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _CustomAppBar(),
        bottomNavigationBar: _CustomNavbar(),
        body: _CustomSearchBar(),
      ),
    );
  }
}

class _CustomSearchBar extends StatelessWidget {
  const _CustomSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                text: 'Welcom',
                typoType: TypoType.label,
                colorType: ColorType.white,
              ),
              const SizedBox(height: 20),
              CustomText(
                text: 'Enjoy your favorite music',
                typoType: TypoType.h1Bold,
                colorType: ColorType.white,
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: customColor[ColorType.white],
                  hintText: 'Search',
                  hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: customColor[ColorType.grey],
                      ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: customColor[ColorType.grey],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

class _CustomNavbar extends StatelessWidget {
  const _CustomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade800,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outlined), label: 'Favorite'),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline), label: 'Play'),
        BottomNavigationBarItem(
            icon: Icon(Icons.people_outline), label: 'Profile')
      ],
    );
  }
}

class _CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const _CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
            margin: const EdgeInsets.only(right: 20),
            child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fimage.utoimage.com%2Fpreview%2Fcp926367%2F2021%2F05%2F202105030734_500.jpg&type=a340')))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
