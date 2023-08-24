import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/component/text_widget.dart';
import 'package:tasks/constant/colors.dart';
import 'package:tasks/task3/screen/posts_screen/cubit/posts_cubit.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsCubit()..getListData(),
      child: BlocConsumer<PostsCubit, PostsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          PostsCubit cubit = BlocProvider.of(context);
          return Scaffold(
            backgroundColor: AppColors.primiry,
            appBar: AppBar(
              title: TextWidget(
                title:"Posts Model",
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              centerTitle: true,
              backgroundColor: AppColors.primiry,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      state is PostsGetDataLoadingState
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : ListView.builder(
                              itemBuilder: (context, index) {
                                return Card(
                                  color: Colors.white,
                                  child: ListTile(
                                    title: TextWidget(
                                      title:
                                          cubit.postModel[index]?.title ?? "",
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    subtitle: TextWidget(
                                      title: cubit.postModel[index]?.body ?? "",
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                );
                              },
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemCount: cubit.postModel.length,
                            )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
