import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gamevault_app/features/HomeScreen/representation/manager/scrollable_games_cubit/cubit/scrollable_games_cubit.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/widgets/featured_games_pageview.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/widgets/scrollable_games_list_view.dart';
import 'custom_appbar.dart';
import 'featured_game_banner.dart';
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
            BlocProvider(
              create: (context) => ScrollableGamesCubit(),
              child: const ScrollableGamesListView(),
            ),
            FeaturedGameBanner(),
          ],
        ),
      ),
    );
  }
}

