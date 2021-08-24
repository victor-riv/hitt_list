import 'package:flutter/material.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:hiit_list/features/home_screen/bloc/home_screen_bloc.dart';

import 'home_screen_presenter_widget.dart';

class HomeScreenFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenBloc(),
      child: HomeScreenPresenter(),
    );
  }
}
