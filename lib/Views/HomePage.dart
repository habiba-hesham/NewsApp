import 'package:flutter/material.dart';
//import 'package:news_app/Models/Category.dart';
import 'package:news_app/Widgets/CategoryListView.dart';
//import 'package:news_app/Widgets/NewsTile.dart';
import 'package:news_app/Widgets/TileListView.dart';
//import 'package:news_app/Widgets/CategoryView.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            TileListView(),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoryListView(categories: categories),
        //     const SizedBox(
        //       height: 32,
        //     ),
        //     const Expanded(child: TileListView()),
        //   ],
        // ),
      ),
    );
  }
}
