import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_profile/models/Project.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                FlutterI18n.translate(context, project.title!),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: Responsive.isMobileLarge(context) ? 11 : 15, color: Colors.white),
              ),
              Visibility(
                visible: project.title! != 'Other Projects',
                child: InkWell(
                  onTap: () async {
                    await launchUrl(
                      Uri.parse(project.ref!),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                  child: Text(
                    FlutterI18n.translate(context, "Show Project"),
                    style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            FlutterI18n.translate(context, project.description!),
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: Responsive.isMobileLarge(context) ? 11 : 13),
          ),
          Spacer(),
          SizedBox(
            height: 45,
            width: 300,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: project.images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset('assets/images/' + project.images[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
