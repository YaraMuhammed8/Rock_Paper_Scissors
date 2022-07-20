import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/bloc/main_cubit/main_cubit.dart';

class ScoreItem extends StatelessWidget {
  ScoreItem({Key? key, required this.isUser}) : super(key: key);
  bool isUser;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = MainCubit.get(context);
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.indigo.shade800,
              border: Border.all(width: 3, color: Colors.indigo.shade900),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            "${isUser ? cubit.userScore : cubit.computerScore}",
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}
