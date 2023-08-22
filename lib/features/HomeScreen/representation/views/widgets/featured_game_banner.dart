import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gamevault_app/core/widgets/custom_circular_indicator.dart';

class FeaturedGameBanner extends StatelessWidget {
  const FeaturedGameBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.15,
        child: CachedNetworkImage(
          fit: BoxFit.cover,
          placeholder: (context, url) {
            return const CustomCircularIndicator();
          },
          errorWidget: (context, url, error) {
            return const Icon(
              Icons.error_outline,
              size: 32,
            );
          },
          imageUrl:
              'https://c4.wallpaperflare.com/wallpaper/214/187/691/video-games-video-game-art-ultrawide-ultra-wide-need-for-speed-heat-hd-wallpaper-preview.jpg',
        ),
      ),
    );
  }
}
