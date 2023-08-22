import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gamevault_app/core/models/data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_games_state.dart';

class FeaturedGamesCubit extends Cubit<FeaturedGamesState> {
  FeaturedGamesCubit() : super(FeaturedGamesInitial());

  final gamesList = featuredGames;
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
  void startSlider()
  {
     int currentPage = 0;
     bool end = false;
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
  if (currentPage == gamesList.length) {
    end = true;
  } else if (currentPage == 0) {
    end = false;
  }

  if (end == false) {
    currentPage++;
  } else {
    currentPage--;
  }

  featuredGamesController.animateToPage(
    currentPage,
    duration: const Duration(milliseconds: 1000),
    curve: Curves.easeIn,
  );
});
  }
  
}
