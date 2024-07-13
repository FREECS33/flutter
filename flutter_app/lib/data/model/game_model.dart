class GameModel {
  final String? id;
  final String name;
  final String genre;
  final String author;
  final String clasification;

  GameModel(
      {this.id,
      required this.name,
      required this.genre,
      required this.author,
      required this.clasification});

  factory GameModel.fromJson(Map<String, dynamic> json) {
    return GameModel(
        name: json['name'],
        genre: json['genre'],
        author: json['auhtor'],
        clasification: json['clasification']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'genre': genre,
      'author': author,
      'clasification': clasification
    };
  }
}
