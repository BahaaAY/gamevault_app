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
    return  const Stack(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const CustomAppBar(),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const FeaturedGameInfo(),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 12.w),
            child:  ScrollableGamesListView(
              games:BlocProvider.of<ScrollableGamesCubit>(context).gamesList1 ,
              showTitle: true,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: const FeaturedGameBanner(),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 12.w),
            child:  ScrollableGamesListView(
              games:BlocProvider.of<ScrollableGamesCubit>(context).gamesList2 ,
              showTitle: false,
            ),
          ),
        ],
      ),
    );
  }
}
