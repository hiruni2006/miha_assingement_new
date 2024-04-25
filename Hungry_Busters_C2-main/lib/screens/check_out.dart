import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_busters/utils/colors.dart';
import 'package:hungry_busters/utils/fonts.dart';
import 'package:hungry_busters/widgets/chek_out_card.dart';

class OredrSummery extends StatelessWidget {
  const OredrSummery({super.key});

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
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Order Summery",
                  style: Fonts.fontBold,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CheckOutCard(
                  foodName: 'Tex Mex BBQ',
                  price: '2400 LKR',
                  image: 'assets/burger.png',
                ),
                const CheckOutCard(
                  foodName: 'Tex Mex BBQ',
                  price: '2400 LKR',
                  image: 'assets/burger.png',
                ),
                const CheckOutCard(
                  foodName: 'Tex Mex BBQ',
                  price: '2400 LKR',
                  image: 'assets/burger.png',
                ),
                const CheckOutCard(
                  foodName: 'Tex Mex BBQ',
                  price: '2400 LKR',
                  image: 'assets/burger.png',
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 15,
                          width: 15,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustomColors.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const HomePage()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 62,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: CustomColors.primaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      "Checkout ",
                      style: Fonts.fontMedium
                          .copyWith(fontSize: 16, color: Colors.white),
                    ),
                  ),
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
            ),
            Icon(
              Icons.location_on_outlined,
              size: 30,
            ),
            Icon(
              Icons.shopping_bag,
              size: 30,
              color: CustomColors.primaryColor,
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
