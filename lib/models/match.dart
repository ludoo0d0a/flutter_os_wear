import 'score.dart';
import 'status.dart';
import 'teams.dart';


// Four points win a game, six games win a set, and two or three sets win a match

class Match {
  Match({
    required this.status,
    required this.startTime,
    required this.scores,
    required this.teams
  });

  Status status;
  DateTime startTime;
  Sets sets;
  Teams teams;

  void configure(int setsToWin, int gamesToWin, int pointsToWin ) {
    state = [
      ...state,
      Todo(
        id: _uuid.v4(),
        description: description,
      ),
    ];
  }

}