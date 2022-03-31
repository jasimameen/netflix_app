import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_project/application/search/search_bloc.dart';
import 'package:provider/src/provider.dart';
import '../../core/colors/colors.dart';
import '../../core/colors/constants.dart';
import 'widgets/search_idle.dart';
import 'widgets/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<SearchBloc>().add(const SearchEvent.initialize());
    });

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: kGreyColor.withOpacity(.4),
              padding: const EdgeInsetsDirectional.fromSTEB(10.8, 8, 5, 8),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: kGreyColor,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: kGreyColor,
              ),
              style: const TextStyle(
                color: kWhiteColor,
              ),
            ),
            kHeight,
            const SearchIdleWidget(),
            // const SearchResultWidget()
          ],
        ),
      ),
    ));
  }
}
