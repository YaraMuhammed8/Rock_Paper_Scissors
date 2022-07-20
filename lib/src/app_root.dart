import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/bloc/main_cubit/main_cubit.dart';
import 'package:rock_paper_scissors/styles/themes/apptheme.dart';
import 'package:rock_paper_scissors/views/splash_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MainCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: SplashScreen(),
      ),
    );
  }
}
