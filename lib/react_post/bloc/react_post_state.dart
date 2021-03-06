part of 'react_post_bloc.dart';

enum ReactPostStatus {
  unknown,
  reactedWithLike,
  reactedWithLove,
  reactedWithWow,
  reactedWithAngry,
}

class ReactPostState extends Equatable {
  const ReactPostState({
    this.emotions = const [],
    this.userStatus = ReactPostStatus.unknown,
  });

  final List<Emotion> emotions;
  final ReactPostStatus userStatus;

  @override
  List<Object> get props => [
        emotions,
        userStatus,
      ];

  ReactPostState copyWith({
    List<Emotion> emotions,
    ReactPostStatus userStatus,
  }) {
    return ReactPostState(
      emotions: emotions ?? this.emotions,
      userStatus: userStatus ?? this.userStatus,
    );
  }
}
