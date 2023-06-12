import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';
import '../../../models/Certificate.dart';
import '../../../responsive.dart';

class CertificatesCard extends StatelessWidget {
  const CertificatesCard({
    Key? key,
    required this.certificate,
  }) : super(key: key);

  final Certificate certificate;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 230,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                certificate.name!,
                style: TextStyle(fontSize: Responsive.isMobileLarge(context) ? 11 : 15, color: Colors.white),
              ),
              Image.asset(
                certificate.logo,
                fit: BoxFit.cover,
                height: 35,
                width: 35,
              ),
            ],
          ),
          Text(
            FlutterI18n.translate(context, certificate.text!),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: Responsive.isMobileLarge(context) ? 11 : 13),
          ),
          InkWell(
            onTap: () async {
              await launchUrl(
                Uri.parse(certificate.ref!),
                mode: LaunchMode.externalApplication,
              );
            },
            child: Text(
              FlutterI18n.translate(context, "Show Certificate"),
              style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}