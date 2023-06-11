import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_profile/constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.10,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            WidgetCircularAnimator(
              size: 130,
              innerIconsSize: 3,
              outerIconsSize: 3,
              innerAnimation: Curves.easeInOutBack,
              outerAnimation: Curves.easeInOutBack,
              innerColor: Color(0xFF3096FF),
              outerColor: primaryColor,
              innerAnimationSeconds: 10,
              outerAnimationSeconds: 10,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Gabriel Fraga",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 0),
              child: Text(
                "Full Stack Developer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 5, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "gabriel.fraga@pawaresoftwares.com.br",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      height: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(text: "gabriel.fraga@pawaresoftwares.com.br"));
                      Fluttertoast.showToast(
                        msg: "Email copied!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                      );
                    },
                    child: Icon(Icons.copy_outlined, size: 14, color: primaryColor,),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "+55 51 99695-6456",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      height: 1.5,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Clipboard.setData(ClipboardData(text: "+55 51 99695-6456"));
                      Fluttertoast.showToast(
                        msg: "Phone number copied!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                      );
                    },
                    child: Icon(Icons.copy_outlined, size: 14, color: primaryColor,),
                  )
                ],
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
