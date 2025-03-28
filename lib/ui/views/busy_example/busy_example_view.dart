import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'busy_example_viewmodel.dart';

class BusyExampleView extends StackedView<BusyExampleViewModel> {
  const BusyExampleView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BusyExampleViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("BusyExampleView")),
      ),
    );
  }

  @override
  BusyExampleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BusyExampleViewModel();
}
