import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathy_app/bloc/heart_rate_bloc.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/ui/heart_rate/widgets/heart_rate_dialog.dart';

class HeartRateScreen extends StatelessWidget {
  const HeartRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final heartRatetesst = HeartRateModel(
    //     age: 1,
    //     dateTime: DateTime.now(),
    //     heartRate: 100,
    //     id: '122',
    //     sex: SexEnum.male.toString());
    return AppScaffold(
      appBar: AppBar(
        title: const Text("heart rate screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BaseRoundedButton.all(
              child: const Text("add"),
              onTap: () {
                hearRateDialog(context: context).show();
              },
            ),
            BaseRoundedButton.all(
              child: const Text("change"),
              onTap: () {
                context.read<HeartRateBloc>().getHeartRatelist();
              },
            ),
          ],
        ),
      ),
    );
  }
}
