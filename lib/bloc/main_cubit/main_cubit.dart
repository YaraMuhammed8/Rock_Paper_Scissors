import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:rock_paper_scissors/services/methods/custom_overlay.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());
  static MainCubit get(context) => BlocProvider.of(context);
  int userScore = 0;
  int computerScore = 0;
  int computerMove = 0;
  var random = Random();

  // 0 for rock > 2
  // 1 for paper > 0
  // 2 for scissors > 1
  void makeMove(int userMove, context) {
    computerMove = random.nextInt(3);
    showOverlay(context, userMove: userMove, computerMove: computerMove);
    if (userMove == computerMove)
      ;
    else if ((userMove == 0 && computerMove == 2) ||
        (userMove == 1 && computerMove == 0) ||
        (userMove == 2 && computerMove == 1)) {
      userScore++;
      emit(ChangeScore());
    } else {
      computerScore++;
      emit(ChangeScore());
    }
  }

  void resetScore() {
    userScore = computerScore = 0;
    emit(ChangeScore());
  }
}
