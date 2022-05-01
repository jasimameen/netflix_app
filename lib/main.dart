import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'application/downloads/downloads_bloc.dart';
import 'application/fast_laugh/fast_laugh_bloc.dart';
import 'application/home/home_bloc.dart';
import 'application/new_and_hot/new_and_hot_bloc.dart';
import 'application/search/search_bloc.dart';
import 'application/video_details/video_details_bloc.dart';
import 'core/colors/colors.dart';
import 'domain/core/di/injectable.dart';
import 'presentation/main_page/widgets/screen_main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<DownloadsBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => getIt<FastLaughBloc>()),
        BlocProvider(create: (ctx) => getIt<NewAndHotBloc>()),
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
        BlocProvider(create: (ctx) => getIt<VideoDetailsBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Netflix',
        theme: ThemeData(
          primarySwatch: kWhiteMaterial,
          backgroundColor: backgroundColor,
          scaffoldBackgroundColor: backgroundColor,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          textTheme:  TextTheme(
            bodyText1: GoogleFonts.montserrat(color: kWhiteColor),
            bodyText2: GoogleFonts.montserrat(color: kWhiteColor),
          ),
          iconTheme: const IconThemeData(color: kWhiteColor),
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
