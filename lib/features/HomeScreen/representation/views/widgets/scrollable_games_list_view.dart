import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamevault_app/core/models/data.dart';
import 'package:gamevault_app/features/HomeScreen/representation/manager/scrollable_games_cubit/cubit/scrollable_games_cubit.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/widgets/scrollable_games_list_item.dart';

class ScrollableGamesListView extends StatelessWidget {
  const ScrollableGamesListView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    List<Game> games = BlocProvider.of<ScrollableGamesCubit>(context).gamesList;
    return SizedBox(
    
      height: 200.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: games.length,
          separatorBuilder: (context, index){
            return SizedBox(width: 12.w,);
          },
          itemBuilder: (context, index) {
            return ScrollableGamesListItem(
              game: games[index],
              showTitle: true,
            );
          }),
    );
  }
}
