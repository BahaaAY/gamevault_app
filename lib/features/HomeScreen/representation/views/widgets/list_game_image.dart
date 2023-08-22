import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamevault_app/core/widgets/custom_circular_indicator.dart';

class ListGameImage extends StatelessWidget {
  const ListGameImage({
    super.key,
    required this.gameImageUrl,
  });

  final String gameImageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
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
          imageUrl: gameImageUrl),
    );
  }
}
