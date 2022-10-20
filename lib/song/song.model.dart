class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'LookBothWays',
      description: 'LookBothWays',
      url: 'assets/music/Look Both Ways - Nathan Moore.mp3',
      coverUrl: 'coverUrl',
    ),
    Song(
      title: 'TeasingTheKing',
      description: 'TeasingTheKing',
      url: 'assets/music/Teasing the King - Nathan Moore.mp3',
      coverUrl: 'coverUrl',
    ),
    Song(
      title: 'TheMoonDrops',
      description: 'TheMoonDrops',
      url: 'assets/music/The Moon Drops - Nathan Moore.mp3',
      coverUrl: 'coverUrl',
    ),
  ];
}
