class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.webLink,
  });
}

// ---------------
// Hackathon PROJECTS
List<ProjectUtils> hackathonProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/bkb.png',
    title: 'Bahay Kubo Buddy',
    subtitle:
        'This is a progressive web app that assists parents in teaching their Kindergarten kids lessons outside school.',
    webLink:
        'https://github.com/EruelUrsua/bahay-kubo-buddy/tree/master',
  ),
  ProjectUtils(
    image: 'assets/projects/beehive.png',
    title: 'BeeHive',
    subtitle:
        'This is a mobile app that helps student increase their productability and promote well being.',
    webLink:
        'https://github.com/EruelUrsua/beehive_app',
  ),
  ProjectUtils(
      image: 'assets/projects/healthlink.png',
      title: 'HealthLink',
      subtitle:
          'This is a mobile app that provides patients better diagnosis and service through language accesibility.',
      webLink:
          'https://github.com/EruelUrsua/solcha2024',
  ),
  ProjectUtils(
    image: 'assets/projects/helpjuan.png',
    title: 'HelpJuan',
    subtitle:
        'This is a mobile app that improves the disaster response of provinces.',
    webLink:
        'https://github.com/EruelUrsua/HelpJuan',
  ),
  ProjectUtils(
    image: 'assets/projects/trashscan.png',
    title: 'TrashScan',
    subtitle: 'This is a UI design for a mobile app that aims to promote proper waste disposal.',
    webLink:
        'https://www.figma.com/design/IE3UHAVrq4dRvqnYzOFdwE/Hackathon?node-id=0-1&t=jntw7yO9OcLdVjmB-1',
  ),
];

// ###############
// Academic PROJECTS
List<ProjectUtils> schoolProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/justpark.png',
    title: 'JustPark',
    subtitle:
        'This is a UI design for a parking locator mobile app.',
    webLink: 'https://www.figma.com/design/usVJbumVZCCAuiayyb7jG3/Midterms-UI%2FUX?node-id=126-2&t=TnDePDLMfoDiWUlQ-1',
  ),
  ProjectUtils(
    image: 'assets/projects/Homehub.png',
    title: 'HomeHub',
    subtitle:
        'This is a progressive web app that connects home owners and home products and services providers.',
    webLink: 'https://github.com/EruelUrsua/Homehub',
  ),
];