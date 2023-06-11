import 'package:flutter/material.dart';
import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(text: "Flutter, Dart"),
        KnowledgeText(text: "Azure, Firebase, Functions"),
        KnowledgeText(text: "Project Management"),
        KnowledgeText(text: "Analytical Profile"),
        KnowledgeText(text: "Rapid Development, Deadlines"),
        KnowledgeText(text: "I Love Solving Problems"),
        KnowledgeText(text: "Unit Tests, Android, Ios, Web"),
        KnowledgeText(text: "Internalization"),
        KnowledgeText(text: "Features Currency Converter"),
        KnowledgeText(text: "Multilingual Systems"),
        KnowledgeText(text: "Css, Less"),
        KnowledgeText(text: "Html, React, JS, Node JS"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(Icons.check, color: primaryColor),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}