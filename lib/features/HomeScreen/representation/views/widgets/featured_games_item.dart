import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamevault_app/core/widgets/custom_circular_indicator.dart';
import 'package:gamevault_app/features/HomeScreen/representation/manager/featured_game_cubit/featured_games_cubit.dart';

class FeaturedGameItem extends StatelessWidget {
  const FeaturedGameItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<FeaturedGamesCubit>(context);
    return SizedBox(
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
        imageUrl: cubit.gamesList[index].coverImage.url,
      ),
    );
  }
}
