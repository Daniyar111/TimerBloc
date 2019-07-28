import 'package:bloc/bloc.dart';
import 'package:flutter/scheduler.dart';
import 'package:meta/meta.dart';

import 'timer_event.dart';
import 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState>{

  final Ticker _ticker;
  final int _duration = 60;

  TimerBloc({@required Ticker ticker})
      : assert(ticker != null),
        _ticker = ticker;

  @override
  TimerState get initialState => Ready(_duration);

  @override
  Stream<TimerState> mapEventToState(TimerEvent event) async* {

    if(event is Start){

    }
  }


  Stream<TimerState> mapStartToState(Start start) async* {
    yield Running(start.duration);
  }

}