import 'package:flutter/material.dart';
import 'package:mvvm_app/core/base/state/base_state.dart';
import 'package:mvvm_app/core/base/view/base_view.dart';
import 'package:mvvm_app/core/constants/base_settings.dart';
import 'package:mvvm_app/core/localization/app_localization.dart';
import 'package:mvvm_app/view/home/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> {
  HomeViewModel viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (HomeViewModel model) {
        viewModel = model;
      },
      onDispose: () {
        print("HomePage Dispose");
      },
      onPageBuilder: (_, __) {
        return scaffold;
      },
    );
  }

  Scaffold get scaffold => Scaffold(
        appBar: appBar,
        backgroundColor: BaseSettings.SCAFFOLD_BACKGROUND_COLOR,
        body: Center(
          child: Text(viewModel.helloWorld),
        ),
      );

  AppBar get appBar => AppBar(
        title: Text(AppLocalizations.getString("hello")),
        centerTitle: true,
      );
}
