import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerEvent extends Equatable{

  TimerEvent([List props = const[]])
      : super(props);
}


class Start extends TimerEvent{

  final int duration;

  Start({@required this.duration})
      : super([duration]);


  @override
  String toString() {
    return 'Start { duration: $duration}';
  }
}


class Pause extends TimerEvent{

  @override
  String toString() {
    return 'Pause';
  }
}


class Resume extends TimerEvent{

  @override
  String toString() {
    return 'Resume';
  }
}


class Reset extends TimerEvent{

  @override
  String toString() {
    return 'Reset';
  }
}


class Tick extends TimerEvent{

  final int duration;

  Tick({@required this.duration})
      : super([duration]);

  @override
  String toString() {
    return 'Tick { duration: $duration}';
  }
}