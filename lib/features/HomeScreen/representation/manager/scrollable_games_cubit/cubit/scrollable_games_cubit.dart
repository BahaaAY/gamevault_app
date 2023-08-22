import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamevault_app/core/models/data.dart';
part 'scrollable_games_state.dart';

class ScrollableGamesCubit extends Cubit<ScrollableGamesState> {
  ScrollableGamesCubit() : super(ScrollableGamesInitial());

  final gamesList = games;
}
