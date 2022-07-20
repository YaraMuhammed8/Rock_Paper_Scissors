import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/bloc/main_cubit/main_cubit.dart';
import 'package:rock_paper_scissors/models/moves_enum.dart';
import 'package:rock_paper_scissors/views/components/move_item.dart';
import 'package:rock_paper_scissors/views/components/score_item.dart';
import 'package:rock_paper_scissors/views/components/setting_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = MainCubit.get(context);
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/wallpaper.png",
                  ),
                  fit: BoxFit.cover)),
          child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => SimpleDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Color(0xff1B2463),
                                title: const Text(
                                  "Settings",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                ),
                                children: [
                                  SimpleDialogOption(
                                    onPressed: () {
                                      cubit.resetScore();
                                    },
                                    child: SettingItem(
                                      text: "RESET",
                                    ),
                                  ),
                                  SimpleDialogOption(
                                    onPressed: () {
                                      exit(0);
                                    },
                                    child: SettingItem(
                                      text: "QUIT",
                                    ),
                                  ),
                                ],
                              ));
                    },
                    icon: const Icon(
                      Icons.settings_outlined,
                    ))
              ],
            ),
            body: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ScoreItem(isUser: true),
                    ScoreItem(isUser: false),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MoveItem(move: Moves.rock),
                    MoveItem(move: Moves.paper),
                    MoveItem(move: Moves.scissors),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
