import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamevault_app/features/HomeScreen/representation/manager/featured_game_cubit/featured_games_cubit.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/widgets/featured_games_item.dart';

class FeaturedGamesPageView extends StatelessWidget {
  const FeaturedGamesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
          itemCount:
              BlocProvider.of<FeaturedGamesCubit>(context).gamesList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return FeaturedGameItem(
              index: index,
            );
          })),
    );
  }
}
