class Certificate {
  final String? name, ref, text;
  final String logo;

  Certificate({this.name, this.ref, this.text, required this.logo});
}

final List<Certificate> demo_certificates = [
  Certificate(
      name: "Microsoft AZ-900",
      ref: "https://www.credly.com/badges/213891ef-14c0-4a3f-b15f-f589a4415ab7/public_url",
      text: "azure",
      logo: 'assets/images/microsoft.png'
  ),
  Certificate(
      name: "Flutter",
      ref: "https://www.udemy.com/certificate/UC-5f02860c-4ad0-4160-ac16-018b123ab714",
      text: "flutter",
      logo: 'assets/images/flutter.png'
  ),
  Certificate(
      name: "Python",
      ref: "https://drive.google.com/file/d/1tM6C-e4gjJpnKFJF8eu4Zvrj_PH-QcaQ/view?usp=sharing",
      text: "python",
      logo: 'assets/images/python.png'
  ),
  Certificate(
      name: "Security and Hacking Pentest",
      ref: "https://drive.google.com/file/d/1zypGWCENyx2GMSH7Zfdasuzc3ZBvIniJ/view?usp=sharing",
      text: "hacking",
      logo: 'assets/images/solyd.jpg'
  ),
];