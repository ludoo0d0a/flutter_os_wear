import 'score.dart';
import 'status.dart';
import 'teams.dart';

class Game {
  Game({
    required this.status,
    required this.startTime,
    required this.scores,
    
  });

  Status status;
  DateTime startTime;
  Scores scores;
  Teams teams;

}