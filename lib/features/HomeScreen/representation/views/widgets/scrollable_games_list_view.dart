import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamevault_app/core/models/data.dart';
import 'package:gamevault_app/features/HomeScreen/representation/manager/scrollable_games_cubit/cubit/scrollable_games_cubit.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/widgets/scrollable_games_list_item.dart';

class ScrollableGamesListView extends StatelessWidget {
  const ScrollableGamesListView({
    super.key, required this.showTitle, required this.games,
  });
  final bool showTitle;
  final List<Game> games ;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: games.length,
          separatorBuilder: (context, index){
            return SizedBox(width: 12.w,);
          },
          itemBuilder: (context, index) {
            return ScrollableGamesListItem(
              game: games[index],
              showTitle: showTitle,
            );
          }),
    );
  }
}
