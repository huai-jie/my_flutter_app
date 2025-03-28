import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'widget_one_viewmodel.dart';

class WidgetOneView extends StackedView<WidgetOneViewModel> {
  const WidgetOneView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WidgetOneViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(child: Text("WidgetOneView")),
      ),
    );
  }

  @override
  WidgetOneViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WidgetOneViewModel();
}
