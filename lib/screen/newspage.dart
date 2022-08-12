import 'package:bookstore/model/news_model.dart';
import 'package:bookstore/network/network_enums.dart';
import 'package:bookstore/network/network_helper.dart';
import 'package:bookstore/network/network_service.dart';
import 'package:bookstore/network/query_params.dart';
import 'package:bookstore/static/static_values.dart';
import 'package:bookstore/widget/NewsWidget.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFEEEEEF),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ],
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black45,
          ),
          elevation: 0,
        ),
        backgroundColor: Color(0xFFEEEEEF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FutureBuilder(
                  // scrollDirection: Axis.vertical,
                  // shrinkWrap: true,
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      final List<Article> articles =
                          snapshot.data as List<Article>;

                      return ListView.builder(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Semantics(
                              label:
                                  'Article widget Title ${articles[index].title}',
                              child: NewsWidget(news: articles[index]));
                        },
                        itemCount: articles.length,
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 25,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Something Went Wrong')
                          ],
                        ),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<List<Article>?> getData() async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      url: StaticValues.apiUrl,
      querryParam: QuerryParam.apiQuerry(
          apiKey: StaticValues.apiKey, country: StaticValues.apiCountry),
    );

    return await NetworkHelper.filterResponse(
        callBack: _listOfArticlesFromJson,
        response: response,
        parameterName: CallBackParameterName.articles,
        onFailureCallBackWithMessage: (errorType, msg) {
          debugPrint('Error type-$errorType - Message $msg');
          return null;
        });
  }

  List<Article> _listOfArticlesFromJson(json) => (json as List)
      .map((e) => Article.fromJson(e as Map<String, dynamic>))
      .toList();
}
