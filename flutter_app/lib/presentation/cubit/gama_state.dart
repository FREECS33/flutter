import 'package:equatable/equatable.dart';
import '../../data/model/game_model.dart';

abstract class GameState extends Equatable {
@override
List<Object?> get props => [];
}

class GamaState extends GameState {}

class GameLoading extends GameState {}

class GameSuccess extends GameState {
final List<GameModel> games;

GameSuccess({required this.games});

@override
List<Object?> get props => [games];
}

class GameError extends GameState {
final String message;

GameError({required this.message});

@override
List<Object?> get props => [message];
}