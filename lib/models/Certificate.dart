class Certificate {
  final String? name, ref, text;
  final String logo;

  Certificate({this.name, this.ref, this.text, required this.logo});
}

final List<Certificate> demo_certificates = [
  Certificate(
      name: "Microsoft AZ-900",
      ref: "https://www.credly.com/badges/213891ef-14c0-4a3f-b15f-f589a4415ab7/public_url",
      text: "The Azure Fundamentals exam verifies knowledge of Azure's cloud concepts, services, security, pricing, and support. It requires familiarity with key technology concepts, including networking, storage, and application development.",
      logo: 'assets/images/microsoft.png'
  ),
  Certificate(
      name: "Flutter",
      ref: "https://www.udemy.com/certificate/UC-5f02860c-4ad0-4160-ac16-018b123ab714",
      text: "Flutter is an open source framework developed and supported by Google. Frontend and full-stack developers use Flutter to build an application's user interface (UI) for multiple platforms with a single codebase.",
      logo: 'assets/images/flutter.png'
  ),
  Certificate(
      name: "Python",
      ref: "https://drive.google.com/file/d/1tM6C-e4gjJpnKFJF8eu4Zvrj_PH-QcaQ/view?usp=sharing",
      text: "The Python Programming course was a crucial part of my development as a software. In this course, I thoroughly explored the expansive world of Python, mastering everything from basic syntax and data structures to complex concepts like object-oriented programming and error handling.",
      logo: 'assets/images/python.png'
  ),
  Certificate(
      name: "Security and Hacking Pentest",
      ref: "https://drive.google.com/file/d/1zypGWCENyx2GMSH7Zfdasuzc3ZBvIniJ/view?usp=sharing",
      text: "The Introduction to Hacking and Pentest 2.0 course was an essential stepping stone for my journey into ethical hacking and pentesting.\n",
      logo: 'assets/images/solyd.jpg'
  ),
];