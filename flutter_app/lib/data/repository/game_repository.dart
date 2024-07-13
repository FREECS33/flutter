import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/game_model.dart';

class GameRepository {
final String apiUrl;
final String accessToken;

GameRepository({required this.apiUrl, required this.accessToken});

Future<void> createGame(GameModel game) async {
final response = await http.post(
Uri.parse('$apiUrl/games'),
headers: <String, String>{
'Content-Type': 'application/json; charset=UTF-8',
'Authorization': 'Bearer $accessToken',
},
body: jsonEncode(game.toJson()..remove('id')),
);

if (response.statusCode != 200) {
throw Exception('Failed to create game');
}
}

Future<GameModel> getGame(String id) async {
final response = await http.get(
Uri.parse('$apiUrl/games/$id'),
headers: <String, String>{
'Authorization': 'Bearer $accessToken',
},
);

if (response.statusCode == 200) {
return GameModel.fromJson(jsonDecode(response.body));
} else {
throw Exception('Failed to load game');
}
}

Future<void> updateGame(GameModel game) async {
final response = await http.put(
Uri.parse('$apiUrl/games'),
headers: <String, String>{
'Content-Type': 'application/json; charset=UTF-8',
'Authorization': 'Bearer $accessToken',
},
body: jsonEncode(game.toJson()),
);

if (response.statusCode != 200) {
throw Exception('Failed to update game');
}
}

Future<void> deleteGame(String id) async {
final response = await http.delete(
Uri.parse('$apiUrl/games/$id'),
headers: <String, String>{
'Authorization': 'Bearer $accessToken',
},
);

if (response.statusCode != 200) {
throw Exception('Failed to delete game'); 
}
}

Future<List<GameModel>> getAllGames() async {
final response = await http.get(
Uri.parse('$apiUrl/games'),
headers: <String, String>{
'Content-Type': 'application/json; charset=UTF-8',
'Authorization': 'Bearer $accessToken',
},
);

if (response.statusCode == 200) {
Iterable l = json.decode(response.body);
return List<GameModel>.from(l.map((model) => GameModel.fromJson(model)));
} else {
throw Exception('Failed to load games');
}
}


}