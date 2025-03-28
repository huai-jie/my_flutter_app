import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'future_example_viewmodel.dart';

class FutureExampleView extends StackedView<FutureExampleViewModel> {
  const FutureExampleView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FutureExampleViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("FutureExampleView")),
      ),
    );
  }

  @override
  FutureExampleViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FutureExampleViewModel();
}
