// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Tasks extends Equatable {
  final String title;
  bool? isDone;
  bool? isDelete;
  Tasks({
    required this.title,
    this.isDone,
    this.isDelete,
  }) {
    isDone = isDone ?? false;
    isDelete = isDelete ?? false;
  }

  Tasks copyWith({
    String? title,
    bool? isDone,
    bool? isDelete,
  }) {
    return Tasks(
      title: title ?? this.title,
      isDone: isDone ?? this.isDone,
      isDelete: isDelete ?? this.isDelete,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'isDone': isDone,
      'isDelete': isDelete,
    };
  }

  factory Tasks.fromMap(Map<String, dynamic> map) {
    return Tasks(
      title: map['title'] as String,
      isDone: map['isDone'] != null ? map['isDone'] as bool : null,
      isDelete: map['isDelete'] != null ? map['isDelete'] as bool : null,
    );
  }

  @override
  List<Object?> get props => [title, isDone, isDelete];
}
