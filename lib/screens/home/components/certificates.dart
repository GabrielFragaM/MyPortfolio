import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_profile/screens/home/components/certificates_card.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import '../../../constants.dart';
import '../../../models/Certificate.dart';

class Certificates extends StatefulWidget {
  const Certificates({Key? key,
  }) : super(key: key);


  @override
  _CertificatesState createState() => _CertificatesState();

}

class _CertificatesState extends State<Certificates> {


  late InfiniteScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = InfiniteScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    FlutterI18n.translate(context, "Certificates"),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(width: 25,),
                  InkWell(
                    onTap: () {
                      controller.previousItem();
                    },
                    child: Icon(Icons.keyboard_double_arrow_left, size: 32, color: primaryColor),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  controller.nextItem();
                },
                child: Icon(Icons.keyboard_double_arrow_right, size: 32, color: primaryColor),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
                height: 260,
                width: double.infinity,
                child: Stack(
                  children: [
                    InfiniteCarousel.builder(
                      itemCount: demo_certificates.length,
                      itemExtent: 350,
                      center: false,
                      anchor: 0.0,
                      velocityFactor: 0.2,
                      controller: controller,
                      axisDirection: Axis.horizontal,
                      loop: true,
                      itemBuilder: (context, index, _) {
                        return Padding(
                          padding: const EdgeInsets.only(right: defaultPadding, bottom: 15, top: 15),
                          child: CertificatesCard(
                            certificate: demo_certificates[index],
                          ),
                        );
                      },
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}

