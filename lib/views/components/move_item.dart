import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rock_paper_scissors/bloc/main_cubit/main_cubit.dart';

import '../../models/moves_enum.dart';

class MoveItem extends StatelessWidget {
  MoveItem({Key? key, required this.move}) : super(key: key);
  Moves move;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainCubit, MainState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = MainCubit.get(context);
        return GestureDetector(
          onTap: () {
            cubit.makeMove(move.index, context);
          },
          child: Image.asset("assets/images/${move.name}.png",
              height: 100, width: 100),
        );
      },
    );
  }
}
