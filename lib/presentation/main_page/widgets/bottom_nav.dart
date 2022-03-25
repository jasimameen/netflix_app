import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);


class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int index, _) => BottomNavigationBar(
        currentIndex: index,
        onTap: (index) => indexChangeNotifier.value = index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: kWhiteColor,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: kWhiteColor),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.collections),
            label: "New & Hot",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.smiley),
            label: "Fast Laugh",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_down),
            label: "Downloads",
          ),
        ],
      ),
    );
  }
}
