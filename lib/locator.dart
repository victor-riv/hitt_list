import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:hiit_list/dependency/url_launcher.dart';

ExampleLocator locator() => ExampleLocator();

Logger logger() => ExampleLocator().logger;

Future<void> openUrl(url) => ExampleLocator().urlLauncher!.launchURL(url);

class ExampleLocator implements Locator {
  ExampleLocator._();

  factory ExampleLocator() {
    Locator.init(ExampleLocator._());
    return Locator.getInstance();
  }

  @override
  Connectivity connectivity = AlwaysOnlineConnectivity();

  @override
  Logger logger = ConsoleLogger(LogLevel.verbose);

  UrlLauncher? urlLauncher = UrlLauncher();

  SimpleRestApi api =
      SimpleRestApi(baseUrl: 'https://'); // Points to Mockoon instance
  // baseUrl: 'http://192.168.0.11:3001/'); //Points to Mockoon instance

  Repository repository = Repository();

  void dispose() => Locator.dispose();
}
