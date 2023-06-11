import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/main_screen.dart';
import 'components/heighlights.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/certificates.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        Certificates(),
        MyProjects(),
        const SizedBox(height: 15),
      ],
    );
  }
}
