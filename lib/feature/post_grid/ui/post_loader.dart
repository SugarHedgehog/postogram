import 'package:flutter/material.dart';
import 'package:postogram/feature/post_grid/ui/loading_widget.dart';
import 'package:postogram/feature/post_grid/ui/post_grid_widget_model.dart';
import 'package:postogram/feature/post_grid/ui/widget/post_card.dart';

class PostsLoader extends StatelessWidget {
  const PostsLoader({super.key, required this.wm});

  final IPostGridWidgetModel wm;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: wm.posts,
      builder: (_, posts, __) => posts.isEmpty
          ? const LoadingScreen()
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: posts.length,
              itemBuilder: (_, index) => PostCard(
                post: posts[index],
                onPostOpen: () => wm.openDetails(posts[index]),
              ),
            ),
    );
  }
}