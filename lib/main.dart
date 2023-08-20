import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:gamevault_app/features/HomeScreen/representation/manager/featured_game_cubit/featured_games_cubit.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Make android status bar transparent for all the pages
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return BlocProvider<FeaturedGamesCubit>(
        create: (context) => FeaturedGamesCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Game Vault',
          themeMode: ThemeMode.dark,
          theme: ThemeData(
            // This is the theme of your application.
            //
            // TRY THIS: Try running your application with "flutter run". You'll see
            // the application has a blue toolbar. Then, without quitting the app,
            // try changing the seedColor in the colorScheme below to Colors.green
            // and then invoke "hot reload" (save your changes or press the "hot
            // reload" button in a Flutter-supported IDE, or press "r" if you used
            // the command line to start the app).
            //
            // Notice that the counter didn't reset back to zero; the application
            // state is not lost during the reload. To reset the state, use hot
            // restart instead.
            //
            // This works for code too, not just values: Most code changes can be
            // tested with just a hot reload.
            brightness: Brightness.dark,
            useMaterial3: true,
          ),
          home: const HomeView(),
        ),
      );
      }
    );
  }
}
