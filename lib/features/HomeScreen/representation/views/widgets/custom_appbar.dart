import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              FontAwesomeIcons.bars,
              color: Colors.white,
              size: 22,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 22,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              FontAwesomeIcons.solidHeart,
              color: Colors.white,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
