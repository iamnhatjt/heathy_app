import 'package:flutter/material.dart';
import 'package:heathy_app/gen/assets.gen.dart';
import 'package:heathy_app/res/styles/styles.dart';
import 'package:heathy_app/res/util/app_until.dart';
import 'package:heathy_app/res/widgets/app_button.dart';
import 'package:heathy_app/res/widgets/app_scaffold.dart';
import 'package:heathy_app/res/widgets/base_app_bar.dart';
import 'package:heathy_app/ui/insight/detail_insight_screen.dart';

class InsightScreen extends StatelessWidget {
  const InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: BaseAppBar(
        title: 'Insights',
      ),
      body: const _InsightScreen(),
    );
  }
}

class _InsightScreen extends StatelessWidget {
  const _InsightScreen();

  @override
  Widget build(BuildContext context) {
    Widget insightList(List content) => ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return BaseRoundedButton.all(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailInsightScreen(
                            title: content[index]['title'],
                            listInfos: (content[index]['content'] as List)
                                .cast<String>()),
                      ));
                },
                margin: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 8.0,
                ),
                child: Text(
                  content[index]['title'].toString(),
                  style: AppStyle.normalText,
                ));
          },
          itemCount: content.length,
        );

    return FutureBuilder(
      future: parseJsonFromAsset(Assets.jsons.insight),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return insightList(snapshot.data);
        } else {
          return const CircularProgressIndicator.adaptive();
        }
      },
    );
  }
}
