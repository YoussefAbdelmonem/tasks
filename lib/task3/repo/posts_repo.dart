import 'package:dio/dio.dart';
import 'package:tasks/task3/model/posts_model.dart';

class PostsRepo{
  Future <List<PostsModel?>?> getPostsData() async {
    List<PostsModel?> postModel = [] ;
    final response = await Dio().get(
      "https://jsonplaceholder.typicode.com/posts?_start=0&_limit=10",);
    if(response!=null){
      response.data.forEach((e){
        postModel.add(PostsModel.fromJson(e));
      });

      return postModel;
    }
    else{
      return null;
    }

  }
}