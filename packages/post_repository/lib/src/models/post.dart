import 'package:equatable/equatable.dart';
import 'package:file_picker_repository/file_picker_repository.dart';

class Post extends Equatable {
  const Post({
    this.uid,
    this.photoURL,
    this.username,
    this.postID,
    this.public,
    this.postTitle,
    this.like,
    this.dislike,
    this.postTags,
    this.originalFile,
    this.solutionFile,
    this.postYear,
    this.semester,
    this.credit,
    this.major,
    this.lecturer,
    this.dateCreated,
  });

  final String uid;
  final String photoURL;
  final String username;
  final String postID;
  final String public;
  final String postTitle;
  final List<String> like;
  final List<String> dislike;
  final List<String> postTags;
  final File originalFile;
  final String dateCreated;

  // optional
  final File solutionFile;
  final String postYear;
  final String semester;
  final String credit;
  final String major;
  final String lecturer;

  @override
  List<Object> get props => [
        uid,
        photoURL,
        username,
        postID,
        public,
        postTitle,
        like,
        dislike,
        postTags,
        originalFile,
        solutionFile,
        postYear,
        semester,
        credit,
        major,
        lecturer,
        dateCreated,
      ];

  static const empty = Post(
    uid: '',
    photoURL: '',
    username: '',
    postID: '',
    public: 'true',
    postTitle: '',
    like: [],
    dislike: [],
    postTags: [],
    originalFile: File.empty,
    solutionFile: File.empty,
    postYear: '',
    semester: '',
    credit: '',
    major: '',
    lecturer: '',
    dateCreated: '',
  );

  Post copyWith({
    String uid,
    String photoURL,
    String username,
    String postID,
    String public,
    String postTitle,
    List<String> like,
    List<String> dislike,
    List<String> postTags,
    File originalFile,
    File solutionFile,
    String postYear,
    String semester,
    String credit,
    String major,
    String lecturer,
    String dateCreated,
  }) {
    return Post(
      uid: uid ?? this.uid,
      photoURL: photoURL ?? this.photoURL,
      username: username ?? this.username,
      postID: postID ?? this.postID,
      public: public ?? this.public,
      postTitle: postTitle ?? this.postTitle,
      like: like ?? this.like,
      dislike: dislike ?? this.dislike,
      postTags: postTags ?? this.postTags,
      originalFile: originalFile ?? this.originalFile,
      solutionFile: solutionFile ?? this.solutionFile,
      postYear: postYear ?? this.postYear,
      semester: semester ?? this.semester,
      credit: credit ?? this.credit,
      major: major ?? this.major,
      lecturer: lecturer ?? this.lecturer,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }

  bool get isNotEmpty => postTitle.isNotEmpty && originalFile.isNotEmpty;

  bool get hasOptionalInfo =>
      solutionFile.isNotEmpty ||
      postYear.isNotEmpty ||
      semester.isNotEmpty ||
      credit.isNotEmpty ||
      major.isNotEmpty ||
      lecturer.isNotEmpty;
}
