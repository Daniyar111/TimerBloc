import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_bloc/src/pages/timer_page.dart';
import 'package:timer_bloc/src/utils/ticker.dart';

import 'data/bloc/timer_bloc.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(109, 234, 255, 1),
        accentColor: Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark
      ),
      title: 'Timer',
      home: BlocProvider<TimerBloc>(
        builder: (BuildContext context) => TimerBloc(
          ticker: Ticker()
        ),
        child: Timer(),
      ),
    );
  }
}
