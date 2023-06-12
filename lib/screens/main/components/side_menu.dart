import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_profile/constants.dart';
import 'area_info_text.dart';
import 'knowledges.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: FlutterI18n.translate(context, "Residence"),
                      text: "Brazil",
                    ),
                    AreaInfoText(
                      title: FlutterI18n.translate(context, "City"),
                      text: "Canoas",
                    ),
                    AreaInfoText(
                      title: FlutterI18n.translate(context, "Age"),
                      text: "21",
                    ),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    //TextButton(
                    //  onPressed: () {},
                    //  child: FittedBox(
                    //    child: Row(
                    //      children: [
                    //        Text(
                    //          "DOWNLOAD CV",
                    //          style: TextStyle(
                    //            color: Theme.of(context)
                        //            .textTheme
                          //          .bodyText1!
                            //        .color,
                            //  ),
                            //),
                            //SizedBox(width: defaultPadding / 2),
                           // SvgPicture.asset("assets/icons/download.svg")
                          //],
                        //),
                      //),
                    //),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
