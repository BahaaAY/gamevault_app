import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      return AspectRatio(
        aspectRatio: 9/14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: ListGameImage(gameImageUrl: game.coverImage.url,)),
            Text(
              style:TextStyle(fontSize: 28.sp),
              game.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }else
    {
      return AspectRatio(
        aspectRatio: 9/14,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: ListGameImage(gameImageUrl: game.coverImage.url,)),
            
          ],
        ),
      );
    }
  }
}