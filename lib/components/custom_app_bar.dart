import 'package:doctor/screens/search/search_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.text,
    required this.title,
  }) : super(key: key);

  final String text, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Text.rich(
            TextSpan(
              text: "$text\n",
              style: Theme.of(context).textTheme.titleLarge,
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchScreen(),
              ),
            ),
            // icon: SvgPicture.asset("assets/icons/Serach.svg"),
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            // icon: SvgPicture.asset("assets/icons/Chat.svg"),
            icon: Icon(
              Icons.chat_rounded,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
