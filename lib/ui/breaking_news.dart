import 'package:flutter/material.dart';
import 'package:new_project/components/news_item_list.dart';
import 'package:new_project/model/news_model.dart';
import 'package:new_project/service/api_service.dart';

class BreakineNews extends StatefulWidget {
  const BreakineNews({super.key});

  @override
  State<BreakineNews> createState() => _BreakineNewsState();
}

class _BreakineNewsState extends State<BreakineNews> {
  ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: apiService.getBreakingNews(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<NewsModel> articlelist = snapshot.data ?? [];
              return ListView.builder(
                itemBuilder: (context, index) {
                  return NewsItemList(
                    newsModel: articlelist[index],
                  );
                },
                itemCount: articlelist.length,
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
