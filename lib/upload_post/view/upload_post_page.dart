import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_repository/post_repository.dart';
import 'package:share_ute/upload_post/upload_post.dart';
import 'package:file_picker_repository/file_picker_repository.dart';
import 'package:storage_repository/storage_repository.dart';

class UploadPostPage extends StatelessWidget {
  const UploadPostPage({Key key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const UploadPostPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: BlocProvider<UploadPostCubit>(
        create: (_) => UploadPostCubit(
          filePickerRepository: FilePickerRepository(),
          storageRepository: StorageRepository(),
          postRepository: PostRepository(),
        ),
        child: UploadPostForm(),
      ),
    );
  }
}