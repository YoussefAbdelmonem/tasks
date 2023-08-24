part of 'posts_cubit.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}
class PostsGetDataLoadingState extends PostsState {}
class PostsGetDataSuccessState extends PostsState {}
class PostsGetDataErrorState extends PostsState {}
