import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_busters/utils/colors.dart';
import 'package:hungry_busters/utils/fonts.dart';
import 'package:hungry_busters/widgets/food_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.menu,
                      color: CustomColors.primaryColor,
                      size: 30,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Text(
                      "Good Afternoon Victoria !",
                      style: Fonts.fontMedium,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/avatar.png',
                      ),
                      child: SizedBox(
                        height: 50,
                        width: 50,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 52,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(24),
                    ),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Search meals",
                        style: Fonts.fontMedium.copyWith(fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  "assets/banner.png",
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.primaryColor,
                      ),
                      child: Image.asset('assets/icon.png'),
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.primaryColor,
                      ),
                      child: Image.asset('assets/icon.png'),
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.primaryColor,
                      ),
                      child: Image.asset('assets/icon.png'),
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.primaryColor,
                      ),
                      child: Image.asset('assets/icon.png'),
                    ),
                    Container(
                      height: 56,
                      width: 56,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.primaryColor,
                      ),
                      child: Image.asset('assets/icon.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const FoodCard(
                  price: '2400 LKR',
                  foodName: 'Tex Mex BBQ',
                  image: "assets/burger.png",
                ),
                const FoodCard(
                  price: '1400 LKR',
                  foodName: 'Twin Burger',
                  image: "assets/burger.png",
                ),
                const FoodCard(
                  price: '1850 LKR',
                  foodName: 'Pasta Mozze',
                  image: "assets/pasta.png",
                ),
                const FoodCard(
                  price: '2400 LKR',
                  foodName: 'Tex Mex BBQ',
                  image: "assets/burger.png",
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        height: 72,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.home,
              size: 30,
              color: CustomColors.primaryColor,
            ),
            Icon(
              Icons.location_on_outlined,
              size: 30,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              size: 30,
            ),
            Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
