import 'package:bookstore/model/news_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key, required this.news}) : super(key: key);

  final Article news;

  @override
  Widget build(BuildContext context) {
    final publishedAt = news.publishedAt?.split('T')[0];
    return Padding(
      padding: EdgeInsets.all(24),
      child: Row(
        children: [
          Semantics(
            label: 'Small image for the news',
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              backgroundImage:
                  news.imageUrl != null ? NetworkImage(news.imageUrl!) : null,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(news.title!,
                    style: Theme.of(context).textTheme.subtitle1,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis),
                const SizedBox(
                  height: 12,
                ),
                Text(news.author,
                    style: const TextStyle(color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(news.source.name ?? '',
                        style: const TextStyle(color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                    const Spacer(),
                    const Icon(
                      Icons.calendar_today_sharp,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(publishedAt ?? '',
                        style: const TextStyle(color: Colors.grey),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
