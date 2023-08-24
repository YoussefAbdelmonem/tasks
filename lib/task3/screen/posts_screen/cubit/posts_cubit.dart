import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:tasks/task3/model/posts_model.dart';
import 'package:tasks/task3/repo/posts_repo.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit() : super(PostsInitial());
  List<PostsModel?> postModel = [] ;
getListData ()async
{
  emit(PostsGetDataLoadingState());
  final response= await PostsRepo().getPostsData();
  if(response!=null){
    postModel=response;
    emit(PostsGetDataSuccessState());

  }
  else{
    emit(PostsGetDataErrorState());
  }

}
}
