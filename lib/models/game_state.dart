// ignore_for_file: public_member_api_docs, sort_constructors_first
class GameState {
  final String id;
  final List players;
  final bool isJoin;
  final bool isOver;
  final List words;

  GameState({
    required this.id,
    required this.players,
    required this.isJoin,
    required this.words,
    required this.isOver,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'players': players,
        'isJoin': isJoin,
        'words': words,
        'isOver': isOver,
      };
}
