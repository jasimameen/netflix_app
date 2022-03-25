import 'package:flutter/material.dart';
import '../widgets/custom_app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBarWidget(
          label: "New & Hot",
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Comming Soon",
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Text("ScreenNewAndHot"),
      ),
    );
  }
}
