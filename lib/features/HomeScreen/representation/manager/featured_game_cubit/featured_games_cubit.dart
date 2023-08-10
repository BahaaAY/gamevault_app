import 'package:flutter/material.dart';
import 'package:gamevault_app/core/models/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_games_state.dart';

class FeaturedGamesCubit extends Cubit<FeaturedGamesState> {
  FeaturedGamesCubit() : super(FeaturedGamesInitial());

  final gamesList = games;
}
