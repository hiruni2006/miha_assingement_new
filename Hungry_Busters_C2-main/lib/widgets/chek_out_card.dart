import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hungry_busters/utils/colors.dart';
import 'package:hungry_busters/utils/fonts.dart';

class CheckOutCard extends StatelessWidget {
  final String price;
  final String image;
  final Color? iconColor;
  final String foodName;
  const CheckOutCard(
      {super.key,
      required this.price,
      required this.image,
      this.iconColor,
      required this.foodName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 231, 226, 226)),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 86,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        foodName,
                        style: Fonts.fontBold,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 130,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        price,
                        style: Fonts.fontReguler.copyWith(
                            color: CustomColors.primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.add_circle_outline_outlined,
                            size: 30,
                            color: CustomColors.primaryColor,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                            "3",
                            style: Fonts.fontMedium,
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          const Icon(
                            Icons.remove_circle_outline_outlined,
                            size: 30,
                            color: CustomColors.primaryColor,
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
