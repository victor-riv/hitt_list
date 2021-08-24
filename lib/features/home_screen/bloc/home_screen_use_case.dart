import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:hiit_list/features/home_screen/model/home_screen_entity.dart';
import 'package:hiit_list/features/home_screen/model/home_screen_view_model.dart';
import 'package:hiit_list/locator.dart';

class HomeScreenUseCase extends UseCase {
  Function(ViewModel) _viewModelCallback;
  RepositoryScope? _scope;

  HomeScreenUseCase(Function(ViewModel) viewModelCallback)
      : _viewModelCallback = viewModelCallback;

  void create() {
    _scope = ExampleLocator().repository.containsScope<HomeScreenEntity>();
    if (_scope == null) {
      _scope = ExampleLocator()
          .repository
          .create(HomeScreenEntity(), _notifySubscribers);
    } else {
      _scope!.subscription = _notifySubscribers;
    }

    final entity = ExampleLocator().repository.get<HomeScreenEntity>(_scope!);
    _viewModelCallback(buildViewModel(entity));
  }

  void _notifySubscribers(entity) {
    _viewModelCallback(buildViewModel(entity));
  }

  HomeScreenViewModel buildViewModel(entity) {
    return HomeScreenViewModel();
  }
}
