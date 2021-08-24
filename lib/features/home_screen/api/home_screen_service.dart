import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:hiit_list/features/home_screen/api/home_screen_service_request_model.dart';
import 'package:hiit_list/features/home_screen/api/home_screen_service_response_model.dart';
import 'package:hiit_list/locator.dart';

class HomeScreenService extends EitherService<HomeScreenServiceRequestModel,
    HomeScreenServiceResponseModel> {
  HomeScreenService()
      : super(method: RestMethod.get, restApi: ExampleLocator().api, path: '');
  @override
  parseResponse(Map<String, dynamic> jsonResponse) {
    // TODO: implement parseResponse
    throw UnimplementedError();
  }
}
