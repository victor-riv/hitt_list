import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hiit_list/features/home_screen/bloc/home_screen_bloc.dart';
import 'package:hiit_list/features/home_screen/model/home_screen_view_model.dart';

import 'home_screen_screen.dart';

class HomeScreenPresenter
    extends Presenter<HomeScreenBloc, HomeScreenViewModel, HomeScreenScreen> {
  @override
  HomeScreenScreen buildScreen(BuildContext context, HomeScreenBloc bloc,
      HomeScreenViewModel viewModel) {
    return HomeScreenScreen(viewModel: viewModel);
  }

  @override
  Stream<HomeScreenViewModel> getViewModelStream(HomeScreenBloc bloc) {
    return bloc.homeScreenViewModelPipe.receive;
  }
}
