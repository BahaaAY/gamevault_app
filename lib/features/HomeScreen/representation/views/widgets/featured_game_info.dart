import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../manager/featured_game_cubit/featured_games_cubit.dart';

class FeaturedGameInfo extends StatelessWidget {
  const FeaturedGameInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var featuredCubit = BlocProvider.of<FeaturedGamesCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<FeaturedGamesCubit, FeaturedGamesState>(
              builder: (context, state) {
                return Text(
                  "${featuredCubit.getCurrentFeatured().title}\n",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  
                  overflow: TextOverflow.ellipsis,
                );
              },
            ),
            SizedBox(
              height: 12.h,
            ),
            SmoothPageIndicator(
              controller: featuredCubit.featuredGamesController,
              count: featuredCubit.gamesList.length,
            ),
      ],
    );
  }
}
