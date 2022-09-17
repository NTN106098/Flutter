//tệp chứa các trạng thái và kiểm tra các trạng thái đó

import 'package:day10/cubit/app_cubits.dart';
import 'package:day10/cubit/app_cubut_states.dart';
import 'package:day10/pages/home_page.dart';
import 'package:day10/pages/wellcom_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is WellcomeState) {
            return WellcomePage();
          }
          if (state is LoadedState) {
            return HomePage();
          }
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
