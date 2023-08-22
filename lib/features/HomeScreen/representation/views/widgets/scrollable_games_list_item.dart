import 'package:flutter/material.dart';
import 'package:gamevault_app/core/models/data.dart';

import 'list_game_image.dart';

class ScrollableGamesListItem extends StatelessWidget {
  const ScrollableGamesListItem({
    super.key,
    required this.games, required this.showTitle,
  });
  final bool showTitle;
  final List<Game> games;

  @override
  Widget build(BuildContext context) {
    if(showTitle)
    {
      return SizedBox(
      width: MediaQuery.of(context).size.width * 0.27,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListGameImage(games: games),
          Text(
            games[0].title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    }else
    {
      return SizedBox(
      width: MediaQuery.of(context).size.width * 0.27,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListGameImage(games: games),
        ],
      ),
    );
    }
  }
}