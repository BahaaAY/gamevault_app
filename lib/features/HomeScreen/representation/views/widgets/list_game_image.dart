import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamevault_app/core/models/data.dart';

class ListGameImage extends StatelessWidget {
  const ListGameImage({
    super.key,
    required this.games,
  });

  final List<Game> games;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(12.w),
      ),
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: CachedNetworkImage(
            fit: BoxFit.cover, imageUrl: games[0].coverImage.url),
      ),
    );
  }
}