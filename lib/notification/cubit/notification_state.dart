part of 'notification_cubit.dart';

enum NotificationStatus {
  unknown,
  newPostCreated,
  currentPostChanged,
  newReportCreated,
  recentPostAdded,
  premiumRequested,
}

class NotificationState extends Equatable {
  const NotificationState({
    this.currentPost = Post.empty,
    this.status = NotificationStatus.unknown,
  });

  //Current post which is viewed by guest/user
  final Post currentPost;
  final NotificationStatus status;

  @override
  List<Object> get props => [currentPost, status];

  NotificationState copyWith({
    Post currentPost,
    NotificationStatus status,
  }) {
    return NotificationState(
      currentPost: currentPost ?? this.currentPost,
      status: status ?? this.status,
    );
  }
}
