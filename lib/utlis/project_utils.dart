class ProjectUtils{
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;


  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.androidLink,

});

}

List<ProjectUtils>project=[
  ProjectUtils(image: 'assets/Projects/healthcare.png',
      title: 'Healthcare Application',
      subtitle: 'Technologies: XML, Java, SQLite',
      androidLink: 'https://github.com/VaishaliFulare/HealthacareAndroidApp.git',),
  ProjectUtils(image: 'assets/Projects/cinema_guide.png',
    title: 'Cinema Guide App',
    subtitle: 'Technologies: XML, Java, API',
    androidLink: 'https://github.com/VaishaliFulare/Cinema-Guide.git',),
  ProjectUtils(image: 'assets/Projects/match_ride.png',
    title: 'Match Ride ',
    subtitle: 'Technologies: XML, Java, API',
    androidLink: 'https://github.com/VaishaliFulare/Match-Ride',),
  ProjectUtils(image: 'assets/Projects/amazon_clone.png',
    title: 'Amazon Home Page Clone ',
    subtitle: 'Technologies: HTML, CSS',
    androidLink: 'https://github.com/VaishaliFulare/amazon-clone.git',),
];