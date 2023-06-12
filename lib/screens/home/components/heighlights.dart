import 'package:flutter/material.dart';
import 'package:flutter_profile/responsive.dart';
import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                        counter: "4+",
                        label: "Languages"
                    ),
                    HeighLight(
                        counter: "5+",
                        label: "Frameworks"
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                        counter: "20+",
                      label: "Projects"
                    ),
                    HeighLight(
                        counter: "4+",
                      label: "Companies"
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                    counter: "4+",
                  label: "Languages"
                ),
                HeighLight(
                    counter: "5+",
                  label: "Frameworks"
                ),
                HeighLight(
                    counter: "20+",
                  label: "Projects"
                ),
                HeighLight(
                    counter: "4+",
                  label: "Companies"
                ),
              ],
            ),
    );
  }
}
