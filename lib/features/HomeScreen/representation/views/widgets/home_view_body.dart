import 'package:flutter/material.dart';
import 'package:gamevault_app/features/HomeScreen/representation/views/widgets/featured_games_pageview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const FeaturedGamesPageView(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF232d3b), Colors.transparent],
                stops: [0.65, 1],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
