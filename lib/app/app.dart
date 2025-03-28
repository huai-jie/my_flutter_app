import 'package:my_first_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:my_first_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_first_app/ui/views/home/home_view.dart';
import 'package:my_first_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_first_app/ui/views/profile/profile_view.dart';
import 'package:my_first_app/ui/views/counter/counter_view.dart';
import 'package:my_first_app/ui/views/login/login_view.dart';
import 'package:my_first_app/services/authentication_service.dart';
import 'package:my_first_app/ui/views/text_reverse/text_reverse_view.dart';
import 'package:my_first_app/ui/views/widget_one/widget_one_view.dart';
import 'package:my_first_app/ui/views/busy_example/busy_example_view.dart';
import 'package:my_first_app/ui/views/future_example/future_example_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: CounterView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: TextReverseView),
    MaterialRoute(page: WidgetOneView),
    MaterialRoute(page: BusyExampleView),
    MaterialRoute(page: FutureExampleView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
