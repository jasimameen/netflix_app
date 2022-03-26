import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';
import '../../widgets/custom_app_bar_widget.dart';

  PreferredSize newAndHotAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: CustomAppBarWidget(
        label: "New & Hot",
        bottom: TabBar(
          isScrollable: true,
          padding: const EdgeInsets.symmetric(vertical: 5),
          indicator: BoxDecoration(
            color: kWhiteColor,
            borderRadius: kRadius30,
          ),
          indicatorWeight: 0,
          labelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          unselectedLabelColor: kWhiteColor,
          tabs: const [
            Tab(
              text: "🍿 Comming Soon",
            ),
            Tab(text: "👀 Everone's Watching"),
          ],
        ),
      ),
    );
  }