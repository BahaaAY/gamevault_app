import 'package:flutter/material.dart';
import 'package:gamevault_app/core/models/data.dart';

import 'list_game_image.dart';

class ScrollableGamesListItem extends StatelessWidget {
  const ScrollableGamesListItem({
    super.key,
    required this.game, required this.showTitle,
  });
  final bool showTitle;
  final Game game;

  @override
  Widget build(BuildContext context) {
    if(showTitle)
    {
      return SizedBox(
      width: MediaQuery.of(context).size.width * 0.27,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListGameImage(gameImageUrl: game.coverImage.url,),
          Text(
            game.title,
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
          ListGameImage(gameImageUrl: game.coverImage.url,),
        ],
      ),
    );
    }
  }
}