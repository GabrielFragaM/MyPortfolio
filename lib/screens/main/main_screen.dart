import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:provider/provider.dart';

import '../../models/app_language_model.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomSlidingSegmentedControl<int>(
          initialValue: 1,
          children: {
            1: Image.asset('assets/images/unitedstates.png'),
            2: Image.asset('assets/images/brazil.png'),
          },
          decoration: BoxDecoration(
            color: CupertinoColors.lightBackgroundGray,
            borderRadius: BorderRadius.circular(8),
          ),
          fixedWidth: 60,
          thumbDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.3),
                blurRadius: 4.0,
                spreadRadius: 1.0,
                offset: Offset(
                  0.0,
                  2.0,
                ),
              ),
            ],
          ),
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInToLinear,
          onValueChanged: (v) async {
            await Future.delayed(Duration(milliseconds: 300));
            final languageProvider = Provider.of<LanguageProvider>(context, listen: false);
            Locale newLocale = v == 2 ? const Locale('pt') : const Locale('en');
            languageProvider.setLocale(newLocale);
          },
        ),
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width:  Responsive.isDesktop(context) ? defaultPadding : 5),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                ),
              ),
              SizedBox(width:  Responsive.isDesktop(context) ? 0 : 5),
            ],
          ),
        ),
      ),
    );
  }
}
