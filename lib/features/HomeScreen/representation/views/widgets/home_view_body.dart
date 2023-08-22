import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamevault_app/features/HomeScreen/representation/manager/featured_game_cubit/featured_games_cubit.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/widgets/featured_games_pageview.dart';
import 'custom_appbar.dart';
import 'featured_game_info.dart';
import 'gradient_bg.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        FeaturedGamesPageView(),
        GradientBackground(),
        TopLayer(),
      ],
    );
  }
}

class TopLayer extends StatelessWidget {
  const TopLayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var games = BlocProvider.of<FeaturedGamesCubit>(context).gamesList;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SizedBox(
              height: 130.h,
            ),
            const FeaturedGameInfo(),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.27,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.w),
                    ),
                    child: AspectRatio(
                      aspectRatio: 9 / 16,
                      child: CachedNetworkImage(
                          fit: BoxFit.cover, imageUrl: games[0].coverImage.url),
                    ),
                  ),
                  Text(
                    games[0].title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
