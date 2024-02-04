import 'package:flutter/material.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';

class DetailInsightScreen extends StatelessWidget {
  final String title;
  final List<String> listInfos;
  const DetailInsightScreen(
      {super.key, required this.title, required this.listInfos});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: BaseAppBar(
        title: title,
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: listInfos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              child: Text(listInfos[index]),
            );
          },
        ),
      ),
    );
  }
}
