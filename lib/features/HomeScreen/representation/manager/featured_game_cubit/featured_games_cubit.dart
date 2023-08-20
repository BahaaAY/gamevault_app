import 'package:flutter/material.dart';
import 'package:gamevault_app/core/models/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_games_state.dart';

class FeaturedGamesCubit extends Cubit<FeaturedGamesState> {
  FeaturedGamesCubit() : super(FeaturedGamesInitial());

  final gamesList = games;
  int _index = 0; 

  PageController featuredGamesController =PageController(
  );

  void changeIndex(int index)
  {
   
    _index = index;
     print("Index : ${_index}" );
    emit(FeaturedGamesChange());
  }

  Game getCurrentFeatured()
  {
    return gamesList[_index];
  }
  
}
