import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/downloads/downloads_bloc.dart';
import 'package:netflix_project/core/colors/strings.dart';
import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';
import '../../widgets/custom_app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  final _widgetsList = [
    const _Section1(),
    _Section2(),
    const _Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBarWidget(label: "Downloads"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) => _widgetsList[index],
        separatorBuilder: (ctx, index) => const SizedBox(height: 20),
        itemCount: _widgetsList.length,
      ),
    );
  }
}

class _Section1 extends StatelessWidget {
  const _Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(Icons.settings),
        kWidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class _Section2 extends StatelessWidget {
  _Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // here below statement used to call the api after the complete ui loaded
    // so here when the ui loaded completely the next call will be the below statement
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      context
          .read<DownloadsBloc>()
          .add(const DownloadsEvent.getDownloadsImage());
    });

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const Text(
          "Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        const Text(
          "We'll download a personalized selection of\n movies and shows for you, so there's\n always something watch on your\n devvice.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kGreyColor,
            fontSize: 19,
            fontWeight: FontWeight.w700,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: BlocBuilder<DownloadsBloc, DownloadsState>(
            builder: (context, state) {
              return SizedBox(
                width: size.width,
                // height: size.width,
                child: state.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          state.isLoading
                              ? const CircularProgressIndicator()
                              : CircleAvatar(
                                  radius: size.width * .32,
                                  backgroundColor: kGreyColor.withOpacity(.5),
                                ),
                          DownloadPageCenterImageWidget(
                            image:
                                "$imageAppendUrl/${state.downloads[0].posterPath}",
                            size: Size(size.width * .28, size.width * .43),
                            angle: 20,
                            leftMargin: 190,
                          ),
                          DownloadPageCenterImageWidget(
                            image:
                                "$imageAppendUrl/${state.downloads[1].posterPath}",
                            size: Size(size.width * .28, size.width * .43),
                            angle: -20,
                            rightMargin: 190,
                          ),
                          DownloadPageCenterImageWidget(
                            image:
                                "$imageAppendUrl/${state.downloads[2].posterPath}",
                            size: Size(size.width * .35, size.width * .48),
                            angle: 0,
                            bottomMargin: 30,
                          )
                        ],
                      ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Section3 extends StatelessWidget {
  const _Section3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          onPressed: () {},
          minWidth: MediaQuery.of(context).size.width * .85,
          color: kButtonColorBlueAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Setup",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        kHeight,
        MaterialButton(
          onPressed: () {},
          color: kButtonColorWhite,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "See What you can Download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DownloadPageCenterImageWidget extends StatelessWidget {
  const DownloadPageCenterImageWidget({
    Key? key,
    required this.image,
    required this.size,
    this.angle = 0,
    this.leftMargin = 0,
    this.rightMargin = 0,
    this.topMargin = 0,
    this.bottomMargin = 20,
  }) : super(key: key);

  final String image;
  final Size size;
  final double angle;
  final double leftMargin;
  final double rightMargin;
  final double topMargin;
  final double bottomMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftMargin,
        right: rightMargin,
        bottom: bottomMargin,
      ),
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}