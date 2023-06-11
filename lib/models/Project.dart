class Project {
  final String? title, description, ref;
  final List<String> images;

  Project({this.title, this.description, this.ref, required this.images});
}

List<Project> demo_projects = [
  Project(
      title: "Auto Checklist",
      description: "Project developed for a large shipyard company in Brazil aimed at reducing paperwork generated during the construction, integration, and commissioning of offshore oil and gas production platforms, under the EPC (Engineering, Procurement, and Construction) modality.",
      ref: 'https://www.pawaresoftwares.com.br',
      images: ['azure.png', 'c#.png', 'netcore.png', 'firebase.png', 'flutter.png', 'react.png']
  ),
  Project(
      title: "MyTreasure",
      description:
      "A complete social media app, similar to Instagram, with the added feature of creating auctions in posts and much more.",
      ref: 'https://play.google.com/store/apps/details?id=com.my_treasure_app',
      images: ['firebase.png', 'flutter.png', 'node.png']
  ),
  Project(
      title: "Paware Softwares",
      description:
      "Founder of Paware Softwares where I carried out various projects for automations and systems for several market companies.",
      ref: 'https://www.pawaresoftwares.com.br',
      images: ['azure.png', 'firebase.png', 'google.png', 'microsoft.png', 'react.png', 'azure.png', 'python.png', 'flutter.png', 'node.png']
  ),
  Project(
      title: "PMT",
      description:
      "Participated in the project on the front-end using React Native, developing the project screens. The system is a more effective hotel management system that allows extensive control of the hotel's needs, not only in reservation management but also in automated pricing tools.",
      ref: 'https://www.dione.solutions/pt-br/clients.html',
      images: ['react.png', 'azure.png', 'python.png']
  ),
  Project(
      title: "JB PREMIUM",
      description: 'A betting platform created with Flutter Web and .NET CORE API, where users place bets on a popular game in Brazil called "Jogo do bicho".',
      ref: 'https://jb-premium.com',
      images: ['flutter.png', 'firebase.png', 'react.png', 'netcore.png']
  ),
  Project(
      title: "Radiology Blog",
      description: "Blog developed with .NET CORE API, React Native. Code dynamically generated with the help of a visual interface. Management of Posts, Categories and Sub Categories, ACR TI-RADS Calculator.",
      ref: 'https://blog-radiologia.azurewebsites.net/calculadoras',
      images: ['flutter.png', 'firebase.png', 'react.png', 'netcore.png']
  ),
  Project(
      title: "Other Projects",
      description: "Development of multiple systems. Multilingual applications. Franchise-distributor e-commerce platforms. Systems and Infrastructure on Azure, Azure Function, Firebase, etc...",
      ref: 'https://www.pawaresoftwares.com.br',
      images: ['azure.png', 'firebase.png', 'google.png', 'microsoft.png']
  ),
];

