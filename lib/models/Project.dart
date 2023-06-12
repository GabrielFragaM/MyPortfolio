class Project {
  final String? title, description, ref;
  final List<String> images;

  Project({this.title, this.description, this.ref, required this.images});
}

List<Project> demo_projects = [
  Project(
      title: "Auto Checklist",
      description: "Project developed for a large shipyard company in Brazil aimed at reducing paperwork generated during the construction, integration, and commissioning of offshore oil and gas production platforms, under the EPC (Engineering, Procurement, and Construction) modality",
      ref: 'https://www.pawaresoftwares.com.br',
      images: ['azure.png', 'c#.png', 'netcore.png', 'firebase.png', 'flutter.png', 'react.png']
  ),
  Project(
      title: "MyTreasure",
      description: "A complete social media app, similar to Instagram, with the added feature of creating auctions in posts and much more",
      ref: 'https://play.google.com/store/apps/details?id=com.my_treasure_app',
      images: ['firebase.png', 'flutter.png', 'node.png']
  ),
  Project(
      title: "Paware Softwares",
      description: "Founder of Paware Softwares where I carried out various projects for automations and systems for several market companies",
      ref: 'https://www.pawaresoftwares.com.br',
      images: ['azure.png', 'firebase.png', 'google.png', 'microsoft.png', 'react.png', 'azure.png', 'python.png', 'flutter.png', 'node.png']
  ),
  Project(
      title: "PMT",
      description: "pmt",
      ref: 'https://www.dione.solutions/pt-br/clients.html',
      images: ['react.png', 'azure.png', 'python.png']
  ),
  Project(
      title: "JB PREMIUM",
      description: 'jbpremium',
      ref: 'https://jb-premium.com',
      images: ['flutter.png', 'firebase.png', 'react.png', 'netcore.png']
  ),
  Project(
      title: "Radiology Blog",
      description: "radiologyblog",
      ref: 'https://blog-radiologia.azurewebsites.net/calculadoras',
      images: ['flutter.png', 'firebase.png', 'react.png', 'netcore.png']
  ),
  Project(
      title: "Other Projects",
      description: "otherprojects",
      ref: 'https://www.pawaresoftwares.com.br',
      images: ['azure.png', 'firebase.png', 'google.png', 'microsoft.png']
  ),
];

