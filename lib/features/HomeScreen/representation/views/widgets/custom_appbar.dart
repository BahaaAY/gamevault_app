import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            width: 22.w,
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
