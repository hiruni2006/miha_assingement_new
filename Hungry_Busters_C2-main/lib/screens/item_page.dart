import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_busters/screens/check_out.dart';
import 'package:hungry_busters/utils/colors.dart';
import 'package:hungry_busters/utils/fonts.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/pasta.png",
                height: 388,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                  color: Colors.white,
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pasta Mozzarella",
                                style: Fonts.fontBold.copyWith(
                                    color: CustomColors.primaryColor,
                                    fontSize: 24),
                              ),
                              Text(
                                "Non Veg Classic Meat",
                                style: Fonts.fontMedium,
                              ),
                              SizedBox(
                                width: 130,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: CustomColors.primaryColor,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: CustomColors.primaryColor,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: CustomColors.primaryColor,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: CustomColors.primaryColor,
                                      size: 20,
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: CustomColors.primaryColor,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "4.5",
                                      style: Fonts.fontMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.favorite_border_outlined,
                                size: 30,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                "1850 LKR",
                                style: Fonts.fontMedium
                                    .copyWith(color: CustomColors.primaryColor),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const OredrSummery()));
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
                            "Add to Bag",
                            style: Fonts.fontMedium
                                .copyWith(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        '''Pasta Mozzarella is a unique blend of cheesy goodness and fluffy flaky pasta richness. Pasta Mozzarella is served with your choice of protein or vegetable and any topping of the 
                         ''',
                        style: Fonts.fontMedium,
                      ),
                      Text(
                        'Portion serves two*',
                        style: Fonts.fontMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      Text(
                        "You might also like",
                        style: Fonts.fontMedium.copyWith(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/curry.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/burger.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/curry.png",
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/curry.png",
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
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
