import 'package:clean_framework/clean_framework.dart';
import 'package:hiit_list/features/home_screen/api/home_screen_service.dart';
import 'package:hiit_list/features/home_screen/bloc/home_screen_use_case.dart';
import 'package:hiit_list/features/home_screen/model/home_screen_view_model.dart';

class HomeScreenBloc extends Bloc {
  late HomeScreenUseCase _homeScreenUseCase;

  final homeScreenViewModelPipe = Pipe<HomeScreenViewModel>();

  HomeScreenBloc({HomeScreenService? homeScreenService}) {
    _homeScreenUseCase = HomeScreenUseCase((viewModel) =>
        homeScreenViewModelPipe.send(viewModel as HomeScreenViewModel));

    homeScreenViewModelPipe.whenListenedDo(() {
      _homeScreenUseCase.create();
    });
  }

  @override
  void dispose() {
    homeScreenViewModelPipe.dispose();
  }
}
