import 'package:flutter/material.dart';
import 'package:hungry_busters/utils/colors.dart';
import 'package:hungry_busters/utils/fonts.dart';

class PopUpCard extends StatelessWidget {
  const PopUpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Container(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order',
                    style: Fonts.fontMedium,
                  ),
                  Text(
                    '9400 LKR',
                    style: Fonts.fontMedium,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery',
                    style: Fonts.fontMedium,
                  ),
                  Text(
                    '300 LKR',
                    style: Fonts.fontMedium,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: Fonts.fontBold,
                  ),
                  Text(
                    '9700 LKR',
                    style: Fonts.fontBold,
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Container(
                height: 52,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 18),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  color: Color.fromARGB(255, 243, 240, 240),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Apply Coupon Code',
                      style: Fonts.fontMedium,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Address',
                    style: Fonts.fontBold,
                  ),
                  Text(
                    "change",
                    style: Fonts.fontMedium
                        .copyWith(color: CustomColors.primaryColor),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Text(
                'Victoria Higgins\n34 D4, Rose Ave,\nTexas',
                style: Fonts.fontMedium,
              ),
              const SizedBox(height: 20.0),
              Text(
                'Payment Method:',
                style: Fonts.fontBold,
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'VISA **** .... 4656',
                    style: Fonts.fontMedium,
                  ),
                  Text(
                    "change",
                    style: Fonts.fontMedium
                        .copyWith(color: CustomColors.primaryColor),
                  ),
                ],
              ),
              Flexible(
                flex: 1,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
