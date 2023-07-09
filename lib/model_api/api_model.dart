class GamesItem {
  int id;
  String title;
  String thumbnail;
  String shortDescription;
  String gameUrl;
  String genre;
  String platform;
  String publisher;
  String developer;
  String releaseDate;
  String freeToGameProfileUrl;

  GamesItem(
      {required this.id,
      required this.thumbnail,
      required this.title,
      required this.shortDescription,
      required this.gameUrl,
      required this.genre,
      required this.platform,
      required this.publisher,
      required this.developer,
      required this.releaseDate,
      required this.freeToGameProfileUrl});

  factory GamesItem.fromJson(Map<String, dynamic> json) {
    return GamesItem(
        id: json["id"] as int ?? 0,
        thumbnail: json["thumbnail"] as String ?? "",
        title: json["title"] as String ?? "",
        shortDescription: json["short_description"] as String ?? "",
        gameUrl: json["game_url"] as String ?? "",
        genre: json["genre"] as String ?? "",
        platform: json["platform"] as String ?? "",
        publisher: json["publisher"] as String ?? "",
        developer: json["developer"] as String ?? "",
        releaseDate: json["release_date"] as String ?? "",
        freeToGameProfileUrl: json["freetogame_profile_url"] as String ?? "");
  }
// "id": 540,
// "title": "Overwatch 2",
// "thumbnail": "https://www.freetogame.com/g/540/thumbnail.jpg",
// "short_description": "A hero-focused first-person team shooter from Blizzard Entertainment.",
// "game_url": "https://www.freetogame.com/open/overwatch-2",
// "genre": "Shooter",
// "platform": "PC (Windows)",
// "publisher": "Activision Blizzard",
// "developer": "Blizzard Entertainment",
// "release_date": "2022-10-04",
// "freetogame_profile_url": "https://www.freetogame.com/overwatch-2"

}
