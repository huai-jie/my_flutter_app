import 'package:stacked/stacked.dart';

const String BusyObjectKey = 'my-busy-key';

class BusyExampleViewModel extends BaseViewModel {
  Future longUpdateStuff() async {
    // Sets busy to true before starting future and sets it to false after executing
    // You can also pass in an object as the busy object. Otherwise it'll use the ViewModel
    var result = await runBusyFuture(updateStuff(), busyObject: BusyObjectKey);
  }

  Future updateStuff() {
    return Future.delayed(const Duration(seconds: 3));
  }
}
